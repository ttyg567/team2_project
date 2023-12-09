<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!-- Helpers -->
<script src="/vendor/js/helpers.js"></script>
<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src="/js/config.js"></script>


<!-- Content wrapper -->
<div class="content-wrapper">
    <!-- Content -->

    <div class="container-xxl flex-grow-1 container-p-y">
        <div class="app-chat card overflow-hidden">
            <div class="row g-0">
                <!-- Sidebar Left -->
                <div class="col app-chat-sidebar-left app-sidebar overflow-hidden" id="app-chat-sidebar-left">
                    <div
                            class="chat-sidebar-left-user sidebar-header d-flex flex-column justify-content-center align-items-center flex-wrap px-4 pt-5">
                        <div class="avatar avatar-xl avatar-online w-px-75 h-px-75">
                            <img src="/img/avatars/1.png" alt="Avatar" class="rounded-circle"/>
                        </div>
                        <h5 class="mt-3 mb-1">John Doe</h5>
                        <span>UI/UX Designer</span>
                        <i
                                class="mdi mdi-close mdi-20px cursor-pointer close-sidebar"
                                data-bs-toggle="sidebar"
                                data-overlay
                                data-target="#app-chat-sidebar-left"></i>
                    </div>
                    <div class="sidebar-body px-4 pb-4">
                        <div class="mt-4 mb-3 pt-2">
                            <label for="chat-sidebar-left-user-about" class="text-uppercase fw-medium">About</label>
                            <textarea
                                    id="chat-sidebar-left-user-about"
                                    class="form-control chat-sidebar-left-user-about mt-3"
                                    rows="3"
                                    maxlength="120">Dessert chocolate cake lemon drops jujubes.</textarea
                            >
                        </div>
                        <div class="my-3">
                            <p class="text-uppercase fw-medium">Status</p>
                            <div class="d-grid gap-1">
                                <div class="form-check form-check-success">
                                    <input
                                            name="chat-user-status"
                                            class="form-check-input"
                                            type="radio"
                                            value="active"
                                            id="user-active"
                                            checked/>
                                    <label class="form-check-label" for="user-active">Active</label>
                                </div>
                                <div class="form-check form-check-danger">
                                    <input
                                            name="chat-user-status"
                                            class="form-check-input"
                                            type="radio"
                                            value="busy"
                                            id="user-busy"/>
                                    <label class="form-check-label" for="user-busy">Busy</label>
                                </div>
                                <div class="form-check form-check-warning">
                                    <input
                                            name="chat-user-status"
                                            class="form-check-input"
                                            type="radio"
                                            value="away"
                                            id="user-away"/>
                                    <label class="form-check-label" for="user-away">Away</label>
                                </div>
                                <div class="form-check form-check-secondary">
                                    <input
                                            name="chat-user-status"
                                            class="form-check-input"
                                            type="radio"
                                            value="offline"
                                            id="user-offline"/>
                                    <label class="form-check-label" for="user-offline">Offline</label>
                                </div>
                            </div>
                        </div>
                        <div class="my-3">
                            <p class="text-uppercase fw-medium">Settings</p>
                            <ul class="list-unstyled d-grid gap-2 me-3">
                                <li class="d-flex justify-content-between align-items-center">
                                    <div>
                                        <i class="mdi mdi-check-circle-outline me-1 mdi-24px"></i>
                                        <span class="align-middle">Two-step Verification</span>
                                    </div>
                                    <label class="switch switch-primary me-4 switch-sm">
                                        <input type="checkbox" class="switch-input" checked=""/>
                                        <span class="switch-toggle-slider">
                                <span class="switch-on"></span>
                                <span class="switch-off"></span>
                              </span>
                                    </label>
                                </li>
                                <li class="d-flex justify-content-between align-items-center">
                                    <div>
                                        <i class="mdi mdi-bell-outline me-1 mdi-24px"></i>
                                        <span class="align-middle">Notification</span>
                                    </div>
                                    <label class="switch switch-primary me-4 switch-sm">
                                        <input type="checkbox" class="switch-input"/>
                                        <span class="switch-toggle-slider">
                                <span class="switch-on"></span>
                                <span class="switch-off"></span>
                              </span>
                                    </label>
                                </li>
                                <li>
                                    <i class="mdi mdi-account-outline me-1 mdi-24px"></i>
                                    <span class="align-middle">Invite Friends</span>
                                </li>
                                <li>
                                    <i class="mdi mdi-delete-outline me-1 mdi-24px"></i>
                                    <span class="align-middle">Delete Account</span>
                                </li>
                            </ul>
                        </div>
                        <div class="d-flex mt-4">
                            <button
                                    class="btn btn-primary"
                                    data-bs-toggle="sidebar"
                                    data-overlay
                                    data-target="#app-chat-sidebar-left">
                                Logout
                            </button>
                        </div>
                    </div>
                </div>
                <!-- /Sidebar Left-->

                <!-- Chat & Contacts -->
                <div
                        class="col app-chat-contacts app-sidebar flex-grow-0 overflow-hidden border-end"
                        id="app-chat-contacts">
                    <div class="sidebar-header py-3 px-4 border-bottom">
                        <div class="d-flex align-items-center me-3 me-lg-0">
                            <div
                                    class="flex-shrink-0 avatar avatar-online me-3"
                                    data-bs-toggle="sidebar"
                                    data-overlay="app-overlay-ex"
                                    data-target="#app-chat-sidebar-left">
                                <img
                                        class="user-avatar rounded-circle cursor-pointer"
                                        src="/img/avatars/1.png"
                                        alt="Avatar"/>
                            </div>
                            <div class="flex-grow-1 input-group input-group-merge rounded-pill">
                          <span class="input-group-text" id="basic-addon-search31"
                          ><i class="mdi mdi-magnify lh-1 mdi-24px"></i
                          ></span>
                                <input
                                        type="text"
                                        class="form-control chat-search-input"
                                        placeholder="Search..."
                                        aria-label="Search..."
                                        aria-describedby="basic-addon-search31"/>
                            </div>
                        </div>
                        <i
                                class="mdi mdi-close mdi-20px cursor-pointer position-absolute top-0 end-0 mt-2 me-2 fs-4 d-lg-none d-block"
                                data-overlay
                                data-bs-toggle="sidebar"
                                data-target="#app-chat-contacts"></i>
                    </div>
                    <div class="sidebar-body">
                        <!-- Chats -->
                        <ul class="list-unstyled chat-contact-list" id="chat-list">
                            <li class="chat-contact-list-item chat-contact-list-item-title">
                                <h5 class="text-primary mb-0">계약서 목록</h5>
                            </li>
                            <li class="chat-contact-list-item chat-list-item-0 d-none">
                                <h6 class="text-muted mb-0">No Contract Found</h6>
                            </li>
                            <li class="chat-contact-list-item active">
                                <a class="d-flex align-items-center">
                                    <div class="flex-shrink-0 avatar avatar-online d-flex justify-content-center align-items-center">
                                        <span class="mdi mdi-file-document-multiple-outline"></span>
                                    </div>
                                    <div class="chat-contact-info flex-grow-1 ms-3">
                                        <h6 class="chat-contact-name text-truncate m-0">사업시행 인가서</h6>
                                        <p class="chat-contact-status text-truncate mb-0">사업기획 후 필수로 제출해야 하는</p>
                                    </div>
                                    <small class="mb-auto">2023-12-18</small>
                                </a>
                            </li>
                            <li class="chat-contact-list-item">
                                <a class="d-flex align-items-center">
                                    <div class="flex-shrink-0 avatar avatar-online d-flex justify-content-center align-items-center">
                                        <span class="mdi mdi-file-document-multiple-outline"></span>
                                    </div>
                                    <div class="chat-contact-info flex-grow-1 ms-3">
                                        <h6 class="chat-contact-name text-truncate m-0">입찰 참가 신청서</h6>
                                        <p class="chat-contact-status text-truncate mb-0">입찰에 임하기 전 작성하게 되는</p>
                                    </div>
                                    <small class="mb-auto">2023-12-15</small>
                                </a>
                            </li>
                            <li class="chat-contact-list-item">
                                <a class="d-flex align-items-center">
                                    <div class="flex-shrink-0 avatar avatar-busy d-flex justify-content-center align-items-center">
                                        <span class="mdi mdi-file-document-multiple-outline"></span>
                                    </div>
                                    <div class="chat-contact-info flex-grow-1 ms-3">
                                        <h6 class="chat-contact-name text-truncate m-0">사전심사의뢰서</h6>
                                        <p class="chat-contact-status text-truncate mb-0">
                                            기관에게 사전검토 요청을 보내는
                                        </p>
                                    </div>
                                    <small class="mb-auto">2023-12-13</small>
                                </a>
                            </li>
                            <li class="chat-contact-list-item">
                                <a class="d-flex align-items-center">
                                    <div class="flex-shrink-0 avatar avatar-busy d-flex justify-content-center align-items-center">
                                        <span class="mdi mdi-file-document-multiple-outline"></span>
                                    </div>
                                    <div class="chat-contact-info flex-grow-1 ms-3">
                                        <h6 class="chat-contact-name text-truncate m-0">수의계약서</h6>
                                        <p class="chat-contact-status text-truncate mb-0">
                                            수의입찰 방식의 계약 체결 시
                                        </p>
                                    </div>
                                    <small class="mb-auto">2023-12-11</small>
                                </a>
                            </li>
                            <li class="chat-contact-list-item">
                                <a class="d-flex align-items-center">
                                    <div class="flex-shrink-0 avatar avatar-online d-flex justify-content-center align-items-center">
                                        <span class="mdi mdi-file-document-multiple-outline"></span>
                                    </div>
                                    <div class="chat-contact-info flex-grow-1 ms-3">
                                        <h6 class="chat-contact-name text-truncate m-0">양도양수계약서</h6>
                                        <p class="chat-contact-status text-truncate mb-0">
                                            권리계약 체결 시 작성하는
                                        </p>
                                    </div>
                                    <small class="mb-auto">2023-12-04</small>
                                </a>
                            </li>
                            <li class="chat-contact-list-item">
                                <a class="d-flex align-items-center">
                                    <div class="flex-shrink-0 avatar avatar-online d-flex justify-content-center align-items-center">
                                        <span class="mdi mdi-file-document-multiple-outline"></span>
                                    </div>
                                    <div class="chat-contact-info flex-grow-1 ms-3">
                                        <h6 class="chat-contact-name text-truncate m-0">용역의뢰서</h6>
                                        <p class="chat-contact-status text-truncate mb-0">
                                            외부 용역을 제안 시 필수
                                        </p>
                                    </div>
                                    <small class="mb-auto">2023-11-30</small>
                                </a>
                            </li>
                            <li class="chat-contact-list-item">
                                <a href="/makecontract" class="d-flex align-items-center">
                                    <div class="flex-shrink-0 avatar avatar-online d-flex justify-content-center align-items-center">
                                        <span class="mdi mdi-file-document-multiple-outline"></span>
                                    </div>
                                    <div class="chat-contact-info flex-grow-1 ms-3">
                                        <h6 class="chat-contact-name text-truncate m-0">주택표준임대차계약서</h6>
                                        <p class="chat-contact-status text-truncate mb-0">
                                            국토부 표준 임대차 계약서 양식입니다
                                        </p>
                                    </div>
                                    <small class="mb-auto">2023-11-29</small>
                                </a>
                            </li>
                            <li class="chat-contact-list-item">
                                <a class="d-flex align-items-center">
                                    <div class="flex-shrink-0 avatar avatar-busy d-flex justify-content-center align-items-center">
                                        <span class="mdi mdi-file-document-multiple-outline"></span>
                                    </div>
                                    <div class="chat-contact-info flex-grow-1 ms-3">
                                        <h6 class="chat-contact-name text-truncate m-0">가격협상의뢰서</h6>
                                        <p class="chat-contact-status text-truncate mb-0">
                                            수의계약 전 협상 진행에 필요한
                                        </p>
                                    </div>
                                    <small class="mb-auto">2023-11-27</small>
                                </a>
                            </li>
                            <li class="chat-contact-list-item">
                                <a class="d-flex align-items-center">
                                    <div class="flex-shrink-0 avatar avatar-offline d-flex justify-content-center align-items-center">
                                        <span class="mdi mdi-file-document-multiple-outline"></span>
                                    </div>
                                    <div class="chat-contact-info flex-grow-1 ms-3">
                                        <h6 class="chat-contact-name text-truncate m-0">단기노무계약서</h6>
                                        <p class="chat-contact-status text-truncate mb-0">
                                            단기 계약직 선발 시 작성하는 필수 서류
                                        </p>
                                    </div>
                                    <small class="mb-auto">2023-11-25</small>
                                </a>
                            </li>
                            <li class="chat-contact-list-item">
                                <a class="d-flex align-items-center">
                                    <div class="flex-shrink-0 avatar avatar-offline d-flex justify-content-center align-items-center">
                                        <span class="mdi mdi-file-document-multiple-outline"></span>
                                    </div>
                                    <div class="chat-contact-info flex-grow-1 ms-3">
                                        <h6 class="chat-contact-name text-truncate m-0">입찰자선정공고문</h6>
                                        <p class="chat-contact-status text-truncate mb-0">
                                            입찰자 선정의 근기를 담고 있는
                                        </p>
                                    </div>
                                    <small class="mb-auto">2023-11-23</small>
                                </a>
                            </li>
                            <li class="chat-contact-list-item">
                                <a class="d-flex align-items-center">
                                    <div class="flex-shrink-0 avatar avatar-online d-flex justify-content-center align-items-center">
                                        <span class="mdi mdi-file-document-multiple-outline"></span>
                                    </div>
                                    <div class="chat-contact-info flex-grow-1 ms-3">
                                        <h6 class="chat-contact-name text-truncate m-0">계약종결통지문</h6>
                                        <p class="chat-contact-status text-truncate mb-0">
                                            계약 만기 1개월 전에 발송해야
                                        </p>
                                    </div>
                                    <small class="mb-auto">2023-11-16</small>
                                </a>
                            </li>
                            <li class="chat-contact-list-item">
                                <a class="d-flex align-items-center">
                                    <div class="flex-shrink-0 avatar avatar-offline d-flex justify-content-center align-items-center">
                                        <span class="mdi mdi-file-document-multiple-outline"></span>
                                    </div>
                                    <div class="chat-contact-info flex-grow-1 ms-3">
                                        <h6 class="chat-contact-name text-truncate m-0">주택표준매매계약서</h6>
                                        <p class="chat-contact-status text-truncate mb-0">
                                            주택으로 표시된 물건의 매매 시 사용되는
                                        </p>
                                    </div>
                                    <small class="mb-auto">2023-11-23</small>
                                </a>
                            </li>
                        </ul>
                        <!-- Contacts -->

                    </div>
                </div>
                <!-- /Chat contacts -->

                <!-- Chat History -->
                <div class="col app-chat-history">
                    <div class="chat-history-wrapper">
                        <div class="chat-history-header border-bottom">
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="d-flex overflow-hidden align-items-center">
                                    <i
                                            class="mdi mdi-menu mdi-24px cursor-pointer d-lg-none d-block me-3"
                                            data-bs-toggle="sidebar"
                                            data-overlay
                                            data-target="#app-chat-contacts"></i>
                                    <div class="flex-shrink-0 avatar avatar-online">
                                        <img
                                                src="/img/avatars/4.png"
                                                alt="Avatar"
                                                class="rounded-circle"
                                                data-bs-toggle="sidebar"
                                                data-overlay
                                                data-target="#app-chat-sidebar-right"/>
                                    </div>
                                    <div class="chat-contact-info flex-grow-1 ms-3">
                                        <h6 class="m-0">국민비서 로라</h6>
                                        <span class="user-status">AI Assistant</span>
                                    </div>
                                </div>
                                <div class="d-flex align-items-center">
                                    <i
                                            class="mdi mdi-phone-outline mdi-24px cursor-pointer d-sm-block d-none me-1 btn btn-text-secondary btn-icon rounded-pill"></i>
                                    <i
                                            class="mdi mdi-video-outline mdi-24px cursor-pointer d-sm-block d-none me-1 btn btn-text-secondary btn-icon rounded-pill"></i>
                                    <i
                                            class="mdi mdi-magnify mdi-24px cursor-pointer d-sm-block d-none me-1 btn btn-text-secondary btn-icon rounded-pill"></i>
                                    <div class="dropdown">
                                        <button
                                                class="btn btn-icon btn-text-secondary rounded-pill dropdown-toggle hide-arrow"
                                                data-bs-toggle="dropdown"
                                                aria-expanded="true"
                                                id="chat-header-actions">
                                            <i class="mdi mdi-dots-vertical mdi-24px"></i>
                                        </button>
                                        <div class="dropdown-menu dropdown-menu-end"
                                             aria-labelledby="chat-header-actions">
                                            <a class="dropdown-item" href="javascript:void(0);">View Contact</a>
                                            <a class="dropdown-item" href="javascript:void(0);">Mute Notifications</a>
                                            <a class="dropdown-item" href="javascript:void(0);">Block Contact</a>
                                            <a class="dropdown-item" href="javascript:void(0);">Clear Chat</a>
                                            <a class="dropdown-item" href="javascript:void(0);">Report</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="chat-history-body">
                            <ul class="list-unstyled chat-history">
                                <li class="chat-message chat-message-right">
                                    <div class="d-flex overflow-hidden">
                                        <div class="chat-message-wrapper flex-grow-1">
                                            <div class="chat-message-text">
                                                <p class="mb-0">계약서 작성 서비스는 어떤 서비스인가요? 😄</p>
                                            </div>
                                            <div class="text-end text-muted">
                                                <i class="mdi mdi-check-all mdi-14px text-success me-1"></i>
                                                <small>10:00 AM</small>
                                            </div>
                                        </div>
                                        <div class="user-avatar flex-shrink-0 ms-3">
                                            <div class="avatar avatar-sm">
                                                <img src="/img/avatars/1.png" alt="Avatar" class="rounded-circle"/>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="chat-message">
                                    <div class="d-flex overflow-hidden">
                                        <div class="user-avatar flex-shrink-0 me-3">
                                            <div class="avatar avatar-sm">
                                                <img src="/img/avatars/4.png" alt="Avatar" class="rounded-circle"/>
                                            </div>
                                        </div>
                                        <div class="chat-message-wrapper flex-grow-1">
                                            <div class="chat-message-text">
                                                <p class="mb-0">업무에 필요한 다양한 계약서 작성을 도와주는 서비스입니다.</p>
                                            </div>
                                            <div class="text-muted">
                                                <small>10:02 AM</small>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="chat-message chat-message-right">
                                    <div class="d-flex overflow-hidden">
                                        <div class="chat-message-wrapper flex-grow-1">
                                            <div class="chat-message-text">
                                                <p class="mb-0">이용 방법은 어떻게 되나요? </p>
                                            </div>
                                            <div class="text-end text-muted">
                                                <i class="mdi mdi-check-all mdi-14px text-success me-1"></i>
                                                <small>10:03 AM</small>
                                            </div>
                                        </div>
                                        <div class="user-avatar flex-shrink-0 ms-3">
                                            <div class="avatar avatar-sm">
                                                <img src="/img/avatars/1.png" alt="Avatar" class="rounded-circle"/>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="chat-message">
                                    <div class="d-flex overflow-hidden">
                                        <div class="user-avatar flex-shrink-0 me-3">
                                            <div class="avatar avatar-sm">
                                                <img src="/img/avatars/4.png" alt="Avatar" class="rounded-circle"/>
                                            </div>
                                        </div>
                                        <div class="chat-message-wrapper flex-grow-1">
                                            <div class="chat-message-text">
                                                <p class="mb-0">원하시는 계약서를 검색하여 더블클릭을 하시면 작성페이지로 이동합니다. 🤔</p>
                                            </div>
                                            <div class="text-muted">
                                                <small>10:05 AM</small>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- Chat message form -->
                        <div class="chat-history-footer">
                            <form class="form-send-message d-flex justify-content-between align-items-center">
                                <input
                                        class="form-control message-input me-3 shadow-none"
                                        placeholder="Type your message here"/>
                                <div class="message-actions d-flex align-items-center">
                                    <i
                                            class="btn btn-text-secondary btn-icon rounded-pill speech-to-text mdi mdi-microphone mdi-20px cursor-pointer"></i>
                                    <label for="attach-doc" class="form-label mb-0">
                                        <i
                                                class="mdi mdi-paperclip mdi-20px cursor-pointer btn btn-text-secondary btn-icon rounded-pill me-2 ms-1"></i>
                                        <input type="file" id="attach-doc" hidden/>
                                    </label>
                                    <button class="btn btn-primary d-flex send-msg-btn">
                                        <span class="align-middle">Send</span>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- /Chat History -->

                <!-- Sidebar Right -->
                <div class="col app-chat-sidebar-right app-sidebar overflow-hidden" id="app-chat-sidebar-right">
                    <div
                            class="sidebar-header d-flex flex-column justify-content-center align-items-center flex-wrap px-4 pt-5">
                        <div class="avatar avatar-xl avatar-online w-px-75 h-px-75">
                            <img src="/img/avatars/4.png" alt="Avatar" class="rounded-circle"/>
                        </div>
                        <h5 class="mt-3 mb-1">Felecia Rower</h5>
                        <span>NextJS Developer</span>
                        <i
                                class="mdi mdi-close mdi-20px cursor-pointer close-sidebar d-block"
                                data-bs-toggle="sidebar"
                                data-overlay
                                data-target="#app-chat-sidebar-right"></i>
                    </div>
                    <div class="sidebar-body px-4">
                        <div class="my-4 pt-2">
                            <p class="text-uppercase fw-medium mb-2">About</p>
                            <p class="mb-0">
                                It is a long established fact that a reader will be distracted by readable content.
                            </p>
                        </div>
                        <div class="my-4">
                            <p class="text-uppercase fw-medium">Personal Information</p>
                            <ul class="list-unstyled d-grid gap-2 mb-0">
                                <li class="d-flex align-items-center">
                                    <i class="mdi mdi-email-outline mdi-24px"></i>
                                    <span class="align-middle ms-2">josephGreen@email.com</span>
                                </li>
                                <li class="d-flex align-items-center">
                                    <i class="mdi mdi-phone mdi-24px"></i>
                                    <span class="align-middle ms-2">+1(123) 456 - 7890</span>
                                </li>
                                <li class="d-flex align-items-center">
                                    <i class="mdi mdi-clock-outline mdi-24px"></i>
                                    <span class="align-middle ms-2">Mon - Fri 10AM - 8PM</span>
                                </li>
                            </ul>
                        </div>
                        <div class="my-4">
                            <p class="text-uppercase fw-medium">Options</p>
                            <ul class="list-unstyled d-grid gap-2">
                                <li class="cursor-pointer d-flex align-items-center">
                                    <i class="mdi mdi-bookmark-outline mdi-24px"></i>
                                    <span class="align-middle ms-2">Add Tag</span>
                                </li>
                                <li class="cursor-pointer d-flex align-items-center">
                                    <i class="mdi mdi-star-outline mdi-24px"></i>
                                    <span class="align-middle ms-2">Important Contact</span>
                                </li>
                                <li class="cursor-pointer d-flex align-items-center">
                                    <i class="mdi mdi-image-outline mdi-24px"></i>
                                    <span class="align-middle ms-2">Shared Media</span>
                                </li>
                                <li class="cursor-pointer d-flex align-items-center">
                                    <i class="mdi mdi-delete-outline mdi-24px"></i>
                                    <span class="align-middle ms-2">Delete Contact</span>
                                </li>
                                <li class="cursor-pointer d-flex align-items-center">
                                    <i class="mdi mdi-block-helper mdi-24px"></i>
                                    <span class="align-middle ms-2">Block Contact</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- /Sidebar Right -->

                <div class="app-overlay"></div>
            </div>
        </div>
    </div>
    <!-- / Content -->
    <div class="content-backdrop fade"></div>
</div>
<!-- Content wrapper -->


