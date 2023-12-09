<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib  prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>

<html
        lang="en"
        class="light-style layout-navbar-fixed layout-wide"
        dir="ltr"
        data-theme="theme-default"
        data-assets-path="../"
        data-template="front-pages">
<head>
  <meta charset="utf-8"/>
  <meta
          name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"/>

  <title>Making Your Contract Page</title>

  <meta name="description" content=""/>

  <!-- Favicon -->
  <link rel="icon" type="image/x-icon" href="../img/favicon/favicon.ico"/>

  <!-- Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com"/>
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
  <link
          href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&ampdisplay=swap"
          rel="stylesheet"/>

  <link rel="stylesheet" href="../vendor/fonts/materialdesignicons.css"/>

  <!-- Menu waves for no-customizer fix -->
  <link rel="stylesheet" href="../vendor/libs/node-waves/node-waves.css"/>

  <!-- Core CSS -->
  <link rel="stylesheet" href="../vendor/css/rtl/core.css" class="template-customizer-core-css"/>
  <link rel="stylesheet" href="../vendor/css/rtl/theme-default.css" class="template-customizer-theme-css"/>
  <link rel="stylesheet" href="../css/demo.css"/>
  <link rel="stylesheet" href="../vendor/css/pages/front-page.css"/>
  <!-- Vendors CSS -->

  <!-- Page CSS -->

  <link rel="stylesheet" href="../vendor/css/pages/front-page-payment.css"/>

  <!-- Helpers -->
  <script src="../vendor/js/helpers.js"></script>
  <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
  <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
  <script src="../vendor/js/template-customizer.js"></script>
  <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
  <script src="../js/front-config.js"></script>

  <%--  현진  --%>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.3.2/html2canvas.min.js"></script>

</head>

<body>
<script src="../vendor/js/dropdown-hover.js"></script>
<script src="../vendor/js/mega-dropdown.js"></script>


<!-- Sections:Start -->

<div class="container">
  <div class="card">
    <div class="row">
      <div class="col-lg-7 card-body border-end">
        <h4 class="mb-2">계약서 작성</h4>
        <p class="mb-0">
          규격화된 계약관련 서류들을 간편하게 작성할 수 있습니다.<br/>
          새로운 양식 등재가 필요할 시, 전산팀에 문의하세요 <strong>T.4119</strong>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button
                class="btn btn-primary btn-sm" id="addTextButton">반영
        </button>
          <button class="btn btn-secondary btn-sm" id="resetButton">초기화</button>
          <%--                <button class="btn btn-secondary btn-sm" id="downloadButton">출력</button>--%>
        </p>
        <div style="overflow-y: scroll; overflow-x: hidden; max-height: 800px;">
          <div class="row py-4 my-2">
            <div class="col-md mb-md-0 mb-2">
              <div class="form-check custom-option custom-option-basic checked">
                <label class="form-check-label custom-option-content form-check-input-payment d-flex gap-3 align-items-center"
                       for="customRadioVisa">
                  <input name="customRadioTemp" class="form-check-input" type="radio"
                         value="credit-card" id="customRadioVisa" checked/>
                  <span class="custom-option-body">
                    <img src="../img/icons/payments/account-file-text.svg" alt="make in detail" width="30"/>
                    <span class="ms-3">상세 작성</span>
                </span>
                </label>
              </div>
            </div>
            <div class="col-md mb-md-0 mb-2">
              <div class="form-check custom-option custom-option-basic">
                <label class="form-check-label custom-option-content form-check-input-payment d-flex gap-3 align-items-center"
                       for="customRadioPaypal">
                  <input name="customRadioTemp" class="form-check-input" type="radio" value="paypal"
                         id="customRadioPaypal"/>
                  <span class="custom-option-body">
                    <i class="mdi mdi-account-file-text mdi-20px"></i>
                    <img src="../img/icons/payments/account-file-text-outline.svg" alt="make in simple" width="30"/>
                    <span class="ms-3">약식 작성</span>
                </span>
                </label>
              </div>
            </div>
          </div>

          <h4 class="mt-2 mb-4">Basic Information [임차주택의 표시]</h4>
          <form>
            <div class="row g-4">
              <div class="col-md-6">
                <div class="form-floating form-floating-outline">
                  <input type="text" class="form-control" id="lender" placeholder="임대인 명을 입력하세요"/>
                  <label for="contract-address1">임대인</label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-floating form-floating-outline">
                  <input type="text" class="form-control" id="borrower" placeholder="임차인 명을 입력하세요"/>
                  <label for="contract-address2">임차인</label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-floating form-floating-outline">
                  <input type="text" class="form-control" id="contract-address1"
                         placeholder="서울시 용산구 효창동"/>
                  <label for="contract-address1">소재지(시/군/구/동)</label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-floating form-floating-outline">
                  <input type="text" class="form-control" id="contract-address2" placeholder="123-4"/>
                  <label for="contract-address2">상세 (번지/동-호수)</label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-floating form-floating-outline">
                  <select id="contract-jimok" class="form-select" data-allow-clear="true">
                    <option value="">지목</option>
                    <option value="전">전</option>
                    <option value="답">답</option>
                    <option value="대">대</option>
                  </select>
                  <label for="contract-jimok">토지</label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="input-group input-group-merge">
                  <%--                      <span class="input-group-text">$</span>--%>
                  <div class="form-floating form-floating-outline">
                    <input type="number" class="form-control" placeholder="104.24"
                           aria-label="Amount (to the nearest dollar)">
                    <label>토지 면적</label>
                  </div>
                  <span class="input-group-text">㎡</span>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-floating form-floating-outline">
                  <select id="contract-jimok2" class="form-select" data-allow-clear="true">
                    <option value="">구조/용도</option>
                    <option value="단독/다가구 주택">단독/다가구 주택</option>
                    <option value="공동 주택">공동 주택</option>
                  </select>
                  <label for="contract-jimok2">건물</label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="input-group input-group-merge">
                  <%--                      <span class="input-group-text">$</span>--%>
                  <div class="form-floating form-floating-outline">
                    <input type="number" class="form-control" placeholder="84.34"
                           aria-label="Amount (to the nearest dollar)">
                    <label>건물 면적</label>
                  </div>
                  <span class="input-group-text">㎡</span>
                </div>
              </div>
              <div class="col-md">
                <small class="text-light fw-medium d-block">계약의 종류</small>
                <div class="form-check form-check-inline mt-3">
                  <input class="form-check-input" type="radio" name="contract_type" id="new_contract"
                         value="V">
                  <label class="form-check-label" for="new_contract">신규 계약</label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="contract_type" id="re_contract"
                         value="V">
                  <label class="form-check-label" for="re_contract">재계약</label>
                </div>
              </div>
            </div>
          </form>
          <div id="form-credit-card">
            <h4 class="my-4 pt-2">Detailed Information [계약 내용]</h4>
            <form>
              <div class="row g-4">
                <div class="col-12">
                  <!-- 보증금 -->
                  <div class="form-floating form-floating-outline">
                    <input type="text" id="security-deposit" class="form-control" placeholder="임대차 보증금을 한글로 입력하세요"/>
                    <label for="security-deposit">보증금</label>
                  </div>
                </div>
                <div class="col-12">
                  <!-- 계약금 -->
                  <div class="form-floating form-floating-outline">
                    <input type="text" id="contract-amount" class="form-control" placeholder="임대차 계약금을 한글로 입력하세요"/>
                    <label for="contract-amount">계약금</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <!-- 중도금 -->
                  <div class="form-floating form-floating-outline">
                    <input type="text" id="installment-payment" class="form-control" placeholder="중도금 금액을 한글로 입력하세요"/>
                    <label for="installment-payment">중도금</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <!-- 중도금 날짜 -->
                  <div class="form-floating form-floating-outline">
                    <input type="date" id="installment-date" class="form-control" placeholder="중도금 지불 날짜를 입력하세요 "/>
                    <label for="installment-date">중도금 날짜</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <!-- 잔금 -->
                  <div class="form-floating form-floating-outline">
                    <input type="text" id="balance" class="form-control" placeholder="잔금 금액을 한글로 입력하세요"/>
                    <label for="balance">잔금</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <!-- 잔금 날짜 -->
                  <div class="form-floating form-floating-outline">
                    <input type="date" id="balance-date" class="form-control" placeholder="잔금일을 입력하세요"/>
                    <label for="balance-date">잔금 날짜</label>
                  </div>
                </div>
                <div class="col-12">
                  <!-- 차임 -->
                  <div class="form-floating form-floating-outline">
                    <input type="text" id="additional-charge" class="form-control" placeholder="월세 금액을 한글로 입력하세요"/>
                    <label for="additional-charge">차임</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <!-- 지불일 -->
                  <div class="form-floating form-floating-outline">
                    <input type="text" id="payment-date" class="form-control" placeholder="월세 지불일자 (ex: 10일이면 10)"/>
                    <label for="payment-date">지불일</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <!-- 입금계좌 -->
                  <div class="form-floating form-floating-outline">
                    <input type="account" id="bank-account" class="form-control" placeholder="(은행명) 00000-000-00000"/>
                    <label for="bank-account">입금계좌</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <!-- 임대차 기간 시작일 -->
                  <div class="form-floating form-floating-outline">
                    <input type="date" id="lease-start-date" class="form-control" placeholder="임대차 시작 년월일을 입력하세요"/>
                    <label for="lease-start-date">임대차 기간 시작일</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <!-- 임대차 기간 종료일 -->
                  <div class="form-floating form-floating-outline">
                    <input type="date" id="lease-end-date" class="form-control" placeholder="임대차 종료 년월일을 입력하세요"/>
                    <label for="lease-end-date">임대차 기간 종료일</label>
                  </div>
                </div>
                <h6 class="my-2 pt-5">임대인 정보</h6>
                <div class="col-md-12">
                  <!-- 임대인 주소 -->
                  <div class="form-floating form-floating-outline">
                    <input type="text" id="landlord-address" class="form-control" placeholder="서울시 관악구 신림동 123-1"/>
                    <label for="landlord-address">임대인 주소</label>
                  </div>
                </div>
                <div class="col-md-4">
                  <!-- 임대인 주민등록번호 -->
                  <div class="form-floating form-floating-outline">
                    <input type="text" id="landlord-id" class="form-control" placeholder="670101-1234567"/>
                    <label for="landlord-id">임대인 주민등록번호</label>
                  </div>
                </div>
                <div class="col-md-4">
                  <!-- 임대인 전화번호 -->
                  <div class="form-floating form-floating-outline">
                    <input type="text" id="landlord-phone" class="form-control" placeholder="010-1111-2222"/>
                    <label for="landlord-phone">임대인 전화번호</label>
                  </div>
                </div>
                <div class="col-md-4">
                  <!-- 임대인 성명 -->
                  <div class="form-floating form-floating-outline">
                    <input type="text" id="landlord-name" class="form-control" placeholder="홍길동 또는 법인명"/>
                    <label for="landlord-name">임대인 성명</label>
                  </div>
                </div>


                <!-- 임차인 파트 -->
                <h6 class="my-2 pt-5">임차인 정보</h6>

                <div class="col-md-12">
                  <!-- 임차인 주소 -->
                  <div class="form-floating form-floating-outline">
                    <input type="text" id="tenant-address" class="form-control" placeholder="서울시 중구 황학동 123-1"/>
                    <label for="tenant-address">임차인 주소</label>
                  </div>
                </div>
                <div class="col-md-4">
                  <!-- 임차인 주민등록번호 -->
                  <div class="form-floating form-floating-outline">
                    <input type="text" id="tenant-id" class="form-control" placeholder="880101-1234567"/>
                    <label for="tenant-id">임차인 주민등록번호</label>
                  </div>
                </div>
                <div class="col-md-4">
                  <!-- 임차인 전화번호 -->
                  <div class="form-floating form-floating-outline">
                    <input type="text" id="tenant-phone" class="form-control" placeholder="010-2222-2222"/>
                    <label for="tenant-phone">임차인 전화번호</label>
                  </div>
                </div>
                <div class="col-md-4">
                  <!-- 임차인 성명 -->
                  <div class="form-floating form-floating-outline">
                    <input type="text" id="tenant-name" class="form-control" placeholder="이순신 또는 법인명"/>
                    <label for="tenant-name">임차인 성명</label>
                  </div>
                </div>


              </div>

            </form>
          </div>
        </div>
      </div>
      <div class="col-lg-5 card-body">
        <h4 class="mb-2">주택임대차표준계약서</h4>
        <div class="bg-lighter p-4 rounded mt-4">
          <div class="d-flex align-items-center">
            <div style="overflow-y: scroll; overflow-x: hidden; max-height: 500px;">
              <img src="<spring:url value='../img/rent_contract1.png'/>" id="image1"
                   style="margin-bottom: 10px;">
              <img src="<spring:url value='../img/rent_contract2.png'/>" id="image2"
                   style="margin-bottom: 10px;">
            </div>
          </div>
          <div class="d-grid">
            <a class="btn btn-outline-primary text-primary" onclick="showAlert()">임시저장</a>
          </div>
        </div>

        <div>
          <div class="d-grid mt-3">
            <button class="btn btn-success" id="downloadButton">
              <span class="me-2">Complete</span>
              <i class="mdi mdi-arrow-right scaleX-n1-rtl"></i>
            </button>
          </div>

          <p class="mt-4 pt-2">
            반영된 출력물을 이미지로 확인한 후, Complete 버튼을 눌러 PDF 파일로 저장하세요.
          </p>
        </div>
      </div>

    </div>
  </div>
</div>

<!-- Modal -->
<!-- Pricing Modal -->
<div class="modal fade" id="pricingModal" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog modal-xl modal-simple modal-pricing">
    <div class="modal-content p-2 p-md-5">
      <div class="modal-body py-3 py-md-0">
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        <!-- Pricing Plans -->
        <div class="pb-3 rounded-top">
          <h3 class="text-center mb-2">Subscription Plan</h3>
          <p class="text-center pt-1 mb-0">
            All plans include 40+ advanced tools and features to boost your product. Choose the best plan to
            fit
            your needs.
          </p>
          <div class="d-flex align-items-center justify-content-center flex-wrap gap-2 py-3 mb-0 mb-md-3">
            <label class="switch switch-primary ms-sm-5 ps-sm-5 me-0">
              <span class="switch-label">Monthly</span>
              <input type="checkbox" class="switch-input price-duration-toggler" checked/>
              <span class="switch-toggle-slider">
                    <span class="switch-on"></span>
                    <span class="switch-off"></span>
                  </span>
              <span class="switch-label">Annual</span>
            </label>
          </div>
          <div class="row mx-0 gy-3">
            <!-- Basic -->
            <div class="col-xl mb-md-0 mb-4">
              <div class="card border rounded shadow-none">
                <div class="card-body">
                  <div class="my-3 pt-2 text-center">
                    <img src="../img/illustrations/pricing-basic.png" alt="Basic Image"
                         height="100"/>
                  </div>
                  <h3 class="card-title text-center text-capitalize mb-1">Basic</h3>
                  <div class="text-center">
                    <div class="d-flex justify-content-center">
                      <sup class="h6 pricing-currency mt-3 mb-0 me-1 fw-normal">$</sup>
                      <h1 class="display-3 mb-0 text-primary">0</h1>
                      <sub class="h6 pricing-duration mt-auto mb-2 fw-normal">/month</sub>
                    </div>
                  </div>

                  <ul class="list-group ms-4 mb-4 mt-2 pt-1">
                    <li class="mb-1">100 responses a month</li>
                    <li class="mb-1">Unlimited forms and surveys</li>
                    <li class="mb-1">Unlimited fields</li>
                    <li class="mb-1">Basic form creation tools</li>
                    <li class="mb-0">Up to 2 subdomains</li>
                  </ul>

                  <button type="button" class="btn btn-outline-success d-grid w-100"
                          data-bs-dismiss="modal">
                    Your Current Plan
                  </button>
                </div>
              </div>
            </div>

            <!-- Standard -->
            <div class="col-xl mb-md-0 mb-4">
              <div class="card border-primary border shadow-none">
                <div class="card-body position-relative">
                  <div class="position-absolute end-0 me-4 top-0 mt-4">
                    <span class="badge bg-label-primary rounded-pill">Popular</span>
                  </div>
                  <div class="my-3 pt-2 text-center">
                    <img src="../img/illustrations/pricing-standard.png" alt="Pro Image"
                         height="100"/>
                  </div>
                  <h3 class="card-title text-center text-capitalize mb-1">Pro</h3>
                  <p class="text-center mb-2">For small to medium businesses</p>
                  <div class="text-center h-px-50">
                    <div class="d-flex justify-content-center">
                      <sup class="h6 pricing-currency mt-3 mb-0 me-1">$</sup>
                      <h1 class="price-toggle price-yearly display-4 text-primary mb-0">7</h1>
                      <h1 class="price-toggle price-monthly display-4 text-primary mb-0 d-none">
                        9</h1>
                      <sub class="h6 pricing-duration mt-auto mb-2 fw-normal">/month</sub>
                    </div>
                    <small class="price-yearly price-yearly-toggle">$ 90 / year</small>
                  </div>

                  <ul class="list-group ms-4 mb-4 pt-3">
                    <li class="mb-1">Unlimited responses</li>
                    <li class="mb-1">Unlimited forms and surveys</li>
                    <li class="mb-1">Instagram profile page</li>
                    <li class="mb-1">Google Docs integration</li>
                    <li class="mb-0">Custom “Thank you” page</li>
                  </ul>

                  <button type="button" class="btn btn-primary d-grid w-100" data-bs-dismiss="modal">
                    Upgrade
                  </button>
                </div>
              </div>
            </div>

            <!-- Enterprise -->
            <div class="col-xl">
              <div class="card border rounded shadow-none">
                <div class="card-body">
                  <div class="my-3 pt-2 text-center">
                    <img
                            src="../img/illustrations/pricing-enterprise.png"
                            alt="Enterprise Image"
                            height="100"/>
                  </div>
                  <h3 class="card-title text-center text-capitalize mb-1">Enterprise</h3>
                  <p class="text-center mb-2">Solution for big organizations</p>

                  <div class="text-center h-px-50">
                    <div class="d-flex justify-content-center">
                      <sup class="h6 pricing-currency mt-3 mb-0 me-1">$</sup>
                      <h1 class="price-toggle price-yearly display-4 text-primary mb-0">16</h1>
                      <h1 class="price-toggle price-monthly display-4 text-primary mb-0 d-none">
                        19</h1>
                      <sub class="h6 pricing-duration mt-auto mb-2 fw-normal">/month</sub>
                    </div>
                    <small class="price-yearly price-yearly-toggle">$ 190 / year</small>
                  </div>

                  <ul class="list-group ms-4 mb-4 pt-3">
                    <li class="mb-1">PayPal payments</li>
                    <li class="mb-1">Logic Jumps</li>
                    <li class="mb-1">File upload with 5GB storage</li>
                    <li class="mb-1">Custom domain support</li>
                    <li class="mb-0">Stripe integration</li>
                  </ul>

                  <button type="button" class="btn btn-outline-primary d-grid w-100"
                          data-bs-dismiss="modal">
                    Upgrade
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!--/ Pricing Plans -->
        <div class="text-center">
          <p>Still Not Convinced? Start with a 14-day FREE trial!</p>
          <a href="javascript:void(0);" class="btn btn-primary">Start your trial</a>
        </div>
      </div>
    </div>
  </div>
</div>
<!--/ Pricing Modal -->

<%--현진라스트 start--%>

<script src="../js/html2canvas.js"></script>
<script src="../js/jspdf.min.js"></script>

<script>

  //임시저장 버튼 클릭 시 팝업
  function showAlert() {
    alert('임시저장 완료');
  }

  // 페이지가 로드될 때 약식 작성 클릭되고 시작.
  window.onload = function () {
    // customRadioPaypal 라디오 버튼을 선택
    document.getElementById('customRadioPaypal').click();
  };

  var textInputs = document.getElementsByClassName("form-control");
  var currentPositionIndex = 0;
  var imagesLoaded = 0;

  // 이미지가 모두 로드되었는지 확인하는 함수
  function checkImagesLoaded() {
    imagesLoaded++;
    if (imagesLoaded === 2) {
      // 두 이미지가 모두 로드되면 PDF 생성을 계속합니다.
      document.getElementById("addTextButton").disabled = false; // "텍스트 추가" 버튼 활성화
    }
  }

  // 이미지 로드 이벤트 리스너
  document.getElementById("image1").onload = checkImagesLoaded;
  document.getElementById("image2").onload = checkImagesLoaded;

  // 이미지에 텍스트 추가
  document.getElementById("addTextButton").addEventListener("click", function () {
    // 이미지 엘리먼트를 가져옵니다.
    var image1 = document.getElementById("image1");
    var image2 = document.getElementById("image2");

    // 이미지를 복제하여 별도의 캔버스에 그립니다.
    var canvas1 = document.createElement("canvas");
    var canvas2 = document.createElement("canvas");
    var ctx1 = canvas1.getContext("2d");
    var ctx2 = canvas2.getContext("2d");

    canvas1.width = image1.width;
    canvas1.height = image1.height;
    ctx1.clearRect(0, 0, canvas1.width, canvas1.height);
    ctx1.drawImage(image1, 0, 0);

    canvas2.width = image2.width;
    canvas2.height = image2.height;
    ctx2.clearRect(0, 0, canvas2.width, canvas2.height);
    ctx2.drawImage(image2, 0, 0);

    // Iterate over the text inputs
    for (var i = 0; i < textInputs.length; i++) {
      var text = textInputs[i].value;

      // Get the next position from the array
      var currentPosition = textPositions[currentPositionIndex];
      var x = currentPosition.x;
      var y = currentPosition.y;

      // Add text to the canvases
      ctx1.font = "10px Arial";
      ctx1.fillStyle = "black";
      ctx1.fillText(text, x, y);

      // ctx2.font = "10px Arial";
      // ctx2.fillStyle = "black";
      // ctx2.fillText(text, x, y);

      // Increment the position index
      currentPositionIndex++;

      if (currentPositionIndex >= textPositions.length) {
        currentPositionIndex = 0; // Reset to the first position
      }
    }

    // Get the selected values from the dropdowns
    var selectedValue1 = document.getElementById("contract-jimok").value;
    var selectedValue2 = document.getElementById("contract-jimok2").value;

    // Draw the selected values on the canvases
    var valueX = 115; // Set the X-coordinate for the selected values
    var valueY = 118; // Set the Y-coordinate for the selected value on the first canvas
    ctx1.font = "10px Arial";
    ctx1.fillStyle = "black";
    ctx1.fillText(selectedValue1, valueX, valueY);

    var valueX2 = 115; // Set the X-coordinate for the selected values
    var valueY2 = 131; // Set the Y-coordinate for the selected value on the second canvas
    // ctx2.font = "10px Arial";
    // ctx2.fillStyle = "black";
    // ctx2.fillText(selectedValue2, valueX2, valueY2);
    ctx1.font = "10px Arial";
    ctx1.fillStyle = "black";
    ctx1.fillText(selectedValue2, valueX2, valueY2);


    // Get the selected radio button value
    var newContract = document.getElementById("new_contract").checked;
    var reContract = document.getElementById("re_contract").checked;

    // Draw the selected radio button value on the canvases
    if (newContract) {
      ctx1.font = "bold 12px Arial";
      ctx1.fillStyle = "black";
      ctx1.fillText("V", 71, 155); // 위치 수정 가능
    } else if (reContract) {
      ctx1.font = "bold  12px Arial";
      ctx1.fillStyle = "black";
      ctx1.fillText("V", 245, 155); // 위치 수정 가능
    }


    // Replace the original images with the edited canvases
    image1.src = canvas1.toDataURL("image/png");
    image2.src = canvas2.toDataURL("image/png");
  });

  document.getElementById("resetButton").addEventListener("click", function () {
    // Clear text inputs
    for (var i = 0; i < textInputs.length; i++) {
      textInputs[i].value = "";
    }

    // Reset the currentPositionIndex
    currentPositionIndex = 0;

    // Reload the images
    imagesLoaded = 0;
    document.getElementById("image1").src = "../img/rent_contract1.png";
    document.getElementById("image2").src = "../img/rent_contract2.png";

    // Reset select elements
    document.getElementById("contract-jimok").value = "";
    document.getElementById("contract-jimok2").value = "";

    // Uncheck radio buttons
    document.getElementById("new_contract").checked = false;
    document.getElementById("re_contract").checked = false;
  });

  document.getElementById("downloadButton").addEventListener("click", function () {
    createPDF(); // PDF 생성 및 다운로드
  });

  var textPositions = [
    {x: 350, y: 131},    //건물면적
    {x: 70, y: 68},     //임대인
    {x: 190, y: 68}, //임차인
    {x: 80, y: 105}, //소재지
    {x: 180, y: 105}, //상세
    {x: 350, y: 118} //토지면적
    // { x: 250, y: 350 },
    // { x: 350, y: 300 },
    // { x: 300, y: 50 },
    // { x: 100, y: 350 }
  ];

  function createPDF() {
    // 이미지 엘리먼트를 가져옵니다.
    var image1 = document.getElementById("image1");
    var image2 = document.getElementById("image2");

    // 새로운 PDF 문서를 생성합니다.
    var pdf = new jsPDF("p", "pt", [image1.width, image1.height * 2]); // PDF 크기를 두 이미지에 맞게 설정

    // PDF에 첫 번째 이미지 추가
    pdf.addImage(image1, "PNG", 0, 0, image1.width, image1.height);

    // 첫 번째 이미지 아래에 두 번째 이미지 추가
    pdf.addImage(image2, "PNG", 0, image1.height, image2.width, image2.height);

    // PDF 저장
    pdf.save("표준주택임대차계약서.pdf");
  }
</script>
<%--현진라스트 end--%>

<script src="../js/pages-pricing.js"></script>

<!-- /Modal -->

<!-- / Sections:End -->


<!-- Core JS -->
<!-- build:js assets/vendor/js/core.js -->
<script src="../vendor/libs/popper/popper.js"></script>
<script src="../vendor/js/bootstrap.js"></script>
<script src="../vendor/libs/node-waves/node-waves.js"></script>

<!-- endbuild -->

<!-- Vendors JS -->
<script src="../vendor/libs/cleavejs/cleave.js"></script>

<!-- Main JS -->
<script src="../js/front-main.js"></script>

<!-- Page JS -->
<script src="../js/front-page-payment.js"></script>
</body>
</html>


