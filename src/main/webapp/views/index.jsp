<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--JSTL : 통화 날짜를 표현하게 해주는 문법--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>

<html
        lang="en"
        class="light-style layout-navbar-fixed layout-menu-fixed layout-compact"
        dir="ltr"
        data-theme="theme-default"
        data-assets-path="/"
        data-template="vertical-menu-template-no-customizer">
<head>
    <meta charset="utf-8"/>
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"/>

    <title>Dashboard - Analytics | Materialize - Material Design HTML Admin Template</title>

    <meta name="description" content=""/>

    <%--jquery--%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="/img/favicon/favicon.ico"/>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com"/>
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin/>
    <link
            href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&ampdisplay=swap"
            rel="stylesheet"/>

    <!-- Icons -->
    <link rel="stylesheet" href="/vendor/fonts/materialdesignicons.css"/>
    <link rel="stylesheet" href="/vendor/fonts/fontawesome.css"/>
    <link rel="stylesheet" href="/vendor/fonts/flag-icons.css"/>

    <!-- Menu waves for no-customizer fix -->
    <link rel="stylesheet" href="/vendor/libs/node-waves/node-waves.css"/>

    <!-- Core CSS -->
    <link rel="stylesheet" href="/vendor/css/rtl/core.css"/>
    <link rel="stylesheet" href="/vendor/css/rtl/theme-default.css"/>
    <link rel="stylesheet" href="/css/demo.css"/>

    <!-- Core CSS -->
    <link rel="stylesheet" href="/vendor/css/rtl/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="/vendor/css/rtl/theme-default.css" class="template-customizer-theme-css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="/vendor/libs/perfect-scrollbar/perfect-scrollbar.css"/>
    <link rel="stylesheet" href="/vendor/libs/typeahead-js/typeahead.css"/>
    <link rel="stylesheet" href="/vendor/libs/apex-charts/apex-charts.css"/>
    <link rel="stylesheet" href="/vendor/libs/swiper/swiper.css"/>
    <link rel="stylesheet" href="/vendor/libs/datatables-bs5/datatables.bootstrap5.css" />
    <link rel="stylesheet" href="/vendor/libs/datatables-responsive-bs5/responsive.bootstrap5.css" />
    <link rel="stylesheet" href="/vendor/libs/datatables-buttons-bs5/buttons.bootstrap5.css" />
    <link rel="stylesheet" href="/vendor/libs/datatables-checkboxes-jquery/datatables.checkboxes.css" />
    <link rel="stylesheet" href="/vendor/libs/fullcalendar/fullcalendar.css" />
    <link rel="stylesheet" href="/vendor/libs/flatpickr/flatpickr.css" />
    <link rel="stylesheet" href="/vendor/libs/select2/select2.css" />
    <link rel="stylesheet" href="/vendor/libs/quill/editor.css" />
    <link rel="stylesheet" href="/vendor/libs/@form-validation/umd/styles/index.min.css" />
    <link rel="stylesheet" href="/vendor/libs/apex-charts/apex-charts.css" />
    <link rel="stylesheet" href="/vendor/libs/bootstrap-maxlength/bootstrap-maxlength.css" />

    <!-- Page CSS -->
    <link rel="stylesheet" href="/vendor/css/pages/cards-statistics.css"/>
    <link rel="stylesheet" href="/vendor/css/pages/cards-analytics.css"/>
    <link rel="stylesheet" href="/vendor/css/pages/app-calendar.css" />
    <link rel="stylesheet" href="/vendor/css/pages/cards-statistics.css" />
    <link rel="stylesheet" href="/vendor/css/pages/app-chat.css" />

    <!-- Login Page -->
    <link rel="stylesheet" href="/vendor/css/pages/page-auth.css" />

    <!-- Helpers -->
    <script src="/vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="/js/config.js"></script>

</head>

<body>
<!-- Layout wrapper -->
<div class="layout-wrapper layout-content-navbar">
    <div class="layout-container">
        <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
            <div class="app-brand demo">
                <a href="/" class="app-brand-link">
              <span class="app-brand-logo demo">
                <span style="color: var(--bs-primary)">
                  <svg width="268" height="150" viewBox="0 0 38 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path
                            d="M30.0944 2.22569C29.0511 0.444187 26.7508 -0.172113 24.9566 0.849138C23.1623 1.87039 22.5536 4.14247 23.5969 5.92397L30.5368 17.7743C31.5801 19.5558 33.8804 20.1721 35.6746 19.1509C37.4689 18.1296 38.0776 15.8575 37.0343 14.076L30.0944 2.22569Z"
                            fill="currentColor"/>
                    <path
                            d="M30.171 2.22569C29.1277 0.444187 26.8274 -0.172113 25.0332 0.849138C23.2389 1.87039 22.6302 4.14247 23.6735 5.92397L30.6134 17.7743C31.6567 19.5558 33.957 20.1721 35.7512 19.1509C37.5455 18.1296 38.1542 15.8575 37.1109 14.076L30.171 2.22569Z"
                            fill="url(#paint0_linear_2989_100980)"
                            fill-opacity="0.4"/>
                    <path
                            d="M22.9676 2.22569C24.0109 0.444187 26.3112 -0.172113 28.1054 0.849138C29.8996 1.87039 30.5084 4.14247 29.4651 5.92397L22.5251 17.7743C21.4818 19.5558 19.1816 20.1721 17.3873 19.1509C15.5931 18.1296 14.9843 15.8575 16.0276 14.076L22.9676 2.22569Z"
                            fill="currentColor"/>
                    <path
                            d="M14.9558 2.22569C13.9125 0.444187 11.6122 -0.172113 9.818 0.849138C8.02377 1.87039 7.41502 4.14247 8.45833 5.92397L15.3983 17.7743C16.4416 19.5558 18.7418 20.1721 20.5361 19.1509C22.3303 18.1296 22.9391 15.8575 21.8958 14.076L14.9558 2.22569Z"
                            fill="currentColor"/>
                    <path
                            d="M14.9558 2.22569C13.9125 0.444187 11.6122 -0.172113 9.818 0.849138C8.02377 1.87039 7.41502 4.14247 8.45833 5.92397L15.3983 17.7743C16.4416 19.5558 18.7418 20.1721 20.5361 19.1509C22.3303 18.1296 22.9391 15.8575 21.8958 14.076L14.9558 2.22569Z"
                            fill="url(#paint1_linear_2989_100980)"
                            fill-opacity="0.4"/>
                    <path
                            d="M7.82901 2.22569C8.87231 0.444187 11.1726 -0.172113 12.9668 0.849138C14.7611 1.87039 15.3698 4.14247 14.3265 5.92397L7.38656 17.7743C6.34325 19.5558 4.04298 20.1721 2.24875 19.1509C0.454514 18.1296 -0.154233 15.8575 0.88907 14.076L7.82901 2.22569Z"
                            fill="currentColor"/>
                    <defs>
                      <linearGradient
                              id="paint0_linear_2989_100980"
                              x1="5.36642"
                              y1="0.849138"
                              x2="10.532"
                              y2="24.104"
                              gradientUnits="userSpaceOnUse">
                        <stop offset="0" stop-opacity="1"/>
                        <stop offset="1" stop-opacity="0"/>
                      </linearGradient>
                      <linearGradient
                              id="paint1_linear_2989_100980"
                              x1="5.19475"
                              y1="0.849139"
                              x2="10.3357"
                              y2="24.1155"
                              gradientUnits="userSpaceOnUse">
                        <stop offset="0" stop-opacity="1"/>
                        <stop offset="1" stop-opacity="0"/>
                      </linearGradient>
                    </defs>
                  </svg>
                </span>
              </span>
                    <span class="app-brand-text demo menu-text fw-bold ms-2">The Doc</span>
                </a>

                <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto">
                    <svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path
                                d="M11.4854 4.88844C11.0081 4.41121 10.2344 4.41121 9.75715 4.88844L4.51028 10.1353C4.03297 10.6126 4.03297 11.3865 4.51028 11.8638L9.75715 17.1107C10.2344 17.5879 11.0081 17.5879 11.4854 17.1107C11.9626 16.6334 11.9626 15.8597 11.4854 15.3824L7.96672 11.8638C7.48942 11.3865 7.48942 10.6126 7.96672 10.1353L11.4854 6.61667C11.9626 6.13943 11.9626 5.36568 11.4854 4.88844Z"
                                fill="currentColor"
                                fill-opacity="0.6"/>
                        <path
                                d="M15.8683 4.88844L10.6214 10.1353C10.1441 10.6126 10.1441 11.3865 10.6214 11.8638L15.8683 17.1107C16.3455 17.5879 17.1192 17.5879 17.5965 17.1107C18.0737 16.6334 18.0737 15.8597 17.5965 15.3824L14.0778 11.8638C13.6005 11.3865 13.6005 10.6126 14.0778 10.1353L17.5965 6.61667C18.0737 6.13943 18.0737 5.36568 17.5965 4.88844C17.1192 4.41121 16.3455 4.41121 15.8683 4.88844Z"
                                fill="currentColor"
                                fill-opacity="0.38"/>
                    </svg>
                </a>
            </div>

            <div class="menu-inner-shadow"></div>

            <ul class="menu-inner py-1">
                <!-- 나의 문서함 -->
                <li class="menu-item">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons mdi mdi-home-outline"></i>
                        <div data-i18n="나의 문서함">Dashboards</div>
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="app-ecommerce-dashboard.html" class="menu-link">
                                <div data-i18n="작성 중인 문서">작성 중인 문서</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="dashboards-crm.html" class="menu-link">
                                <div data-i18n="나의 문서">CRM</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="index.html" class="menu-link">
                                <div data-i18n="결재 진행 중인 문서">Analytics</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="app-logistics-dashboard.html" class="menu-link">
                                <div data-i18n="즐겨찾기한 문서">Logistics</div>
                            </a>
                        </li>
                    </ul>
                </li>

                <!-- 문서작성 시작하기 -->
                <li class="menu-item">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons mdi mdi-window-maximize"></i>
                        <div data-i18n="문서작성 시작하기">문서작성 시작하기</div>
                    </a>

                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="/gptmakeimage" class="menu-link">
                                <div data-i18n="이미지 만들기">Collapsed menu</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="/" class="menu-link">
                                <div data-i18n="계약서 만들기">Content navbar</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="/letter" class="menu-link">
                                <div data-i18n="고객 이메일 작성하기">Content nav + Sidebar</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="/smc/" class="menu-link" target="_blank">
                                <div data-i18n="품의문 작성하기">Horizontal</div>
                            </a>
                        </li>
                    </ul>
                </li>
                <!-- 문서작성 시작하기 끝 -->

                <!-- 수신문서함 -->
                <li class="menu-item">
                    <a href="/" class="menu-link">
                        <i class="menu-icon tf-icons mdi mdi-file-document-outline"></i>
                        <div data-i18n="수신문서함"></div>
                    </a>
                </li>

                <!-- Apps & Pages -->
                <li class="menu-header fw-medium mt-4">
                    <span class="menu-header-text">주요 메뉴 바로가기</span>
                </li>
                <li class="menu-item">
                    <a href="/gptmakeimage" class="menu-link">
                        <i class="menu-icon tf-icons mdi mdi-email-outline"></i>
                        <div data-i18n="권현진(이미지생성)">권현진(이미지생성)</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="/app-chat" class="menu-link">
                        <i class="menu-icon tf-icons mdi mdi-email-outline"></i>
                        <div data-i18n="권현진(계약서작성)">권현진(계약서작성)</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="/app-calendar" class="menu-link">
                        <i class="menu-icon tf-icons mdi mdi-email-outline"></i>
                        <div data-i18n="스케쥴관리">스케쥴관리</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="/letter" class="menu-link">
                        <i class="menu-icon tf-icons mdi mdi-message-outline"></i>
                        <div data-i18n="박효선">박효선</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="app-calendar.html" class="menu-link">
                        <i class="menu-icon tf-icons mdi mdi-calendar-blank-outline"></i>
                        <div data-i18n="오지예">오지예</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a href="/smc/" class="menu-link">
                        <i class="menu-icon tf-icons mdi mdi-view-grid-outline"></i>
                        <div data-i18n="서민철">서민철</div>
                    </a>
                </li>


                <!-- 지원 -->
                <li class="menu-header fw-medium mt-4">
                    <span class="menu-header-text">지원</span>
                </li>
                <li class="menu-item">
                    <a href="https://pixinvent.ticksy.com/" target="_blank" class="menu-link">
                        <i class="menu-icon tf-icons mdi mdi-lifebuoy"></i>
                        <div data-i18n="서비스 지원">서비스 지원</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a
                            href="https://demos.pixinvent.com/materialize-html-admin-template/documentation/"
                            target="_blank"
                            class="menu-link">
                        <i class="menu-icon tf-icons mdi mdi-file-document-multiple-outline"></i>
                        <div data-i18n="질의 응답">Documentation</div>
                    </a>
                </li>
            </ul>
        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
            <!-- Navbar -->

            <nav
                    class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
                    id="layout-navbar">
                <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
                    <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                        <i class="mdi mdi-menu mdi-24px"></i>
                    </a>
                </div>

                <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
                    <!-- Search -->
                    <div class="navbar-nav align-items-center">
                        <div class="nav-item navbar-search-wrapper mb-0">
                            <a class="nav-item nav-link search-toggler fw-normal px-0" href="javascript:void(0);">
                                <i class="mdi mdi-magnify mdi-24px scaleX-n1-rtl"></i>
                                <span class="d-none d-md-inline-block text-muted">Search (Ctrl+/)</span>
                            </a>
                        </div>
                    </div>
                    <!-- /Search -->

                    <ul class="navbar-nav flex-row align-items-center ms-auto">
                        <!-- Language -->
                        <li class="nav-item dropdown-language dropdown me-1 me-xl-0">
                            <a
                                    class="nav-link btn btn-text-secondary rounded-pill btn-icon dropdown-toggle hide-arrow"
                                    href="javascript:void(0);"
                                    data-bs-toggle="dropdown">
                                <i class="mdi mdi-translate mdi-24px"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end">
                                <li>
                                    <a class="dropdown-item" href="javascript:void(0);" data-language="en">
                                        <span class="align-middle">English</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="javascript:void(0);" data-language="fr">
                                        <span class="align-middle">French</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="javascript:void(0);" data-language="de">
                                        <span class="align-middle">German</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="javascript:void(0);" data-language="pt">
                                        <span class="align-middle">Portuguese</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!--/ Language -->

                        <!-- Quick links  -->
                        <li class="nav-item dropdown-shortcuts navbar-dropdown dropdown me-1 me-xl-0">
                            <a
                                    class="nav-link btn btn-text-secondary rounded-pill btn-icon dropdown-toggle hide-arrow"
                                    href="javascript:void(0);"
                                    data-bs-toggle="dropdown"
                                    data-bs-auto-close="outside"
                                    aria-expanded="false">
                                <i class="mdi mdi-view-grid-plus-outline mdi-24px"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-end py-0">
                                <div class="dropdown-menu-header border-bottom">
                                    <div class="dropdown-header d-flex align-items-center py-3">
                                        <h5 class="text-body mb-0 me-auto">Shortcuts</h5>
                                        <a
                                                href="javascript:void(0)"
                                                class="dropdown-shortcuts-add text-muted"
                                                data-bs-toggle="tooltip"
                                                data-bs-placement="top"
                                                title="Add shortcuts"
                                        ><i class="mdi mdi-view-grid-plus-outline mdi-24px"></i
                                        ></a>
                                    </div>
                                </div>
                                <div class="dropdown-shortcuts-list scrollable-container">
                                    <div class="row row-bordered overflow-visible g-0">
                                        <div class="dropdown-shortcuts-item col">
                          <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                            <i class="mdi mdi-calendar fs-4"></i>
                          </span>
                                            <a href="app-calendar.html" class="stretched-link">Calendar</a>
                                            <small class="text-muted mb-0">Appointments</small>
                                        </div>
                                        <div class="dropdown-shortcuts-item col">
                          <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                            <i class="mdi mdi-file-document-outline fs-4"></i>
                          </span>
                                            <a href="app-invoice-list.html" class="stretched-link">Invoice App</a>
                                            <small class="text-muted mb-0">Manage Accounts</small>
                                        </div>
                                    </div>
                                    <div class="row row-bordered overflow-visible g-0">
                                        <div class="dropdown-shortcuts-item col">
                          <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                            <i class="mdi mdi-account-outline fs-4"></i>
                          </span>
                                            <a href="app-user-list.html" class="stretched-link">User App</a>
                                            <small class="text-muted mb-0">Manage Users</small>
                                        </div>
                                        <div class="dropdown-shortcuts-item col">
                          <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                            <i class="mdi mdi-shield-check-outline fs-4"></i>
                          </span>
                                            <a href="app-access-roles.html" class="stretched-link">Role Management</a>
                                            <small class="text-muted mb-0">Permission</small>
                                        </div>
                                    </div>
                                    <div class="row row-bordered overflow-visible g-0">
                                        <div class="dropdown-shortcuts-item col">
                          <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                            <i class="mdi mdi-chart-pie-outline fs-4"></i>
                          </span>
                                            <a href="index.html" class="stretched-link">Dashboard</a>
                                            <small class="text-muted mb-0">Analytics</small>
                                        </div>
                                        <div class="dropdown-shortcuts-item col">
                          <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                            <i class="mdi mdi-cog-outline fs-4"></i>
                          </span>
                                            <a href="pages-account-settings-account.html"
                                               class="stretched-link">Setting</a>
                                            <small class="text-muted mb-0">Account Settings</small>
                                        </div>
                                    </div>
                                    <div class="row row-bordered overflow-visible g-0">
                                        <div class="dropdown-shortcuts-item col">
                          <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                            <i class="mdi mdi-help-circle-outline fs-4"></i>
                          </span>
                                            <a href="pages-faq.html" class="stretched-link">FAQs</a>
                                            <small class="text-muted mb-0">FAQs & Articles</small>
                                        </div>
                                        <div class="dropdown-shortcuts-item col">
                          <span class="dropdown-shortcuts-icon bg-label-secondary rounded-circle mb-2">
                            <i class="mdi mdi-dock-window fs-4"></i>
                          </span>
                                            <a href="modal-examples.html" class="stretched-link">Modals</a>
                                            <small class="text-muted mb-0">Useful Popups</small>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <!-- Quick links -->

                        <!-- Notification -->
                        <li class="nav-item dropdown-notifications navbar-dropdown dropdown me-2 me-xl-1">
                            <a
                                    class="nav-link btn btn-text-secondary rounded-pill btn-icon dropdown-toggle hide-arrow"
                                    href="javascript:void(0);"
                                    data-bs-toggle="dropdown"
                                    data-bs-auto-close="outside"
                                    aria-expanded="false">
                                <i class="mdi mdi-bell-outline mdi-24px"></i>
                                <span
                                        class="position-absolute top-0 start-50 translate-middle-y badge badge-dot bg-danger mt-2 border"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end py-0">
                                <li class="dropdown-menu-header border-bottom">
                                    <div class="dropdown-header d-flex align-items-center py-3">
                                        <h6 class="mb-0 me-auto">Notification</h6>
                                        <span class="badge rounded-pill bg-label-primary">8 New</span>
                                    </div>
                                </li>
                                <li class="dropdown-notifications-list scrollable-container">
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item list-group-item-action dropdown-notifications-item">
                                            <div class="d-flex gap-2">
                                                <div class="flex-shrink-0">
                                                    <div class="avatar me-1">
                                                        <img src="/img/avatars/1.png" alt
                                                             class="w-px-40 h-auto rounded-circle"/>
                                                    </div>
                                                </div>
                                                <div class="d-flex flex-column flex-grow-1 overflow-hidden w-px-200">
                                                    <h6 class="mb-1 text-truncate">Congratulation Lettie 🎉</h6>
                                                    <small class="text-truncate text-body">Won the monthly best seller
                                                        gold badge</small>
                                                </div>
                                                <div class="flex-shrink-0 dropdown-notifications-actions">
                                                    <small class="text-muted">1h ago</small>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="list-group-item list-group-item-action dropdown-notifications-item">
                                            <div class="d-flex gap-2">
                                                <div class="flex-shrink-0">
                                                    <div class="avatar me-1">
                                                        <span class="avatar-initial rounded-circle bg-label-danger">CF</span>
                                                    </div>
                                                </div>
                                                <div class="d-flex flex-column flex-grow-1 overflow-hidden w-px-200">
                                                    <h6 class="mb-1 text-truncate">Charles Franklin</h6>
                                                    <small class="text-truncate text-body">Accepted your
                                                        connection</small>
                                                </div>
                                                <div class="flex-shrink-0 dropdown-notifications-actions">
                                                    <small class="text-muted">12hr ago</small>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                                            <div class="d-flex gap-2">
                                                <div class="flex-shrink-0">
                                                    <div class="avatar me-1">
                                                        <img src="/img/avatars/2.png" alt
                                                             class="w-px-40 h-auto rounded-circle"/>
                                                    </div>
                                                </div>
                                                <div class="d-flex flex-column flex-grow-1 overflow-hidden w-px-200">
                                                    <h6 class="mb-1 text-truncate">New Message ✉️</h6>
                                                    <small class="text-truncate text-body">You have new message from
                                                        Natalie</small>
                                                </div>
                                                <div class="flex-shrink-0 dropdown-notifications-actions">
                                                    <small class="text-muted">1h ago</small>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="list-group-item list-group-item-action dropdown-notifications-item">
                                            <div class="d-flex gap-2">
                                                <div class="flex-shrink-0">
                                                    <div class="avatar me-1">
                                <span class="avatar-initial rounded-circle bg-label-success"
                                ><i class="mdi mdi-cart-outline"></i
                                ></span>
                                                    </div>
                                                </div>
                                                <div class="d-flex flex-column flex-grow-1 overflow-hidden w-px-200">
                                                    <h6 class="mb-1 text-truncate">Whoo! You have new order 🛒</h6>
                                                    <small class="text-truncate text-body">ACME Inc. made new order
                                                        $1,154</small>
                                                </div>
                                                <div class="flex-shrink-0 dropdown-notifications-actions">
                                                    <small class="text-muted">1 day ago</small>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                                            <div class="d-flex gap-2">
                                                <div class="flex-shrink-0">
                                                    <div class="avatar me-1">
                                                        <img src="/img/avatars/9.png" alt
                                                             class="w-px-40 h-auto rounded-circle"/>
                                                    </div>
                                                </div>
                                                <div class="d-flex flex-column flex-grow-1 overflow-hidden w-px-200">
                                                    <h6 class="mb-1 text-truncate">Application has been approved 🚀</h6>
                                                    <small class="text-truncate text-body"
                                                    >Your ABC project application has been approved.</small
                                                    >
                                                </div>
                                                <div class="flex-shrink-0 dropdown-notifications-actions">
                                                    <small class="text-muted">2 days ago</small>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                                            <div class="d-flex gap-2">
                                                <div class="flex-shrink-0">
                                                    <div class="avatar me-1">
                                <span class="avatar-initial rounded-circle bg-label-success"
                                ><i class="mdi mdi-chart-pie-outline"></i
                                ></span>
                                                    </div>
                                                </div>
                                                <div class="d-flex flex-column flex-grow-1 overflow-hidden w-px-200">
                                                    <h6 class="mb-1 text-truncate">Monthly report is generated</h6>
                                                    <small class="text-truncate text-body">July monthly financial report
                                                        is generated </small>
                                                </div>
                                                <div class="flex-shrink-0 dropdown-notifications-actions">
                                                    <small class="text-muted">3 days ago</small>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                                            <div class="d-flex gap-2">
                                                <div class="flex-shrink-0">
                                                    <div class="avatar me-1">
                                                        <img src="/img/avatars/5.png" alt
                                                             class="w-px-40 h-auto rounded-circle"/>
                                                    </div>
                                                </div>
                                                <div class="d-flex flex-column flex-grow-1 overflow-hidden w-px-200">
                                                    <h6 class="mb-1 text-truncate">Send connection request</h6>
                                                    <small class="text-truncate text-body">Peter sent you connection
                                                        request</small>
                                                </div>
                                                <div class="flex-shrink-0 dropdown-notifications-actions">
                                                    <small class="text-muted">4 days ago</small>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="list-group-item list-group-item-action dropdown-notifications-item">
                                            <div class="d-flex gap-2">
                                                <div class="flex-shrink-0">
                                                    <div class="avatar me-1">
                                                        <img src="/img/avatars/6.png" alt
                                                             class="w-px-40 h-auto rounded-circle"/>
                                                    </div>
                                                </div>
                                                <div class="d-flex flex-column flex-grow-1 overflow-hidden w-px-200">
                                                    <h6 class="mb-1 text-truncate">New message from Jane</h6>
                                                    <small class="text-truncate text-body">Your have new message from
                                                        Jane</small>
                                                </div>
                                                <div class="flex-shrink-0 dropdown-notifications-actions">
                                                    <small class="text-muted">5 days ago</small>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="list-group-item list-group-item-action dropdown-notifications-item marked-as-read">
                                            <div class="d-flex gap-2">
                                                <div class="flex-shrink-0">
                                                    <div class="avatar me-1">
                                <span class="avatar-initial rounded-circle bg-label-warning"
                                ><i class="mdi mdi-alert-circle-outline"></i
                                ></span>
                                                    </div>
                                                </div>
                                                <div class="d-flex flex-column flex-grow-1 overflow-hidden w-px-200">
                                                    <h6 class="mb-1">CPU is running high</h6>
                                                    <small class="text-truncate text-body"
                                                    >CPU Utilization Percent is currently at 88.63%,</small
                                                    >
                                                </div>
                                                <div class="flex-shrink-0 dropdown-notifications-actions">
                                                    <small class="text-muted">5 days ago</small>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dropdown-menu-footer border-top p-2">
                                    <a href="javascript:void(0);" class="btn btn-primary d-flex justify-content-center">
                                        View all notifications
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!--/ Notification -->

                        <!-- User -->
                        <li class="nav-item navbar-dropdown dropdown-user dropdown">
                            <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);"
                               data-bs-toggle="dropdown">
                                <div class="avatar avatar-online">
                                    <img src="/img/avatars/1.png" alt class="w-px-40 h-auto rounded-circle"/>
                                </div>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end">
                                <li>
                                    <a class="dropdown-item" href="pages-account-settings-account.html">
                                        <div class="d-flex">
                                            <div class="flex-shrink-0 me-3">
                                                <div class="avatar avatar-online">
                                                    <img src="/img/avatars/1.png" alt
                                                         class="w-px-40 h-auto rounded-circle"/>
                                                </div>
                                            </div>
                                            <div class="flex-grow-1">
                                                <span class="fw-medium d-block">John Doe</span>
                                                <small class="text-muted">Admin</small>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <div class="dropdown-divider"></div>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="pages-profile-user.html">
                                        <i class="mdi mdi-account-outline me-2"></i>
                                        <span class="align-middle">My Profile</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="pages-account-settings-account.html">
                                        <i class="mdi mdi-cog-outline me-2"></i>
                                        <span class="align-middle">Settings</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="pages-account-settings-billing.html">
                        <span class="d-flex align-items-center align-middle">
                          <i class="flex-shrink-0 mdi mdi-credit-card-outline me-2"></i>
                          <span class="flex-grow-1 align-middle">Billing</span>
                          <span class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <div class="dropdown-divider"></div>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="pages-faq.html">
                                        <i class="mdi mdi-help-circle-outline me-2"></i>
                                        <span class="align-middle">FAQ</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="pages-pricing.html">
                                        <i class="mdi mdi-currency-usd me-2"></i>
                                        <span class="align-middle">Pricing</span>
                                    </a>
                                </li>
                                <li>
                                    <div class="dropdown-divider"></div>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="auth-login-cover.html" target="_blank">
                                        <i class="mdi mdi-logout me-2"></i>
                                        <span class="align-middle">Log Out</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!--/ User -->
                    </ul>
                </div>

                <!-- Search Small Screens -->
                <div class="navbar-search-wrapper search-input-wrapper d-none">
                    <input
                            type="text"
                            class="form-control search-input container-xxl border-0"
                            placeholder="Search..."
                            aria-label="Search..."/>
                    <i class="mdi mdi-close search-toggler cursor-pointer"></i>
                </div>
            </nav>

            <!-- / Navbar -->

            <!-- center.jsp -->
            <c:choose>
                <c:when test="${center == null}">
                    <jsp:include page="center2.jsp"/>
                </c:when>
                <c:otherwise>
                    <jsp:include page="${center}.jsp"/>
                </c:otherwise>
            </c:choose>
        </div>
        <!-- / Layout page -->
    </div>

    <!-- Overlay -->
    <div class="layout-overlay layout-menu-toggle"></div>

    <!-- Drag Target Area To SlideIn Menu On Small Screens -->
    <div class="drag-target"></div>
</div>
<!-- / Layout wrapper -->

<!-- Core JS -->
<!-- build:js assets/vendor/js/core.js -->
<script src="/vendor/libs/jquery/jquery.js"></script>
<script src="/vendor/libs/popper/popper.js"></script>
<script src="/vendor/js/bootstrap.js"></script>
<script src="/vendor/libs/node-waves/node-waves.js"></script>
<script src="/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="/vendor/libs/hammer/hammer.js"></script>
<script src="/vendor/libs/i18n/i18n.js"></script>
<script src="/vendor/libs/typeahead-js/typeahead.js"></script>
<script src="/vendor/js/menu.js"></script>

<!-- Vendors JS -->
<script src="/vendor/libs/apex-charts/apexcharts.js"></script>
<script src="/vendor/libs/swiper/swiper.js"></script>
<script src="/vendor/libs/datatables-bs5/datatables-bootstrap5.js"></script>
<script src="/vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
<script src="/vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
<script src="/vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>
<script src="/vendor/libs/bootstrap-maxlength/bootstrap-maxlength.js"></script>

<!-- Main JS -->
<script src="/js/main.js"></script>

<!-- Page JS -->
<script src="/js/dashboards-analytics.js"></script>
<script src="/js/app-ecommerce-dashboard.js"></script>
<script src="/js/pages-auth.js"></script>
<script src="/js/app-chat.js"></script>


</body>
</html>




