<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--JSTL : 통화 날짜를 표현하게 해주는 문법--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!-- Content wrapper -->
<div class="content-wrapper">
    <!-- Content -->

    <div class="container-xxl flex-grow-1 container-p-y">
        <h4 class="py-3 mb-4"><span class="mdi mdi-head-snowflake-outline mdi-48px"></span>기획서&보고서 생성</h4>

        <div class="row">
            <!-- Floating (Outline) -->
            <div class="col-md-4">
                <div class="card mb-4">
                    <h5 class="card-header"><span class="mdi mdi-file-document-edit-outline mdi-36px">주제 및 내용</span>
                    </h5>
                    <ol>
                        <li style="font-size: 10pt">작성하실 기획&보고서의 주제를 입력하세요.</li>
                        <li style="font-size: 10pt">서론/본론/결론에서 작성돼야 할 내용을 입력하세요.</li>
                        <li style="font-size: 10pt">'전송'하여 문서 생성 및 편집</li>
                    </ol>
                    <div class="card-body demo-vertical-spacing demo-only-element">

                        <div class="input-group input-group-merge">
                            <%--                            <span class="input-group-text">With textarea</span>--%>
                            <div class="form-floating form-floating-outline">
                          <textarea
                                  class="form-control h-px-75"
                                  aria-label="With textarea"
                                  placeholder="Lorem ipsum"
                                  id="answer">은행의 내부인력을 활용한 개발직무 양성 프로젝트</textarea>
                                <label>주제</label>
                            </div>
                        </div>

                        <div class="input-group input-group-merge">
                            <%--                            <span class="input-group-text">With textarea</span>--%>
                            <div class="form-floating form-floating-outline">
                                              <textarea
                                                      class="form-control h-px-75"
                                                      aria-label="With textarea"
                                                      placeholder="Lorem ipsum"
                                                      id="answer1">왜 내부인력을 활용해야하는지</textarea>
                                <label>서론</label>
                            </div>
                        </div>

                        <div class="input-group input-group-merge">
                            <%--                            <span class="input-group-text">With textarea</span>--%>
                            <div class="form-floating form-floating-outline">
                                              <textarea
                                                      class="form-control h-px-75"
                                                      aria-label="With textarea"
                                                      placeholder="Lorem ipsum"
                                                      id="answer2">개발직무 양성과정에 필요한 교육 커리큘럼들은 무엇인지</textarea>
                                <label>본론</label>
                            </div>
                        </div>

                        <div class="input-group input-group-merge">
                            <%--                            <span class="input-group-text">With textarea</span>--%>
                            <div class="form-floating form-floating-outline">
                                              <textarea
                                                      class="form-control h-px-75"
                                                      aria-label="With textarea"
                                                      placeholder="Lorem ipsum"
                                                      id="answer3">기대되는효과 및 예측가능한 문제점은 무엇인지</textarea>
                                <label>결론</label>
                            </div>
                        </div>

                        <button id="sendBtn" class="btn btn-primary waves-effect waves-light">전송</button>

                    </div>
                </div>
            </div>
            <!-- Full Editor -->
            <div class="col-8">
                <div class="card">
                    <h5 class="card-header" style="display: flex; justify-content: space-between;">
                        <span class="mdi mdi-file-document-edit-outline mdi-36px">생성 및 편집</span>
                        <div style="display: flex">

                            <button id="imgBtn" class="btn btn-primary waves-effect waves-light"
                                    onclick="openPopup();" style="display: none;
  opacity: 0;
  transition: opacity 0.5s ease-in-out;">AI이미지
                            </button>
                            &nbsp;
                            <button id="downBtn" class="btn btn-primary waves-effect waves-light"
                                    onclick="htmlToFile('doc');" style="display: none;
  opacity: 0;
  transition: opacity 0.5s ease-in-out;">다운로드
                            </button>
                        </div>
                    </h5>
                    <div class="card-body">
                        <div id="full-editor">
                            <p>

                            </p>
                        </div>

                    </div>
                </div>
            </div>
            <!-- /Full Editor -->
        </div>

        <div style="display: block; justify-content: left; align-items: stretch"></div>

        <script>
            // 채팅 메시지를 표시할 DOM
            //const chatMessages = document.querySelector('#chat-messages');
            // 사용자 입력 필드
            const userInput = document.querySelector('#answer');
            const userInput1 = document.querySelector('#answer1');
            const userInput2 = document.querySelector('#answer2');
            const userInput3 = document.querySelector('#answer3');
            // 전송 버튼
            const sendButton = document.querySelector('#sendBtn');
            // 발급받은 OpenAI API 키를 변수로 저장
            const apiKey = "${chatgptapikey}";
            // OpenAI API 엔드포인트 주소를 변수로 저장
            const apiEndpoint = 'https://api.openai.com/v1/chat/completions';


            <%--function addMessage(sender, message) {--%>
            <%--    // 새로운 div 생성--%>
            <%--    const messageElement = document.createElement('div');--%>
            <%--    // 생성된 요소에 클래스 추가--%>
            <%--    messageElement.className = 'message';--%>
            <%--    // 채팅 메시지 목록에 새로운 메시지 추가--%>
            <%--    messageElement.textContent = `${sender}: ${message}`;--%>
            <%--    chatMessages.prepend(messageElement);--%>
            <%--}--%>

            // ChatGPT API 요청
            async function fetchAIResponse(prompt) {
                // API 요청에 사용할 옵션을 정의
                const requestOptions = {
                    method: 'POST',
                    // API 요청의 헤더를 설정
                    headers: {
                        'Content-Type': 'application/json',
                        <%--'Authorization': `Bearer ${apiKey}`--%>
                        'Authorization': `Bearer ${chatgptapikey}`
                    },
                    body: JSON.stringify({
                        model: "gpt-3.5-turbo",  // 사용할 AI 모델
                        messages: [{
                            role: "user", // 메시지 역할을 user로 설정
                            content: prompt // 사용자가 입력한 메시지
                        },],
                        temperature: 0.8, // 모델의 출력 다양성
                        max_tokens: 2048, // 응답받을 메시지 최대 토큰(단어) 수 설정
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
                var newElement = $("<img id='bbgif' style='width: 200px; height: 200px' src='https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExbjBtdTNuYm1ubDRnajh2MjVidjVzdms2bWdwMXN4cG5pM2Q3bWpmNiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/3glE7zIDgW2JrPIr7l/giphy.gif'>");
                $(".ql-editor:first").css({
                    "display": "flex",
                    "justify-content": "center",
                    "align-items": "center"
                });
                $(".ql-editor:first").append(newElement);
                // 사용자가 입력한 메시지
                const message = userInput.value.trim();
                const message1 = userInput1.value.trim();
                const message2 = userInput2.value.trim();
                const message3 = userInput3.value.trim();
                const finalmessage = `\${message} 라는 주제를 가지고 간단한 보고서를 작성하고 싶어.
서론은 \${message1} 내용을 중점적으로 작성해주고,
본론은 \${message2} 내용을 중점적으로 세가지로 나누어 작성해주고,
결론은 \${message3} 내용을 중점적으로 작성해줘.
보고서의 형식은 아래에 있는 형식에 무조건 맞춰서 작성해주고, 답변의 각 문장은 반드시 '~임', '~됨', '~있음', '~함' 으로 끝나는 문장으로 작성해줘.

        제목 :

        서론
         -
         -

        본론
         (1)
          -
          -
         (2)
          -
          -
         (3)
          -
          -

        결론
         -
         -
         `;
                console.log("나의질문 : " + finalmessage);
                // 메시지가 비어있으면 리턴
                if (finalmessage.length === 0) return;
                // 사용자 메시지 화면에 추가
                //addMessage('나', finalmessage);
                //userInput.value = '';
                //ChatGPT API 요청후 답변을 화면에 추가
                //$('#full-editor').append(`<span class="mdi mdi-loading mdi-spin mdi-36px"></span>`);

                const aiResponse = await fetchAIResponse(finalmessage);
                console.log("챗봇답변 : " + aiResponse);

                //$('#full-editor').children().text(aiResponse);

                $(".ql-editor:first").css({
                    "display": "block",
                    "justify-content": "left",
                    "align-items": "stretch"
                });


                var typingSpeed = 10; // 타이핑 속도 (밀리초 단위)
                function typeText(index) {
                    if (index < aiResponse.length) {
                        var currentText = aiResponse.substring(0, index + 1);
                        $("#full-editor").children().text(currentText);
                        setTimeout(function () {
                            typeText(index + 1);
                        }, typingSpeed);
                    }
                }

                typeText(0);
                //addMessage('챗봇', aiResponse);

                fadeIn();


            });
            // 사용자 입력 필드에서 Enter 키 이벤트를 처리
            userInput.addEventListener('keydown', (event) => {
                if (event.key === 'Enter') {
                    sendButton.click();
                }
            });


        </script>

    </div>

    <!-- / Content -->
    <div class="content-backdrop fade"></div>

    <div class="col-xs-3 col-xs-offset-3 text-center" style="display: none">

        <a id="hi098123btn" style="float: right;width: 30%;margin: 4px 0px;padding: 10px 0px;"
           onclick="hi098123inputcode();">예제 코드 넣기</a>

        <textarea style="width: 100%; height: 200px; background-color: #eff;resize: vertical;" id="source-html"
                  placeholder="여기에 html로 작성해주세요"></textarea>

        <a style="width: 100%;margin: 4px 0px;padding: 10px 0px;" onclick="htmlToFile('doc');">워드(.doc)
            다운로드</a>

        <a style="width: 100%;margin: 4px 0px;padding: 10px 0px;" onclick="saveAsPDF();">pdf
            다운로드</a>

        <p>&nbsp;</p>
        <p>&nbsp;</p>

        <p>한가지 주의: hwp다운로드 후 열때 UTF-8으로 여셔야 됩니다. 웹브라우저 상에서는 UTF-8를 메인으로 사용 하기 때문에</p>

        <tap></tap>
    </div>


</div>
<!-- Content wrapper -->

<script>
    function openPopup() {
        // 팝업을 띄울 URL
        var popupUrl = 'http://127.0.0.1:8088/gptmakeimage';

        // 팝업 창의 너비와 높이
        var popupWidth = 600;
        var popupHeight = 400;

        // 화면의 중앙에 위치하도록 계산
        var leftPosition = (window.innerWidth - popupWidth) / 2;
        var topPosition = (window.innerHeight - popupHeight) / 2;

        // window.open을 사용하여 새로운 창 열기
        window.open(popupUrl, '_blank', 'width=' + popupWidth + ', height=' + popupHeight + ', left=' + leftPosition + ', top=' + topPosition);
    }

    function saveAsPDF() {
        var element = document.getElementById("source-html").value;
        html2pdf(element);
    }

    function htmlToFile(file) {

        hi098123inputcode();

        var today = new Date();
        var formattedDate = today.toISOString().slice(0, 10);


        var header = "<html>" +
            "<head><meta charset='utf-8'>" +
            "<style>" +
            "@page { margin: 0.5in; }" + // 여백 설정
            "body { font-family: Arial, sans-serif; font-size: 11pt; line-height: 1.5; }" + // 기타 스타일
            `table {
            justify-content: center;
            width: 100%;
            border-collapse: collapse;
        }

        th,
        td {
            border: none;
            padding: 8px;
            text-align: left;
        }

        td:nth-child(1),
        td:nth-child(3) {
            text-align: center;
            font-weight: bold;
        }

        td:nth-child(1),
        td:nth-child(3) {
            width: 12%;
        }

        td:nth-child(2),
        td:nth-child(4) {
            width: 38%;
        }` +
            "</style>" +
            "</head><body>" +
            `<div style="display: flex; justify-content: center; text-align: center;">
        <span style="text-align: center; background-color: #dcdcdc; color: #333; font-size: 12px; width: auto;">“최고의 인재와 담대한 혁신으로 가장 신뢰받는 평생금융파트너”</span>
    </div>
    <br>
    <div style="display: flex; justify-content: center;">
        <table>
            <tr>
                <td>문서번호 :</td>
                <td>인재개발부 </td>
                <td>기 안 자 :</td>
                <td>김국민</td>
            </tr>
            <tr>
                <td>일 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;시 :</td>
                <td>\${formattedDate}</td>
                <td>발&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;신 :</td>
                <td>경영지원그룹대표</td>
            </tr>
            <tr>
                <td>수신분류 :</td>
                <td>사업기획/보고서</td>
                <td>수&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;신 :</td>
                <td>수신처참조</td>
            </tr>
            <tr>
                <td>제 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목 :</td>
                <td colspan="3">`;

        var footer = "</body></html>";

        var textval = document.getElementById("source-html").value;

        var sourceHTML = header + textval + footer;

        var source = 'data:application/vnd.ms-word;charset=utf-8,' + encodeURIComponent(sourceHTML);

        var fileDownload = document.createElement("a");

        document.body.appendChild(fileDownload);

        fileDownload.href = source;

        fileDownload.download = formattedDate + '_' + document.querySelector('#answer').value.trim() + '.' + file;

        fileDownload.click();

        document.body.removeChild(fileDownload);

    }

    function fadeIn() {
        var element = document.getElementById("downBtn");
        element.style.display = "block";  // 요소를 나타나게 하려면 "display: block;"로 설정

        var element2 = document.getElementById("imgBtn");
        element2.style.display = "block";  // 요소를 나타나게 하려면 "display: block;"로 설정

        // opacity 값을 변경하여 페이드인 효과 적용
        setTimeout(function () {
            element.style.opacity = 1;
        }, 10);  // 일부 브라우저에서는 setTimeout을 사용하여 스타일 변경을 딜레이시켜야 효과가 적용될 수 있습니다.

        setTimeout(function () {
            element2.style.opacity = 1;
        }, 10);  // 일부 브라우저에서는 setTimeout을 사용하여 스타일 변경을 딜레이시켜야 효과가 적용될 수 있습니다.
    }


    function hi098123inputcode() {
        //console.log($("#full-editor").children().text());
        const textareaContent = $(".ql-editor").children().text();
        var formattedContent = textareaContent.replace(/\n/g, "<br>");
        var formattedContent2 = formattedContent.replace(/-/g, "&nbsp&nbsp -");
        var formattedContent3 = formattedContent2.replace("<br><br>", "");
        var formattedContent4 = formattedContent3.replace("제목:", "");
        // 바꿀 HTML 코드
        var replacementHTML = '</td>' +
            '</tr>' +
            '</table>' +
            '</div>' +
            '<hr style="width: 100%; border: 2px solid black;"><br><br>' +
            '<div style="display: flex; height: 30px; width: 200px; align-items: center; margin-bottom: 15px;">' +
            '<span style="background-color: #333; width: 30px; height: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;' +
            '<span style="background-color: #333; width: 30px; height: 30px;">&nbsp;</span>&nbsp;' +
            '<span style="padding-left: 10px; font-weight: bold; width: 165px;">배 경</span>' +
            '</div>';
        var formattedContent5 = formattedContent4.replace('서론<br>', replacementHTML);
        replacementHTML = '<br><div style="display: flex; height: 30px; width: 200px; align-items: center; margin-bottom: 15px;">' +
            '<span style="background-color: #333; width: 30px; height: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;' +
            '<span style="background-color: #333; width: 30px; height: 30px;">&nbsp;</span>&nbsp;' +
            '<span style="padding-left: 10px; font-weight: bold; width: 165px;">본 론</span>' +
            '</div>';
        var formattedContent6 = formattedContent5.replace('본론<br>', replacementHTML);
        replacementHTML = '<br><div style="display: flex; height: 30px; width: 200px; align-items: center; margin-bottom: 15px;">' +
            '<span style="background-color: #333; width: 30px; height: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;' +
            '<span style="background-color: #333; width: 30px; height: 30px;">&nbsp;</span>&nbsp;' +
            '<span style="padding-left: 10px; font-weight: bold; width: 165px;">결 론</span>' +
            '</div>';
        var formattedContent7 = formattedContent6.replace('결론<br>', replacementHTML);
        document.getElementById("source-html").value = formattedContent7;
        var textval = document.getElementById("source-html").value;
        console.log(textval);
    }

</script>

<!-- Vendors CSS -->
<link rel="stylesheet" href="/vendor/libs/quill/typography.css"/>
<link rel="stylesheet" href="/vendor/libs/quill/katex.css"/>
<link rel="stylesheet" href="/vendor/libs/quill/editor.css"/>

<!-- Vendors JS -->
<script src="/vendor/libs/quill/katex.js"></script>
<script src="/vendor/libs/quill/quill.js"></script>
<!-- Page JS -->
<script src="/js/forms-editors.js"></script>

<!-- html2pdf.js 라이브러리 추가 -->
<script src="https://rawgit.com/eKoopmans/html2pdf/master/dist/html2pdf.bundle.js"></script>


