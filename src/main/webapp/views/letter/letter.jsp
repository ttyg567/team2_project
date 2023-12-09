<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--JSTL : 통화 날짜를 표현하게 해주는 문법--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<script src="/pdfjs/bluebird.min.js"></script>
<script src="/pdfjs/html2canvas.min.js"></script>
<script src="/pdfjs/jspdf.min.js"></script>

<script src="/pdfjs/docxtemplater.js"></script>
<script src="/pdfjs/html-docx.js"></script>
<script src="/pdfjs/mammoth.browser.min.js"></script>
<script src="/pdfjs/jszip.min.js"></script>
<script src="/pdfjs/pizzip.min.js"></script>

<script type="text/javascript"
        src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js">
</script>

<script>

    // WORD 다운로드
    function wordPrint() {
        // Get the content of the div
        //var divContent = document.getElementById("pdfmakeDiv").outerHTML;
        var textareaContent = $("#emailEditor").val().replace(/\n/g,'<br>');

        // Get the base64 representation of the image
        var imgBase64 = getBase64Image(document.getElementById('kbLogoImg'));

        // Append the image tag to the content
        textareaContent += '<br> <img src="' + imgBase64 + '" />';

        /*    var printFriendlyStyles = `
      #pdfMakeDiv {
        width: 800px;
        height: 800px;
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        text-align: center;
      }

      #emailEditor {
        height: 600px;
        font-size: 14px;
      }

      /!* Add more styles as needed *!/
    `;*/

        // Create a style element for the print-friendly CSS
        //var style = document.createElement("style");
        //style.innerHTML = printFriendlyStyles;
        //document.head.appendChild(style);

        // Convert the textarea content to Word document
        var converted = htmlDocx.asBlob(textareaContent);

        // Remove the dynamically added style element
        //document.head.removeChild(style);


        // Convert Blob to data URL and log it to the console
        //var dataUrl = URL.createObjectURL(docx);
        //console.log("======dataUrl : " + dataUrl);

        // Check Blob content by opening the URL in a new tab
        //window.open(dataUrl);

        var link = document.createElement("a");
        link.href = URL.createObjectURL(converted);


        // Create a new Date object
        const today = new Date();

// Get the current year, month, and day
        const year = today.getFullYear();
        const getMonth = today.getMonth() + 1; // Months are zero-based, so we add 1
        const month = getMonth < 10 ? '0'+getMonth : getMonth;
        const getDay = today.getDate();
        const day = getDay < 10 ? '0'+getDay : getDay;

// Format the date as a string (YYYY-MM-DD)
        const formattedDate = year+'-'+month+'-'+day;

        link.download = formattedDate+"_고객 응대 메일.docx";
        link.click();

        }

    // Function to convert an image to base64
    function getBase64Image(imgElement) {
        var canvas = document.createElement("canvas");
        canvas.width = imgElement.width;
        canvas.height = imgElement.height;

        var ctx = canvas.getContext("2d");
        ctx.drawImage(imgElement, 0, 0, imgElement.width, imgElement.height);

        var dataURL = canvas.toDataURL("image/png");

        return dataURL;
    }


    // email 발송

    (function(){
        emailjs.init('${emailapikey}');
    })();

    function SendMail(){
        var params = {
            email_id : $("#email_id").val(),
            message : $("#emailEditor").val(),
            to_name : $("#to_name").val(),
            from_name : "박효선 대리",
            subject : $("#subject").val()
        };
        emailjs.send("service_yu9gjhn","template_vopt902",params)
            .then(function (res) {
                console.log("SUCCESS", res.status, res.text);

                $("#mailForm").hide();
                $("#beforeAlarm").hide();
                $("#afterAlarm").show();

            }, function (error){
                console.log("FAILED", error);
            })
    }

 /*   $("#emailSend").click(function (){
        SendMail();
    });*/






    // PDF 다운로드
    function pdfPrint(){
        // 현재 document.body의 html을 A4 크기에 맞춰 PDF로 변환
        //html2canvas(document.body, {
        html2canvas($("#pdfMakeDiv")[0] , {
            onrendered: function (canvas) {

                // 캔버스를 이미지로 변환
                var imgData = canvas.toDataURL('image/png');

                //var imgWidth = 210; // 이미지 가로 길이(mm) A4 기준
                //var imgWidth = 179; // 이미지 가로 길이(mm) A4 기준
                var imgWidth = $("#pdfMakeDiv").offsetWidth; // 이미지 가로 길이(mm) A4 기준
                //var pageHeight = imgWidth * 1.414;  // 출력 페이지 세로 길이 계산 A4 기준
                var pageHeight = $("#pdfMakeDiv").offsetHeight; // 출력 페이지 세로 길이 계산 A4 기준
                //var pageHeight = 159;  // 출력 페이지 세로 길이 계산 A4 기준
                var imgHeight = canvas.height * imgWidth / canvas.width;
                var heightLeft = imgHeight;
                var doc = new jsPDF('p', 'mm');
                var position = 0;

                // 첫 페이지 출력
                doc.addImage(imgData, 'PNG', 0, position, imgWidth, pageHeight);
                heightLeft -= pageHeight;

                // 한 페이지 이상일 경우 루프 돌면서 출력
                while (heightLeft >= 20) {
                    position = heightLeft - imgHeight;
                    doc.addPage();
                    doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
                    heightLeft -= pageHeight;
                }
                // 파일 저장
                doc.save('sample.pdf');
                //이미지로 표현
                //document.write('<img src="'+imgData+'" />');
            }

        });

    }

    //pdf 다운로드
    var pdfMake = window.pdfMake;
    var fontsLoaded = false;

    function loadFonts() {
        if (!fontsLoaded) {
            fetch('/font/NanumGothic-Regular.ttf')
                .then(response => response.arrayBuffer())
                .then(fontBuffer => {
                    const fontBase64 = btoa(String.fromCharCode.apply(null, new Uint8Array(fontBuffer)));
                    pdfMake.fonts = {
                        NanumGothic: {
                            normal: fontBase64,
                            bold: fontBase64,
                            italics: fontBase64,
                            bolditalics: fontBase64,
                        },
                    };
                    fontsLoaded = true;
                    createPdf(); // Call the function to create the PDF after loading the font
                })
                .catch(error => {
                    console.error('Error loading font:', error);
                });
        }
    }

    function createPdf() {
        // Sample client-side data
        var peajes = {
            item1: { value01: 'A', value02: 'B', value03: 'C', value04: 'D' },
            item2: { value01: 'E', value02: 'F', value03: 'G', value04: 'H' },
            // ... add more items as needed
        };

        var body = [];
        var titulos = ['타이틀01', '타이틀02', '타이틀03', '타이틀04'];
        body.push(titulos);

        for (var key in peajes) {
            if (peajes.hasOwnProperty(key)) {
                var peaje = peajes[key];
                var fila = [peaje.value01.toString(), peaje.value02.toString(), peaje.value03.toString(), peaje.value04.toString()];
                body.push(fila);
            }
        }

        var docDefinition = {
            content: [
                "Hello, this is a simple PDF generated using pdfmake!",
                {
                    bold: true,
                    table: {
                        headerRows: 1,
                        widths: ['*', 'auto', 100, '*'],
                        body: body,
                    },
                },
            ],
            defaultStyle: {
                font: 'NanumGothic',
            },
        };

        var pdf_name = 'pdf파일 만들기.pdf';
        pdfMake.createPdf(docDefinition).download(pdf_name);
    }


    $(document).ready(function (){

            $("#afterAlarm").hide();

            // 사용자 입력 필드
            const userInput = document.querySelector('#keyContents');
            // 전송 버튼
            const sendButton = document.querySelector('#sendBtn');

            // 발급받은 OpenAI API 키를 변수로 저장
            const apiKey = '${apikey}';
            // OpenAI API 엔드포인트 주소를 변수로 저장
            const apiEndpoint = 'https://api.openai.com/v1/chat/completions';
            const authorizationKey = 'Bearer '+apiKey;

            // ChatGPT API 요청
            async function fetchAIResponse(prompt) {
            // API 요청에 사용할 옵션을 정의
            const requestOptions = {
            method: 'POST',
            // API 요청의 헤더를 설정
            headers: {
            'Content-Type': 'application/json',
            'Authorization': authorizationKey

        },
            body: JSON.stringify({
            model: "gpt-3.5-turbo",  // 사용할 AI 모델
            messages: [{
            role: "user", // 메시지 역할을 user로 설정
            content: prompt // 사용자가 입력한 메시지
        }, ],
            temperature: 0.8, // 모델의 출력 다양성
            max_tokens: 1024, // 응답받을 메시지 최대 토큰(단어) 수 설정
            top_p: 1, // 토큰 샘플링 확률을 설정
            frequency_penalty: 0.5, // 일반적으로 나오지 않는 단어를 억제하는 정도
            presence_penalty: 0.5, // 동일한 단어나 구문이 반복되는 것을 억제하는 정도
            stop: ["Human"], // 생성된 텍스트에서 종료 구문을 설정
        }),
        };
            // API 요청후 응답 처리
            try {
            const response = await fetch(apiEndpoint, requestOptions);
            const data = await response.json();
            const aiResponse = data.choices[0].message.content;
            return aiResponse;
        } catch (error) {
            console.error('OpenAI API 호출 중 오류 발생:', error);
            return 'OpenAI API 호출 중 오류 발생';
        }
        }

            // 전송 버튼 클릭 이벤트 처리

            sendButton.addEventListener('click', async () => {
                // 사용자가 입력한 메시지
                const message = userInput.value.trim();
                //userName 은 로그인자로 가져오기?
                const userName = '박효선';
                const empName = userName;
                const writingStyle = $("#writingStyle").val();
                const checkboxLong = $(".form-check-input#longStyle");
                const checkboxLongVal = checkboxLong.val();
                const checkboxShort = $(".form-check-input#shortStyle");
                const checkboxShortVal =checkboxShort.val();
                const lengthStyle = checkboxLong.is(":checked") ? checkboxLongVal : checkboxShort.is(":checked") ? checkboxShortVal : '';
                const messageForm = "본인이 KB국민은행의 은행원 "+empName+"이라고 생각하고,"+message+" 때문에 고객이 불만족스러운 상황에 대해 " +
                    "사과하는 편지를 "+writingStyle+" 작성스타일로 "+lengthStyle+" 작성해 줘. 고객님께 등 받는이와 박효선드림 등 보내는 이가 명시 되는 부분은 빼 줘. ";


                console.log( "나의질문 : "+messageForm );
                // 메시지가 비어있으면 리턴
                if (message.length === 0) return;
                // 작성 중 표시하기
                $("#loadingIndicator").removeAttr("hidden");
                $("#loadingImage").removeAttr("hidden");
                // 사용자 메시지 화면에 추가
                //addMessage('나', message);
                userInput.value = '';

                try{
                    //ChatGPT API 요청후 답변을 화면에 추가
                    const aiResponse = await fetchAIResponse(messageForm);
                    console.log("챗봇답변 : "+aiResponse);
                    //addMessage('챗봇', aiResponse);
                    $("#responseData").val(aiResponse);
                    //$("#emailEditor").text(aiResponse);
                } catch (error) {
                    console.error("답변을 받지 못했습니다!",error);
                } finally {
                    $("#loadingIndicator").attr("hidden", true);
                    $("#loadingImage").attr("hidden", true);
                }

        });


        // 다운로드 버튼 클릭 시 실행될 함수
        function downloadAsWord(text, fileName) {
            // Create a new Word document
            var doc = new docx.Document();
            // Add text to the document
            doc.addSection({
                properties: {},

                children: [
                    new docx.Paragraph({
                        children: [
                            new docx.TextRun(text)
                        ],
                    }),
                ],
            });

            // Generate the Word document as a blob
            var blob = docx.Packer.toBuffer(doc);

            // Create a URL for the blob
            var url = window.URL.createObjectURL(new Blob([blob]));

            // Create a link to trigger the download
            var a = document.createElement("a");
            document.body.appendChild(a);
            a.style = "display: none";
            a.href = url;
            a.download = fileName + ".docx";

            // Click the link to trigger the download
            a.click();

            // Clean up
            window.URL.revokeObjectURL(url);
            document.body.removeChild(a);
        }

        //span on 시 switch-on
        let switchInput = $("#switchInput");

        switchInput.on("change",function (){
            if (switchInput.is(":checked")){

                var textToDownload = $("#responseData").val();
                var fileName = "답변";
                downloadAsWord(textToDownload, fileName);
            }
        })


        $("#pdfmake").click(function () {
            //loadFonts();
            //pdfPrint();
            wordPrint();
        });

        $("#sendResponseData").click(function (){
            $("#emailEditor").val($("#responseData").val());
        });

    })


</script>



<!-- Content wrapper -->
<div class="content-wrapper">
    <!-- Content -->

    <div class="container-xxl flex-grow-1 container-p-y">
        <h4 class="py-3 mb-4"><span class="text-muted fw-light">홈 > </span> 편지쓰기 </h4>

        <!-- Create Deal Wizard -->
        <div id="wizard-create-deal" class="bs-stepper wizard-vertical vertical mt-2">
            <div class="bs-stepper-header gap-lg-2">
                <div class="step" data-target="#deal-type">
                    <button type="button" class="step-trigger">
                        <span class="bs-stepper-circle"><i class="mdi mdi-check"></i></span>
                        <span class="bs-stepper-label">
                        <span class="bs-stepper-number">01</span>
                        <span class="d-flex flex-column gap-1 ms-2">
                          <span class="bs-stepper-title">작성 용도</span>
                          <span class="bs-stepper-subtitle">편지를 작성하는 목적을 선택</span>
                        </span>
                      </span>
                    </button>
                </div>
                <div class="step" data-target="#deal-details">
                    <button type="button" class="step-trigger">
                        <span class="bs-stepper-circle"><i class="mdi mdi-check"></i></span>
                        <span class="bs-stepper-label">
                        <span class="bs-stepper-number">02</span>
                    <span class="d-flex flex-column gap-1 ms-2">
                          <span class="bs-stepper-title">작성 내용</span>
                          <span class="bs-stepper-subtitle">필수포함내용, 작성스타일 등 선택</span>
                        </span>
                      </span>
                    </button>
                </div>
                <div class="step" data-target="#deal-usage">
                    <button type="button" class="step-trigger">
                        <span class="bs-stepper-circle"><i class="mdi mdi-check"></i></span>
                        <span class="bs-stepper-label">
                        <span class="bs-stepper-number">03</span>
                        <span class="d-flex flex-column gap-1 ms-2">
                         <span class="bs-stepper-title">자동완성 편지 리뷰</span>
                          <span class="bs-stepper-subtitle">결과물을 확인하고 수정합니다.</span>
                        </span>
                      </span>
                    </button>
                </div>
                <div class="step" data-target="#review-complete">
                    <button type="button" class="step-trigger">
                        <span class="bs-stepper-circle"><i class="mdi mdi-check"></i></span>
                        <span class="bs-stepper-label">
                        <span class="bs-stepper-number">04</span>
                        <span class="d-flex flex-column gap-1 ms-2">
                          <span class="bs-stepper-title">최종 결과</span>
                          <span class="bs-stepper-subtitle">파일 저장, 이메일 발송 합니다.</span>
                        </span>
                      </span>
                    </button>
                </div>
            </div>
            <div class="bs-stepper-content">

                <form id="wizard-create-deal-form" onSubmit="return false">
                    <!-- 원 : Deal Type / 현 : 작성 용도 -->
                    <div id="deal-type" class="content">
                        <div class="row g-4">
                            <div class="col-12">
                                <img
                                        class="img-fluid border rounded-3"
                                        src="/img/illustrations/shopping-girl.png"
                                        alt="Shopping Girl" />
                            </div>
                            <div class="col-12">
                                <div class="row">
                                    <div class="col-md mb-md-0 mb-2">
                                        <div class="form-check custom-option custom-option-icon">
                                            <label class="form-check-label custom-option-content" for="customRadioPercentage">
                                  <span class="custom-option-body">
                                    <i class="mdi mdi-tag-outline"></i>
                                    <span class="custom-option-title">민원 답변</span>
                                    <small>민원인에게 답변해야 하는 경우라면!</small>
                                  </span>
                                                <input
                                                        name="customRadioIcon"
                                                        class="form-check-input"
                                                        type="radio"
                                                        value=""
                                                        id="customRadioPercentage"
                                                        checked />
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md mb-md-0 mb-2">
                                        <div class="form-check custom-option custom-option-icon">
                                            <label class="form-check-label custom-option-content" for="customRadioFlat">
                                  <span class="custom-option-body">
                                    <i class="mdi mdi-currency-usd"></i>
                                    <span class="custom-option-title"> 마케팅 </span>
                                    <small> 마케팅 자료를 발송하려한다면 !</small>
                                  </span>
                                                <input
                                                        name="customRadioIcon"
                                                        class="form-check-input"
                                                        type="radio"
                                                        value=""
                                                        id="customRadioFlat" />
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md mb-md-0 mb-2">
                                        <div class="form-check custom-option custom-option-icon">
                                            <label class="form-check-label custom-option-content" for="customRadioPrime">
                                  <span class="custom-option-body">
                                    <i class="mdi mdi-account-outline"></i>
                                    <span class="custom-option-title"> 그 외 </span>
                                    <small> 필요한 양식을 요청해주세요! </small>
                                  </span>
                                                <input
                                                        name="customRadioIcon"
                                                        class="form-check-input"
                                                        type="radio"
                                                        value=""
                                                        id="customRadioPrime" />
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
<%--                            <div class="col-sm-6">--%>
<%--                                <div class="form-floating form-floating-outline">--%>
<%--                                    <input--%>
<%--                                            type="number"--%>
<%--                                            name="dealAmount"--%>
<%--                                            id="dealAmount"--%>
<%--                                            class="form-control"--%>
<%--                                            placeholder="25"--%>
<%--                                            min="0"--%>
<%--                                            max="100"--%>
<%--                                            aria-describedby="dealAmountHelp" />--%>
<%--                                    <label for="dealAmount">Discount</label>--%>
<%--                                    <div id="dealAmountHelp" class="form-text">Enter the discount percentage. 10 = 10%</div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-sm-6">--%>
<%--                                <div class="form-floating form-floating-outline">--%>
<%--                                    <select--%>
<%--                                            id="dealRegion"--%>
<%--                                            name="dealRegion"--%>
<%--                                            class="select2 form-select"--%>
<%--                                            multiple--%>
<%--                                            aria-describedby="dealRegionHelp">--%>
<%--                                        <option disabled value="">Select targeted region</option>--%>
<%--                                        <option value="asia">Asia</option>--%>
<%--                                        <option value="africa">Africa</option>--%>
<%--                                        <option value="europe">Europe</option>--%>
<%--                                        <option value="north america">North America</option>--%>
<%--                                        <option value="south america">South America</option>--%>
<%--                                        <option value="australia">Australia</option>--%>
<%--                                    </select>--%>
<%--                                    <label for="dealRegion">Region</label>--%>
<%--                                    <div id="dealRegionHelp" class="form-text">Select applicable regions for the deal.</div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <div class="col-12 d-flex justify-content-between">
                                <button class="btn btn-outline-secondary btn-prev" disabled>
                                    <i class="mdi mdi-arrow-left me-sm-1 me-0"></i>
                                    <span class="align-middle d-sm-inline-block d-none">이전으로</span>
                                </button>
                                <button class="btn btn-primary btn-next">
                                    <span class="align-middle d-sm-inline-block d-none me-sm-1">다음으로</span>
                                    <i class="mdi mdi-arrow-right"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                    <!-- 원 : Deal Details / 현 : 필수포함내용 -->
                    <div id="deal-details" class="content">
                        <div class="row g-4">
<%--                            <div class="col-sm-6">--%>
<%--                                <div class="form-floating form-floating-outline">--%>
<%--                                    <input--%>
<%--                                            type="text"--%>
<%--                                            id="dealTitle"--%>
<%--                                            name="dealTitle"--%>
<%--                                            class="form-control"--%>
<%--                                            placeholder="Black friday sale, 25% off" />--%>
<%--                                    <label for="dealTitle">ㄴㄴㄴ</label>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                            <div class="col-sm-6">--%>
<%--                                <div class="form-floating form-floating-outline">--%>
<%--                                    <input--%>
<%--                                            type="text"--%>
<%--                                            id="dealCode"--%>
<%--                                            name="dealCode"--%>
<%--                                            class="form-control"--%>
<%--                                            placeholder="25PEROFF" />--%>
<%--                                    <label for="dealCode">Deal Code</label>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <div class="col-sm-12">
                                <div class="form-floating form-floating-outline">
                                    <textarea
                                    id="keyContents"
                                    name="keyContents"
                                    class="form-control"
                                    style="height: 122px"
                                    placeholder="
                                    고객님이 어떤 상황에서 불만족해 하셨나요?
                                    원인을 명사형으로 입력해주세요 !
                                     ex) 긴 대기시간을 겪은 상황"></textarea>
                                    <label for="keyContents">고객이 불만족한 이유</label>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="row">
                                    <div class="col-12 mb-3">
                                        <div class="form-floating form-floating-outline">

                                            <select class="select2" id="writingStyle" name="writingStyle" multiple>
                                                <option value="자연스러운">자연스러운</option>
                                                <option value="감정을 위로하는">감정을 위로하는</option>
                                            </select>

                                            <label for="writingStyle">작성 스타일</label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <label class="form-label">글의 길이</label>
                                <div class="row">
                                    <div class="col mt-2">
                                        <div class="form-check form-check-inline">
                                            <input
                                                    class="form-check-input"
                                                    type="checkbox"
                                                    id="longStyle"
                                                    name="longStyle"
                                                    value="3문단 이상으로" />
                                            <label class="form-check-label" for="longStyle">길게</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input
                                                    class="form-check-input"
                                                    type="checkbox"
                                                    id="shortStyle"
                                                    name="shortStyle"
                                                    value="10줄 이하로" />
                                            <label class="form-check-label" for="shortStyle">짧게</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 d-flex justify-content-between">
                                <button class="btn btn-outline-secondary btn-prev">
                                    <i class="mdi mdi-arrow-left me-sm-1 me-0"></i>
                                    <span class="align-middle d-sm-inline-block d-none">이전으로</span>
                                </button>


<%--                                <button class="btn btn-primary btn-next" id="sendBtn" type="button">
토큰의 과도한 사용 방지 위해 잠시 주석 처리 --%>
                                    <button class="btn btn-primary btn-next" id="sendBtn" type="button">
                                    <span class="align-middle d-sm-inline-block d-none me-sm-1">다음으로</span>
                                    <i class="mdi mdi-arrow-right"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                    <!-- 원 : Deal Usage / 현 : 작성 스타일 -->
                    <div id="deal-usage" class="content">
                        <div class="row g-4">
                            <div class="col-sm-12">
                                <div class="form-floating form-floating-outline" stlye="display: flex;
            align-items: center;
            justify-content: center;">
                                    <textarea
                                    id="responseData"
                                    name="responseData"
                                    class="form-control"
                                    style="height: 122px"
                                    placeholder=""></textarea>
                                    <label for="responseData"></label>
                                    <label id="loadingIndicator" hidden>답변을 작성하고 있습니다...</label>
                                    <div id="loadingImage" style="width:100%;height:50%;padding-bottom:10%;position:relative;display: flex;align-items: center;justify-content: center;">
                                       <%-- <iframe src="https://giphy.com/embed/3YJHfSeY06qRFAxE8p" width="80%" height="200vh" style="position:absolute" frameBorder="0" class="giphy-embed" allowFullScreen>
                                        </iframe>--%>
                                        <img src="https://media1.giphy.com/media/3YJHfSeY06qRFAxE8p/giphy.gif" style="position:absolute; width:30%; height:30vh;">
                                    </div>
                                </div>
                            </div>

                            <%--<div class="col-lg-12">
                                <label class="switch">
                                    <input type="checkbox" class="switch-input" id="switchInput" name="switchInput" />
                                    <span class="switch-toggle-slider">
                                          <span class="switch-on" id="switchOn" name="switchOn"></span>
                                          <span class="switch-off"></span>
                                    </span>
                                    <span class="switch-label"> 이 답변을 저장하시겠어요? </span>
                                </label>
                            </div>--%>
                            <div class="col-12 d-flex justify-content-between">
                                <button class="btn btn-outline-secondary btn-prev">
                                    <i class="mdi mdi-arrow-left me-sm-1 me-0"></i>
                                    <span class="align-middle d-sm-inline-block d-none">이전으로</span>
                                </button>
                                <button class="btn btn-primary btn-next" id="sendResponseData">
                                    <span class="align-middle d-sm-inline-block d-none me-sm-1">다음으로</span>
                                    <i class="mdi mdi-arrow-right"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                    <!-- 원 : Review & Complete / 현 : 자동완성 편지 리뷰 -->
                    <div id="review-complete" class="content">
                        <div class="row g-3">
                            <div class="col-lg-12">
                                <div class="row">
                                    <div class="col-6 mb-0" id="beforeAlarm">
                                        <h3>최종 결과입니다! 🚀</h3>
                                        <p>작성된 편지를 PDF로 저장하거나, 이메일로 발송해보세요.</p>
                                    </div>
                                    <div class="col-6 mb-0" id="afterAlarm">
                                        <h3> 메일이 발송되었습니다! 🚀</h3>
                                        <p> 작성된 편지를 이메일로 발송 완료하였습니다. </p>
                                    </div>
                                    <!-- Email View : Reply mail-->
<%--                                    <div class="email-reply card col-12 mb-0 mt-4 mx-sm-4 mx-3 border">--%>
                                        <div class=" card col-12 mb-0 border" id="mailForm">
                                        <h6 class="card-header border-0"></h6>
                                        <div class="card-body pt-0 px-3">

                                            <div class="col-sm-6">
                                                <div class="form-floating form-floating-outline">
                                                    <input type="text" class="form-control" id="email_id" placeholder="john.doe@gmail.com" />
                                                    <label for="email_id">받는 주소</label>
                                                </div>
                                            </div>
                                            <h4 class="card-header border-0"></h4>

                                            <div class="col-sm-6">
                                                <div class="form-floating form-floating-outline">
                                                    <input type="text" class="form-control" id="to_name" placeholder="김국민" />
                                                    <label for="to_name">수신 고객명</label>
                                                </div>
                                            </div>
                                            <h4 class="card-header border-0"></h4>
                                            <div class="col-sm-12">
                                                <div class="form-floating form-floating-outline">
                                                    <input type="text" class="form-control" id="subject" placeholder="안녕하십니까, 고객님" />
                                                    <label for="subject">제목</label>
                                                </div>
                                            </div>

                                            <h4 class="card-header border-0"></h4>

                                          <%--  <div class="d-flex justify-content-start">
                                                <div class="email-reply-toolbar border-0 w-100 ps-0">
                                                <span class="ql-formats me-0">
                                                  <button class="ql-bold"></button>
                                                  <button class="ql-italic"></button>
                                                  <button class="ql-underline"></button>
                                                  <button class="ql-list" value="ordered"></button>
                                                  <button class="ql-list" value="bullet"></button>
                                                  <button class="ql-link"></button>
                                                  <button class="ql-image"></button>
                                                </span>
                                                </div>
                                            </div>--%>

                                            <div class="col-sm-12">
                                                <div class="form-floating form-floating-outline"
                                                     id = "pdfMakeDiv"
                                                     style="display: flex; align-items: center; justify-content: center; flex-direction: column; text-align: center;"
                                                     >
                                                    <textarea
                                                            id="emailEditor"
                                                            name="emailEditor"
                                                            class="form-control"
                                                            style="height: 300px;"
                                                            placeholder="">
                                                    </textarea>
                                                    <img id="kbLogoImg" src="/img/logo/KB.jpg" style="width: 600px;">
                                                </div>
                                            </div>
                                               <%-- <div class="email-reply-editor" id="emailEditor"></div>--%>

                                            <h6 class="card-header border-0"></h6>

                                            <div class="d-flex justify-content-end align-items-center">
                                                <button class="btn btn-primary" id="pdfmake">
                                                    <i class="mdi mdi-export-variant me-1"></i>
                                                    <span class="d-none d-sm-inline-block">DownLoad</span>
                                                </button>
                                                <button class="btn btn-primary" id="emailSend" onclick="SendMail()">
                                                    <i class="mdi mdi-send-outline me-1"></i>
                                                    <span class="align-middle">Send</span>
                                                </button>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="col-12 mb-0">
                                       <%-- <table class="table table-borderless">
                                            <tbody>
                                            <tr>
                                                <td class="ps-0 align-top text-nowrap py-1">
                                                    <span class="fw-medium">Deal Type</span>
                                                </td>
                                                <td class="px-0 py-1">Percentage</td>
                                            </tr>
                                            <tr>
                                                <td class="ps-0 align-top text-nowrap py-1">
                                                    <span class="fw-medium">Amount</span>
                                                </td>
                                                <td class="px-0 py-1">25%</td>
                                            </tr>
                                            <tr>
                                                <td class="ps-0 align-top text-nowrap py-1">
                                                    <span class="fw-medium">Deal Code</span>
                                                </td>
                                                <td class="px-0 py-1">
                                                    <div class="badge rounded-pill bg-label-warning">25PEROFF</div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="ps-0 align-top text-nowrap py-1">
                                                    <span class="fw-medium">Deal Title</span>
                                                </td>
                                                <td class="px-0 py-1">Black friday sale, 25% OFF</td>
                                            </tr>
                                            <tr>
                                                <td class="ps-0 align-top text-nowrap py-1">
                                                    <span class="fw-medium">Deal Duration</span>
                                                </td>
                                                <td class="px-0 py-1">
                                                    <span class="fw-medium">2021-07-14</span> to
                                                    <span class="fw-medium">2021-07-30</span>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>--%>


                                     <%--   <div class="col-lg-6 d-flex align-items-center justify-content-center">
                                            <img
                                                    class="img-fluid w-px-200"
                                                    src="/img/illustrations/create-deal-review-complete.png"
                                                    alt="process completed" />
                                        </div>--%>

                                       <%-- <label class="switch">
                                            <input type="checkbox" class="switch-input" id="dealConfirmed" name="dealConfirmed" />
                                            <span class="switch-toggle-slider">
                                              <span class="switch-on"></span>
                                              <span class="switch-off"></span>
                                            </span>
                                            <span class="switch-label"> 위 내용을 확인했습니다. </span>
                                        </label>--%>


                                    </div>


                                </div>
                            </div>



                            <div class="col-12 d-flex justify-content-between mt-5">
                                <button class="btn btn-outline-secondary btn-prev">
                                    <i class="mdi mdi-arrow-left me-sm-1 me-0"></i>
                                    <span class="align-middle d-sm-inline-block d-none">이전으로</span>
                                </button>

                            <a href="/" class="btn btn-primary">
                              종료
                            </a>

                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- /Create Deal Wizard -->






    </div>
    <!-- / Content -->

    <!-- Footer -->
    <footer class="content-footer footer bg-footer-theme">
        <div class="container-xxl">
            <div
                    class="footer-container d-flex align-items-center justify-content-between py-3 flex-md-row flex-column">
                <div class="mb-2 mb-md-0">
                    ©
                    <script>
                        document.write(new Date().getFullYear());
                    </script>
                    , made with <span class="text-danger"><i class="tf-icons mdi mdi-heart"></i></span> by
                    <a href="https://pixinvent.com" target="_blank" class="footer-link fw-medium">Pixinvent</a>
                </div>
                <div class="d-none d-lg-inline-block">
                    <a href="https://themeforest.net/licenses/standard" class="footer-link me-4" target="_blank"
                    >License</a
                    >
                    <a href="https://1.envato.market/pixinvent_portfolio" target="_blank" class="footer-link me-4"
                    >More Themes</a
                    >

                    <a
                            href="https://demos.pixinvent.com/materialize-html-admin-template/documentation/"
                            target="_blank"
                            class="footer-link me-4"
                    >Documentation</a
                    >

                    <a href="https://pixinvent.ticksy.com/" target="_blank" class="footer-link d-none d-sm-inline-block"
                    >Support</a
                    >
                </div>
            </div>
        </div>
    </footer>
    <!-- / Footer -->

    <div class="content-backdrop fade"></div>
</div>
<!-- Content wrapper -->