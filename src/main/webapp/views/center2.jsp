<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


    <!-- Content wrapper -->
    <div class="content-wrapper">
        <!-- Content -->
        <div class="container-xxl flex-grow-1 container-p-y">
            <!-- 상단 탭 -->
            <div class="card bg-transparent shadow-none border-0 my-4">
                <div class="card-body row p-0 pb-3">
                    <!-- 이번 주 현황 -->
                        <div class="col-12 col-md-6 card-separator">
                            <h3 class="display-6">안녕하세요, <span class="fw-semibold">김국민 님!</span> 👋🏻</h3>
                            <div class="col-12 col-lg-7">
                                <p>이번 주 현황</p>
                            </div>
                            <div class="d-flex justify-content-between flex-wrap gap-3 me-5">
                                <div class="d-flex align-items-center gap-2 me-4 me-sm-0">
                                    <div class="avatar avatar-md">
                                        <div class="avatar-initial bg-label-primary rounded">
                                            <i class="mdi mdi-laptop mdi-36px"></i>
                                        </div>
                                    </div>
                                    <div class="content-right">
                                        <p class="mb-0 fw-medium">작성 중인 문서</p>
                                        <span class="text-primary mb-0 display-6">9 개</span>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center gap-2">
                                    <div class="avatar avatar-md">
                                        <div class="avatar-initial bg-label-info rounded">
                                            <i class="mdi mdi-lightbulb-outline mdi-36px"></i>
                                        </div>
                                    </div>
                                    <div class="content-right">
                                        <p class="mb-0 fw-medium">미발송 문서</p>
                                        <span class="text-info mb-0 display-6">7 개</span>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center gap-2">
                                    <div class="avatar avatar-md">
                                        <div class="avatar-initial bg-label-warning rounded">
                                            <i class="mdi mdi-check-decagram-outline mdi-36px"></i>
                                        </div>
                                    </div>
                                    <div class="content-right">
                                        <p class="mb-0 fw-medium">결재 대기 문서</p>
                                        <span class="text-warning mb-0 display-6">2 개</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <!-- 이번 주 현황 -->
                    <!-- 직원 정보  -->
                        <div class="col-12 col-md-4 ps-md-3 ps-lg-5 pt-3 pt-md-0">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="col-6">
                                    <img
                                            class="img-fluid rounded mb-3 mt-4"
                                            src="/img/avatars/10.png"
                                            height="110"
                                            width="110"
                                            alt="User avatar" />
                                </div>
                                <div class="col-12">
                                    <div>
                                        <p> &nbsp;</p>
                                        <h5 class="mb-2"> 김국민 <span class="badge bg-label-success rounded-pill">접속중</span> </h5>
                                        <p class="mb-4"><span class="fw-medium text-heading me-2">담당업무:</span> 문서 작성 <br/> <span class="fw-medium text-heading me-2">이메일: &nbsp;&nbsp;</span>    kimkookmin@kbfg.com <br/> <span class="fw-medium text-heading me-2">내선번호:</span> +1234</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <!-- 직원 정보 끝  -->
                </div>
            </div>
            <!-- 상단 탭  -->

            <div class="row gy-4 mb-4">
                <!-- 다가오는 일정 -->
                <div class="col-lg-6">
                    <div class="card h-100">
                        <div class="card-header">
                            <div class="d-flex justify-content-between">
                                <h5 class="mb-1">다가오는 일정</h5>
                                <div class="dropdown">
                                    <button
                                            class="btn p-0"
                                            type="button"
                                            id="salesOverview"
                                            data-bs-toggle="dropdown"
                                            aria-haspopup="true"
                                            aria-expanded="false">
                                        <i class="mdi mdi-dots-vertical mdi-24px"></i>
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="salesOverview">
                                        <a class="dropdown-item" href="javascript:void(0);">Refresh</a>
                                        <a class="dropdown-item" href="javascript:void(0);">Share</a>
                                        <a class="dropdown-item" href="javascript:void(0);">Update</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-body d-flex justify-content-between flex-wrap gap-3">
                            <ul class="timeline card-timeline mb-0">
                                <li class="timeline-item timeline-item-transparent">
                                    <span class="timeline-point timeline-point-primary"></span>
                                    <div class="timeline-event">
                                        <div class="timeline-header mb-1">
                                            <h6 class="mb-2">'개발직무 양성 프로젝트 보고서' 제출 기한</h6>
                                            <small class="text-muted">12월 15일 18:00</small>
                                        </div>
                                        <div class="d-flex">
                                            <a href="/smc/" target="_blank" class="text-truncate">
                                                <span class="fw-medium">문서 작성하기</span>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li class="timeline-item timeline-item-transparent border-transparent">
                                    <span class="timeline-point timeline-point-warning"></span>
                                    <div class="timeline-event">
                                        <div class="timeline-header mb-1">
                                            <h6 class="mb-2"> 김연아 고객 메일 발송 기한 </h6>
                                            <small class="text-muted">12월 21일 15:00</small>
                                        </div>
                                        <a href="/smc/" target="_blank" class="text-truncate">
                                            <span class="fw-medium">메일 작성하기</span>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <%--<div class="d-flex justify-content-between">
                            <button type="button" class="btn btn-outline-secondary">
                                <span class="tf-icons mdi mdi-calendar-blank-outline me-1"></span>추가
                            </button>
                        </div>--%>
                    </div>
                </div>
                <!-- 다가오는 일정 끝 -->

                <!-- 공지사항 배너 -->
                <div class="col-lg-6">
                    <div
                            class="swiper-container swiper-container-horizontal swiper text-bg-primary"
                            id="swiper-weekly-sales-with-bg">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="row">
                                    <div class="col-12">
                                        <h5 class="text-white mb-2">공지사항</h5>
                                        <img
                                                src="/img/products/bannerimg1.png"
                                                alt="weekly sales"
                                                width="515"
                                                />
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="row">
                                    <div class="col-12">
                                        <h5 class="text-white mb-2">Notice</h5>
                                        <img
                                                src="/img/products/bannerimg2.png"
                                                alt="weekly sales"
                                                width="515"
                                        />
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="row">
                                    <div class="col-12">
                                        <h5 class="text-white mb-2">Notice</h5>
                                        <img
                                                src="/img/products/bannerimg3.png"
                                                alt="weekly sales"
                                                width="515"
                                        />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
                <!-- 넘어가는 배너 끝 -->
            </div>

            <!-- 하단, 카드로 분리된 부분 -->
            <div class="row mb-4 g-4">
                <!-- 본인이 자주 검색하는 주제 순위 -->
                <div class="col-12 col-xl-8">
                    <div class="card h-100">
                        <div class="card-header d-flex align-items-center justify-content-between">
                            <h5 class="card-title m-0 me-2">관심 문서</h5>
                            <div class="dropdown">
                                <button
                                        class="btn p-0"
                                        type="button"
                                        id="topic"
                                        data-bs-toggle="dropdown"
                                        aria-haspopup="true"
                                        aria-expanded="false">
                                    <i class="mdi mdi-dots-vertical mdi-24px"></i>
                                </button>
                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="topic">
                                    <a class="dropdown-item" href="javascript:void(0);">Highest Views</a>
                                    <a class="dropdown-item" href="javascript:void(0);">See All</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-body row g-3">
                            <div class="col-md-6">
                                <div id="horizontalBarChart" class=""></div>
                            </div>
                            <div class="col-md-6 d-flex justify-content-around align-items-center">
                                <div>
                                    <div class="d-flex align-items-baseline">
                                        <span class="text-primary me-2"><i class="mdi mdi-circle mdi-14px"></i></span>
                                        <div>
                                            <p class="mb-1">연수</p>
                                            <h5>35%</h5>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-baseline my-3">
                                        <span class="text-success me-2"><i class="mdi mdi-circle mdi-14px"></i></span>
                                        <div>
                                            <p class="mb-1">인사</p>
                                            <h5>14%</h5>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-baseline">
                                        <span class="text-danger me-2"><i class="mdi mdi-circle mdi-14px"></i></span>
                                        <div>
                                            <p class="mb-1">복지</p>
                                            <h5>10%</h5>
                                        </div>
                                    </div>
                                </div>

                                <div>
                                    <div class="d-flex align-items-baseline">
                                        <span class="text-info me-2"><i class="mdi mdi-circle mdi-14px"></i></span>
                                        <div>
                                            <p class="mb-1">UX Design</p>
                                            <h5>20%</h5>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-baseline my-3">
                                        <span class="text-secondary me-2"><i class="mdi mdi-circle mdi-14px"></i></span>
                                        <div>
                                            <p class="mb-1">Animation</p>
                                            <h5>12%</h5>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-baseline">
                                        <span class="text-warning me-2"><i class="mdi mdi-circle mdi-14px"></i></span>
                                        <div>
                                            <p class="mb-1">SEO</p>
                                            <h5>9%</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 자주 참조하는 문서-->
                <div class="col-12 col-xl-4 col-md-6">
                    <div class="card h-100">
                        <div class="card-header d-flex align-items-center justify-content-between">
                            <div class="card-title mb-0">
                                <h5 class="m-0 me-2">많이 본 문서</h5>
                            </div>
                            <div class="dropdown">
                                <button
                                        class="btn p-0"
                                        type="button"
                                        id="popularInstructors"
                                        data-bs-toggle="dropdown"
                                        aria-haspopup="true"
                                        aria-expanded="false">
                                    <i class="mdi mdi-dots-vertical mdi-24px"></i>
                                </button>
                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="popularInstructors">
                                    <a class="dropdown-item" href="javascript:void(0);">Select All</a>
                                    <a class="dropdown-item" href="javascript:void(0);">Refresh</a>
                                    <a class="dropdown-item" href="javascript:void(0);">Share</a>
                                </div>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-borderless border-top">
                                <thead class="border-bottom">
                                <tr>
                                    <th>문서 제목</th>
                                    <th class="text-end">열람율</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        <div class="d-flex justify-content-start align-items-center mt-lg-4">
                                            <div class="avatar avatar-sm me-3">
                                                <img src="/img/avatars/1.png" alt="Avatar" class="rounded-circle" />
                                            </div>
                                            <div class="d-flex flex-column">
                                                <h6 class="mb-1 text-truncate">「DIGI Campus」 연수 실시</h6>
                                                <small class="text-truncate">인재개발부 123</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-end">
                                        <div class="user-progress mt-lg-4">
                                            <h6 class="mb-0">97%</h6>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="d-flex justify-content-start align-items-center">
                                            <div class="avatar avatar-sm me-3">
                                                <img src="/img/avatars/2.png" alt="Avatar" class="rounded-circle" />
                                            </div>
                                            <div class="d-flex flex-column">
                                                <h6 class="mb-1 text-truncate">「DIGI Campus」 최종 프로젝트..</h6>
                                                <small class="text-truncate">인재개발부 122</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-end">
                                        <div class="user-progress">
                                            <h6 class="mb-0">90%</h6>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="d-flex justify-content-start align-items-center">
                                            <div class="avatar avatar-sm me-3">
                                                <img src="/img/avatars/3.png" alt="Avatar" class="rounded-circle" />
                                            </div>
                                            <div class="d-flex flex-column">
                                                <h6 class="mb-1 text-truncate">「DIGI Campus」 연수 대상자 ..</h6>
                                                <small class="text-truncate">인재개발부 134</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-end">
                                        <div class="user-progress">
                                            <h6 class="mb-0">87%</h6>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="d-flex justify-content-start align-items-center">
                                            <div class="avatar avatar-sm me-3">
                                                <img src="/img/avatars/4.png" alt="Avatar" class="rounded-circle" />
                                            </div>
                                            <div class="d-flex flex-column">
                                                <h6 class="mb-1 text-truncate">「DIGI Campus」 강의 의뢰</h6>
                                                <small class="text-truncate">인재개발부 132</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-end">
                                        <div class="user-progress">
                                            <h6 class="mb-0">84%</h6>
                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!--  하단, 카드로 분리된 부분 끝 -->


        </div>
        <!--/ Content -->
        <div class="content-backdrop fade"></div>
    </div>
    <!--/ Content wrapper -->


<!--/ Layout container -->

<!-- Vendors JS -->
<script src="/vendor/libs/moment/moment.js"></script>
<script src="/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>
<script src="/vendor/libs/apex-charts/apexcharts.js"></script>
<script src="/vendor/libs/fullcalendar/fullcalendar.js"></script>
<script src="/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
<script src="/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
<script src="/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>
<script src="/vendor/libs/select2/select2.js"></script>
<script src="/vendor/libs/flatpickr/flatpickr.js"></script>
<script src="/vendor/libs/moment/moment.js"></script>

<!-- Page JS -->
<script src="/js/app-academy-dashboard.js"></script>
<script src="/js/app-calendar-events.js"></script>
<script src="/js/app-calendar.js"></script>