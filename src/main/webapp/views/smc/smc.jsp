<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--JSTL : 통화 날짜를 표현하게 해주는 문법--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- Content wrapper -->
<div class="content-wrapper">
    <!-- Content -->

    <div class="container-xxl flex-grow-1 container-p-y">
        <h4 class="py-3 mb-4"><span class="mdi mdi-head-snowflake-outline mdi-48px"></span>기획서 생성</h4>

        <div class="row">
            <!-- Floating (Outline) -->
            <div class="col-md-4">
                <div class="card mb-4">
                    <h5 class="card-header"><span class="mdi mdi-file-document-edit-outline mdi-36px"></span>주제 및 내용
                    </h5>
                    <div class="card-body demo-vertical-spacing demo-only-element">
                        <%--                        <div class="form-floating form-floating-outline">--%>
                        <%--                            <select class="form-select" id="floatingSelect" aria-label="Floating label select example">--%>
                        <%--                                <option>Open this select menu</option>--%>
                        <%--                                <option value="1">One</option>--%>
                        <%--                                <option value="2">Two</option>--%>
                        <%--                                <option value="3">Three</option>--%>
                        <%--                            </select>--%>
                        <%--                            <label for="floatingSelect">Works with selects</label>--%>
                        <%--                        </div>--%>

                        <%--                        <div class="input-group input-group-merge">--%>
                        <%--                            <span class="input-group-text">@</span>--%>
                        <%--                            <div class="form-floating form-floating-outline">--%>
                        <%--                                <input--%>
                        <%--                                        type="text"--%>
                        <%--                                        class="form-control"--%>
                        <%--                                        id="basic-addon11"--%>
                        <%--                                        placeholder="John Doe"--%>
                        <%--                                        aria-label="Username"--%>
                        <%--                                        aria-describedby="basic-addon11" />--%>
                        <%--                                <label for="basic-addon11">Username</label>--%>
                        <%--                            </div>--%>
                        <%--                        </div>--%>

                        <%--                        <div class="form-password-toggle">--%>
                        <%--                            <div class="input-group input-group-merge">--%>
                        <%--                                <div class="form-floating form-floating-outline">--%>
                        <%--                                    <input--%>
                        <%--                                            type="password"--%>
                        <%--                                            class="form-control"--%>
                        <%--                                            id="basic-default-password12"--%>
                        <%--                                            placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"--%>
                        <%--                                            aria-describedby="basic-default-password12" />--%>
                        <%--                                    <label for="basic-default-password12">Password</label>--%>
                        <%--                                </div>--%>
                        <%--                                <span class="input-group-text cursor-pointer"><i class="mdi mdi-eye-off-outline"></i></span>--%>
                        <%--                            </div>--%>
                        <%--                        </div>--%>

                        <%--                        <div class="input-group input-group-merge">--%>
                        <%--                            <div class="form-floating form-floating-outline">--%>
                        <%--                                <input--%>
                        <%--                                        type="text"--%>
                        <%--                                        class="form-control"--%>
                        <%--                                        id="basic-addon13"--%>
                        <%--                                        placeholder="john.doe"--%>
                        <%--                                        aria-label="Recipient's username"--%>
                        <%--                                        aria-describedby="basic-addon13" />--%>
                        <%--                                <label for="basic-addon13">Recipient's username</label>--%>
                        <%--                            </div>--%>
                        <%--                            <span class="input-group-text">@example.com</span>--%>
                        <%--                        </div>--%>

                        <%--                        <div class="input-group input-group-merge">--%>
                        <%--                            <span class="input-group-text">https://example.com/users/</span>--%>
                        <%--                            <div class="form-floating form-floating-outline">--%>
                        <%--                                <input--%>
                        <%--                                        type="text"--%>
                        <%--                                        class="form-control"--%>
                        <%--                                        placeholder="id"--%>
                        <%--                                        id="basic-url14"--%>
                        <%--                                        aria-describedby="basic-url14" />--%>
                        <%--                                <label for="basic-url14">URL</label>--%>
                        <%--                            </div>--%>
                        <%--                        </div>--%>

                        <%--                        <div class="input-group input-group-merge">--%>
                        <%--                            <span class="input-group-text">$</span>--%>
                        <%--                            <div class="form-floating form-floating-outline">--%>
                        <%--                                <input--%>
                        <%--                                        type="number"--%>
                        <%--                                        class="form-control"--%>
                        <%--                                        placeholder="499"--%>
                        <%--                                        aria-label="Amount (to the nearest dollar)" />--%>
                        <%--                                <label>Amount</label>--%>
                        <%--                            </div>--%>
                        <%--                            <span class="input-group-text">.00</span>--%>
                        <%--                        </div>--%>


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
                    <h5 class="card-header">
                        <span class="mdi mdi-file-document-edit-outline mdi-36px"></span>답변 및 편집
                        <button id="downloadButton">다운로드</button>
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

    <div class="col-xs-3 col-xs-offset-3 text-center">

        <a id="hi098123btn" style="float: right;width: 30%;margin: 4px 0px;padding: 10px 0px;"
           onclick="hi098123inputcode();">예제 코드 넣기</a>

        <textarea style="width: 100%; height: 200px; background-color: #eff;resize: vertical;" id="source-html"
                  placeholder="여기에 html로 작성해주세요"></textarea>


        <a style="width: 100%;margin: 4px 0px;padding: 10px 0px;" onclick="htmlToFile('hwp');">한글(.hwp)
            다운로드</a>

        <a style="width: 100%;margin: 4px 0px;padding: 10px 0px;" onclick="htmlToFile('doc');">워드(.doc)
            다운로드</a>

        <p>&nbsp;</p>
        <p>&nbsp;</p>

        <p>한가지 주의: hwp다운로드 후 열때 UTF-8으로 여셔야 됩니다. 웹브라우저 상에서는 UTF-8를 메인으로 사용 하기 때문에</p>

    </div>


</div>
<!-- Content wrapper -->

<script>
    function htmlToFile(file) {


        var header = "<html>" +
            "<head><meta charset='utf-8'>" +
            "<style>" +
            "@page { margin: 0.5in; }" + // 여백 설정
            "body { font-family: Arial, sans-serif; font-size: 12pt; line-height: 1.5; }" + // 기타 스타일
            "</style>" +
            "</head><body>";

        var footer = "</body></html>";

        var textval = document.getElementById("source-html").value;

        var sourceHTML = header + textval + footer;

        var source = 'data:application/vnd.ms-word;charset=utf-8,' + encodeURIComponent(sourceHTML);

        var fileDownload = document.createElement("a");

        document.body.appendChild(fileDownload);

        fileDownload.href = source;

        fileDownload.download = 'hi098123file.' + file;

        fileDownload.click();

        document.body.removeChild(fileDownload);

    }


    function hi098123inputcode() {
        //console.log($("#full-editor").children().text());
        const textareaContent = $(".ql-editor").children().text();
        var formattedContent = textareaContent.replace(/\n/g, "<br>");
        var formattedContent2 = formattedContent.replace(/-/g, "&nbsp&nbsp -");
        document.getElementById("source-html").value = formattedContent2;
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


