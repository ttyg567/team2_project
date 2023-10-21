<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


    <!-- Content wrapper -->
    <div class="content-wrapper">
        <!-- Content -->
        <div class="container-xxl flex-grow-1 container-p-y">
            <!-- 상단, 이번주 현황  -->
            <div class="card bg-transparent shadow-none border-0 my-4">
                <div class="card-body row p-0 pb-3">
                    <div class="col-12 col-md-8 card-separator">
                        <h3 class="display-6">안녕하세요, <span class="fw-semibold">사용자명</span> 👋🏻</h3>
                        <div class="col-12 col-lg-7">
                            <p>이번 주 현황</p>
                        </div>
                        <div class="d-flex justify-content-between flex-wrap gap-3 me-5">
                            <div class="d-flex align-items-center gap-3 me-4 me-sm-0">
                                <div class="avatar avatar-md">
                                    <div class="avatar-initial bg-label-primary rounded">
                                        <i class="mdi mdi-laptop mdi-36px"></i>
                                    </div>
                                </div>
                                <div class="content-right">
                                    <p class="mb-0 fw-medium">Hours Spent</p>
                                    <span class="text-primary mb-0 display-6">34h</span>
                                </div>
                            </div>
                            <div class="d-flex align-items-center gap-3">
                                <div class="avatar avatar-md">
                                    <div class="avatar-initial bg-label-info rounded">
                                        <i class="mdi mdi-lightbulb-outline mdi-36px"></i>
                                    </div>
                                </div>
                                <div class="content-right">
                                    <p class="mb-0 fw-medium">Test Results</p>
                                    <span class="text-info mb-0 display-6">82%</span>
                                </div>
                            </div>
                            <div class="d-flex align-items-center gap-3">
                                <div class="avatar avatar-md">
                                    <div class="avatar-initial bg-label-warning rounded">
                                        <i class="mdi mdi-check-decagram-outline mdi-36px"></i>
                                    </div>
                                </div>
                                <div class="content-right">
                                    <p class="mb-0 fw-medium">Course Completed</p>
                                    <span class="text-warning mb-0 display-6">14</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 col-md-4 ps-md-3 ps-lg-5 pt-3 pt-md-0">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <div>
                                    <h5 class="mb-2">Time Spendings</h5>
                                    <p class="mb-4">Weekly report</p>
                                </div>
                                <div class="time-spending-chart">
                                    <h3 class="mb-2">231<span class="text-body">h</span> 14<span class="text-body">m</span></h3>
                                    <span class="badge bg-label-success rounded-pill">+18.4%</span>
                                </div>
                            </div>
                            <div id="leadsReportChart"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 상단, 이번주 현황  -->

            <!-- 하단, 카드로 분리된 부분 -->
            <div class="row mb-4 g-4">
                <!-- 1. 다가오는 일정 -->
                <div class="col-12 col-xl-4 col-md-6">
                    <div class="card h-100">
                        <div class="card-header">
                            <div class="d-flex justify-content-between">
                                <h5 class="mb-1">다가오는 일정</h5>
                                <div class="dropdown">
                                    <button
                                            class="btn p-0"
                                            type="button"
                                            id="timelineDropdown"
                                            data-bs-toggle="dropdown"
                                            aria-haspopup="true"
                                            aria-expanded="false">
                                        <i class="mdi mdi-dots-vertical mdi-24px"></i>
                                    </button>
                                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="timelineDropdown">
                                        <a class="dropdown-item" href="javascript:void(0);">Last 28 Days</a>
                                        <a class="dropdown-item" href="javascript:void(0);">Last Month</a>
                                        <a class="dropdown-item" href="javascript:void(0);">Last Year</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-body pt-4 pb-1">
                            <ul class="timeline card-timeline mb-0">
                                <li class="timeline-item timeline-item-transparent">
                                    <span class="timeline-point timeline-point-primary"></span>
                                    <div class="timeline-event">
                                        <div class="timeline-header mb-1">
                                            <h6 class="mb-2">Create youtube video for next product 😎</h6>
                                            <small class="text-muted">Tomorrow</small>
                                        </div>
                                        <p class="mb-2">Product introduction and details video</p>
                                        <div class="d-flex">
                                            <a href="https://www.youtube.com/@pixinvent1515" target="_blank" class="text-truncate">
                                <span class="badge badge-center rounded-pill bg-danger w-px-20 h-px-20 me-2">
                                  <i class="mdi mdi-play text-white"></i>
                                </span>
                                                <span class="fw-medium">https://www.youtube.com/@pixinvent1515</span>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                                <li class="timeline-item timeline-item-transparent">
                                    <span class="timeline-point timeline-point-info"></span>
                                    <div class="timeline-event">
                                        <div class="timeline-header mb-1">
                                            <h6 class="mb-2">Received payment from usa client 😍</h6>
                                            <small class="text-muted">January, 18</small>
                                        </div>
                                        <p class="mb-2">Received payment $1,490 for banking ios app</p>
                                    </div>
                                </li>
                                <li class="timeline-item timeline-item-transparent border-transparent">
                                    <span class="timeline-point timeline-point-warning"></span>
                                    <div class="timeline-event pb-1">
                                        <div class="timeline-header mb-1">
                                            <h6 class="mb-2">Meeting with joseph morgan for next project</h6>
                                            <small class="text-muted">April, 23</small>
                                        </div>
                                        <p class="mb-2">Meeting Video call on zoom at 9pm</p>
                                        <div class="d-flex">
                                            <a href="javascript:void(0)" class="me-3">
                                                <img
                                                        src="../../assets/img/icons/misc/pdf.png"
                                                        alt="PDF image"
                                                        width="20"
                                                        class="me-2" />
                                                <span class="fw-medium">presentation.pdf</span>
                                            </a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="card-body">
                            <div class="d-flex justify-content-center">
                                <button type="button" class="btn btn-outline-secondary">
                                    <span class="tf-icons mdi mdi-calendar-blank-outline me-1"></span>일정 추가
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 2. 과제 진척도-->
                <div class="col-12 col-xl-4 col-md-6">
                    <div class="card h-100">
                        <div class="card-header d-flex align-items-center justify-content-between">
                            <h5 class="card-title m-0 me-2">업무 진척도</h5>
                            <div class="dropdown">
                                <button
                                        class="btn p-0"
                                        type="button"
                                        id="assignProgress"
                                        data-bs-toggle="dropdown"
                                        aria-haspopup="true"
                                        aria-expanded="false">
                                    <i class="mdi mdi-dots-vertical mdi-24px"></i>
                                </button>
                                <div class="dropdown-menu dropdown-menu-end" aria-labelledby="assignProgress">
                                    <a class="dropdown-item" href="javascript:void(0);">Refresh</a>
                                    <a class="dropdown-item" href="javascript:void(0);">Download</a>
                                    <a class="dropdown-item" href="javascript:void(0);">View All</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <ul class="p-0 m-0">
                                <li class="d-flex mb-3 pb-1">
                                    <div
                                            class="chart-progress me-3"
                                            data-color="primary"
                                            data-series="72"
                                            data-progress_variant="true"></div>
                                    <div class="row w-100 align-items-center">
                                        <div class="col-9">
                                            <div class="me-2">
                                                <h6 class="mb-2">User experience Design</h6>
                                                <p class="mb-0">120 Tasks</p>
                                            </div>
                                        </div>
                                        <div class="col-3 text-end">
                                            <button type="button" class="btn btn-sm btn-icon bg-lightest">
                                                <i class="mdi mdi-chevron-right scaleX-n1-rtl"></i>
                                            </button>
                                        </div>
                                    </div>
                                </li>
                                <li class="d-flex mb-3 pb-1">
                                    <div
                                            class="chart-progress me-3"
                                            data-color="success"
                                            data-series="48"
                                            data-progress_variant="true"></div>
                                    <div class="row w-100 align-items-center">
                                        <div class="col-9">
                                            <div class="me-2">
                                                <h6 class="mb-2">Basic fundamentals</h6>
                                                <p class="mb-0">32 Tasks</p>
                                            </div>
                                        </div>
                                        <div class="col-3 text-end">
                                            <button type="button" class="btn btn-sm btn-icon bg-lightest">
                                                <i class="mdi mdi-chevron-right scaleX-n1-rtl"></i>
                                            </button>
                                        </div>
                                    </div>
                                </li>
                                <li class="d-flex mb-3 pb-1">
                                    <div
                                            class="chart-progress me-3"
                                            data-color="danger"
                                            data-series="15"
                                            data-progress_variant="true"></div>
                                    <div class="row w-100 align-items-center">
                                        <div class="col-9">
                                            <div class="me-2">
                                                <h6 class="mb-2">React native components</h6>
                                                <p class="mb-0">182 Tasks</p>
                                            </div>
                                        </div>
                                        <div class="col-3 text-end">
                                            <button type="button" class="btn btn-sm btn-icon bg-lightest">
                                                <i class="mdi mdi-chevron-right scaleX-n1-rtl"></i>
                                            </button>
                                        </div>
                                    </div>
                                </li>
                                <li class="d-flex">
                                    <div
                                            class="chart-progress me-3"
                                            data-color="info"
                                            data-series="24"
                                            data-progress_variant="true"></div>
                                    <div class="row w-100 align-items-center">
                                        <div class="col-9">
                                            <div class="me-2">
                                                <h6 class="mb-2">Basic of music theory</h6>
                                                <p class="mb-0">56 Tasks</p>
                                            </div>
                                        </div>
                                        <div class="col-3 text-end">
                                            <button type="button" class="btn btn-sm btn-icon bg-lightest">
                                                <i class="mdi mdi-chevron-right scaleX-n1-rtl"></i>
                                            </button>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- 3. 유저 카드 -->
                <div class="col-12 col-xl-4 col-md-6">
                    <div class="card h-100">
                        <div class="card-body">
                            <div class="user-avatar-section">
                                <div class="d-flex align-items-center flex-column">
                                    <img
                                            class="img-fluid rounded mb-3 mt-4"
                                            src="/img/avatars/10.png"
                                            height="120"
                                            width="120"
                                            alt="User avatar" />
                                    <div class="user-info text-center">
                                        <h4>Violet Mendoza</h4>
                                        <span class="badge bg-label-danger rounded-pill">Author</span>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex justify-content-between flex-wrap my-2 py-3">
                                <div class="d-flex align-items-center me-4 mt-3 gap-3">
                                    <div class="avatar">
                                        <div class="avatar-initial bg-label-primary rounded">
                                            <i class="mdi mdi-check mdi-24px"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <h4 class="mb-0">1.23k</h4>
                                        <span>Tasks Done</span>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center mt-3 gap-3">
                                    <div class="avatar">
                                        <div class="avatar-initial bg-label-primary rounded">
                                            <i class="mdi mdi-star-outline mdi-24px"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <h4 class="mb-0">568</h4>
                                        <span>Projects Done</span>
                                    </div>
                                </div>
                            </div>
                            <h5 class="pb-3 border-bottom mb-3">Details</h5>
                            <div class="info-container">
                                <ul class="list-unstyled mb-4">
                                    <li class="mb-3">
                                        <span class="fw-medium text-heading me-2">Username:</span>
                                        <span>violet.dev</span>
                                    </li>
                                    <li class="mb-3">
                                        <span class="fw-medium text-heading me-2">Email:</span>
                                        <span>vafgot@vultukir.org</span>
                                    </li>
                                    <li class="mb-3">
                                        <span class="fw-medium text-heading me-2">Status:</span>
                                        <span class="badge bg-label-success rounded-pill">Active</span>
                                    </li>
                                    <li class="mb-3">
                                        <span class="fw-medium text-heading me-2">Role:</span>
                                        <span>Author</span>
                                    </li>
                                    <li class="mb-3">
                                        <span class="fw-medium text-heading me-2">Contact:</span>
                                        <span>(123) 456-7890</span>
                                    </li>
                                </ul>
                                <div class="d-flex justify-content-center">

                                </div>
                        </div>
                        </div>
                    </div>
                </div>
                <!-- 4. 본인이 자주 검색하는 주제 순위 -->
                <div class="col-12 col-xl-8">
                    <div class="card h-100">
                        <div class="card-header d-flex align-items-center justify-content-between">
                            <h5 class="card-title m-0 me-2">내가 관심 있는 주제</h5>
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
                                            <p class="mb-1">UI Design</p>
                                            <h5>35%</h5>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-baseline my-3">
                                        <span class="text-success me-2"><i class="mdi mdi-circle mdi-14px"></i></span>
                                        <div>
                                            <p class="mb-1">Music</p>
                                            <h5>14%</h5>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-baseline">
                                        <span class="text-danger me-2"><i class="mdi mdi-circle mdi-14px"></i></span>
                                        <div>
                                            <p class="mb-1">React</p>
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
                <!-- 5. 자주 참조하는 문서-->
                <div class="col-12 col-xl-4 col-md-6">
                    <div class="card h-100">
                        <div class="card-header d-flex align-items-center justify-content-between">
                            <div class="card-title mb-0">
                                <h5 class="m-0 me-2">자주 참조되는 문서</h5>
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
                                    <th>Instructors</th>
                                    <th class="text-end">courses</th>
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
                                                <h6 class="mb-1 text-truncate">Maven Analytics</h6>
                                                <small class="text-truncate">Business Intelligence</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-end">
                                        <div class="user-progress mt-lg-4">
                                            <h6 class="mb-0">33</h6>
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
                                                <h6 class="mb-1 text-truncate">Zsazsa McCleverty</h6>
                                                <small class="text-truncate">Digital Marketing</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-end">
                                        <div class="user-progress">
                                            <h6 class="mb-0">52</h6>
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
                                                <h6 class="mb-1 text-truncate">Nathan Wagner</h6>
                                                <small class="text-truncate">UI/UX Design</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-end">
                                        <div class="user-progress">
                                            <h6 class="mb-0">12</h6>
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
                                                <h6 class="mb-1 text-truncate">Emma Bowen</h6>
                                                <small class="text-truncate">React Native</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-end">
                                        <div class="user-progress">
                                            <h6 class="mb-0">8</h6>
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