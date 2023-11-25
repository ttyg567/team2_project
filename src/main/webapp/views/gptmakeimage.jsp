<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html
        lang="en"
        class="light-style layout-navbar-fixed layout-wide"
        dir="ltr"
        data-theme="theme-default"
        data-assets-path="/"
        data-template="front-pages">
<head>
    <meta charset="utf-8" />
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>Help Center Landing - Front Pages | Materialize - Material Design HTML Admin Template</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
            href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&ampdisplay=swap"
            rel="stylesheet" />

    <link rel="stylesheet" href="/vendor/fonts/materialdesignicons.css" />

    <!-- Menu waves for no-customizer fix -->
    <link rel="stylesheet" href="/vendor/libs/node-waves/node-waves.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="/vendor/css/rtl/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="/vendor/css/rtl/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="/css/demo.css" />
    <link rel="stylesheet" href="/vendor/css/pages/front-page.css" />
    <!-- Vendors CSS -->

    <!-- Page CSS -->
    <link rel="stylesheet" href="/vendor/css/pages/front-page-help-center.css" />

    <!-- Helpers -->
    <script src="/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="/vendor/js/template-customizer.js"></script>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="/js/front-config.js"></script>

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
            var clickCount = 1;

            $('#generateButton').click(function () {
                // 이미지 생성 중임을 표시
                showGeneratingMessage(clickCount);
                generateImage(clickCount);
                clickCount++;
            });

            $('#comment').keypress(function (e) {
                if (e.which === 13) {  // Enter 키 코드
                    e.preventDefault();  // 기본 동작인 submit 방지
                    // 이미지 생성 중임을 표시
                    showGeneratingMessage(clickCount);
                    generateImage(clickCount);
                    clickCount++;
                }
            });
        });

        // 이미지 생성 메시지 표시 함수
        function showGeneratingMessage(clickCount) {
            var commentText = "이미지 생성 중...";

            if (clickCount > 1 && clickCount <= 3) {
                commentText = clickCount + "번째 이미지 생성 중...";
            } else if (clickCount > 3) {
                commentText = "이미지 생성을 모두 사용했습니다. 화면을 새로고침해주세요.";
            }

            $("#loadingMessage").text(commentText);
        }

        // 이미지 생성 완료 시 메시지 감추는 함수
        function hideGeneratingMessage() {
            $("#loadingMessage").text("");
        }

        function generateImage(clickCount) {
            var comment = $("#comment").val();

            $.ajax({
                url: '/gptMakeImage',  // AjaxController
                type: 'GET',
                data: { comment: comment },
                success: function (imageURL) {
                    console.log('Click Count:', clickCount);
                    console.log('Image URL:', imageURL);

                    if (imageURL) {
                        // 클릭 횟수에 따라 이미지 설정
                        $("#generatedImage" + clickCount).attr("src", imageURL).show();

                        // 이미지 표시 후 메시지 숨기기
                        hideGeneratingMessage();
                    } else {
                        hideGeneratingMessage();
                    }
                },
                error: function () {
                    alert("이미지 생성에 실패했습니다.");
                    hideGeneratingMessage();
                }
            });
        }
    </script>





</head>

<body>
<script src="/vendor/js/dropdown-hover.js"></script>
<script src="/vendor/js/mega-dropdown.js"></script>

<!-- Sections:Start -->

<!-- Help Center Header: Start -->
<section class="section-py first-section-pt help-center-header">
    <form class="text-center">
    <h1 class="text-center text-primary display-6 fw-semibold">원하는 이미지를 묘사해주세요!</h1>
    <div class="input-wrapper my-3 input-group input-group-lg input-group-merge position-relative mx-auto">
        <span class="input-group-text" id="basic-addon1"><i class="mdi mdi-text-recognition"></i></span>
        <input
                type="text"
                class="form-control"
                id="comment"
                name="comment"
                placeholder="Description"
                aria-label="Search"
                aria-describedby="basic-addon1" />
    </div>
    <p class="text-center px-3 mb-0">( 예시 ) Two individuals in suits shaking hands.</p>
    <button type="button" id="generateButton" class="btn btn-primary" style="margin-top: 50px">Generate Image</button>
    </form>
</section>
<!-- Help Center Header: End -->

<section class="section-py">
    <div class="container">
        <h4 class="display-6 text-center mb-4 pb-md-2" id="loadingMessage"></h4>
        <div class="row">
            <div class="col-lg-10 mx-auto">
                <div class="row gy-4 gy-md-0">
                    <div class="col-md-4">
                        <div class="card border shadow-none">
                            <div class="card-body text-center">
                                <img id="generatedImage1" src="/img/favicon/imageLoading1.gif" alt="Generated Image" style="max-width: 100%; max-height: 100%;">
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card border shadow-none">
                            <div class="card-body text-center">
                                <img id="generatedImage2" src="/img/favicon/imageLoading2.gif" alt="Generated Image" style="max-width: 100%; max-height: 100%;">
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="card border shadow-none">
                            <div class="card-body text-center">
                                <img id="generatedImage3" src="/img/favicon/imageLoading3.gif" alt="Generated Image" style="max-width: 100%; max-height: 100%;">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Core JS -->
<!-- build:js assets/vendor/js/core.js -->
<script src="/vendor/libs/popper/popper.js"></script>
<script src="/vendor/js/bootstrap.js"></script>
<script src="/vendor/libs/node-waves/node-waves.js"></script>

<!-- endbuild -->

<!-- Vendors JS -->

<!-- Main JS -->
<script src="/js/front-main.js"></script>

<!-- Page JS -->
</body>
</html>






