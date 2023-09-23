<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Image Result</title>
    <style>
        /* 깜빡이는 애니메이션 */
        @keyframes blink {
            0% { opacity: 0; }
            50% { opacity: 1; }
            100% { opacity: 0; }
        }

        #loadingMessage {
            animation: blink 1s infinite; /* 1초 간격으로 애니메이션 실행 */
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#generateButton').click(function () {
                // 이미지 생성 중임을 표시
                showGeneratingMessage();
                generateImage();
            });

            $('#comment').keypress(function (e) {
                if (e.which === 13) {  // Enter 키 코드
                    e.preventDefault();  // 기본 동작인 submit 방지
                    // 이미지 생성 중임을 표시
                    showGeneratingMessage();
                    generateImage();
                }
            });
        });

        // 이미지 생성 중임을 표시하는 함수
        function showGeneratingMessage() {
            $("#loadingMessage").text("AI가 이미지를 생성하고 있습니다...");
        }

        // 이미지 생성 완료 시 메시지 감추는 함수
        function hideGeneratingMessage() {
            $("#loadingMessage").text("");
        }

        function generateImage() {
            var comment = $("#comment").val();

            $.ajax({
                url: '/gptMakeImage',  // AjaxController
                type: 'GET',
                data: { comment: comment },
                success: function (imageURL) {
                    var generatedImage = $("#generatedImage");
                    if (imageURL) {
                        generatedImage.attr("src", imageURL);
                        generatedImage.show();
                        // 이미지 생성 완료 시 메시지 감춤
                        hideGeneratingMessage();
                    } else {
                        generatedImage.hide();
                        // 이미지 생성 실패 시 메시지 감춤
                        hideGeneratingMessage();
                    }
                },
                error: function () {
                    alert("이미지 생성에 실패했습니다.");
                    // 이미지 생성 실패 시 메시지 감춤
                    hideGeneratingMessage();
                }
            });
        }
    </script>
</head>
<body>
<h1>Gpt Makes Image:</h1>
<form>
    <label for="comment">원하는 이미지를 영어로 설명해주세요. </label>
    <h5> 예시 : Two individuals in suits shaking hands. </h5>
    <input type="text" id="comment" name="comment" placeholder="Enter your comment">
    <button type="button" id="generateButton">Generate Image</button>
</form>

<p id="loadingMessage"></p>

<img id="generatedImage" src="" alt="Generated Image" style="display: none; width: 256px; height: 256px;">
</body>
</html>
