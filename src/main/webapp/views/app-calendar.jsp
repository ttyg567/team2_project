<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>

<html
  lang="en"
  class="light-style layout-navbar-fixed layout-menu-fixed layout-compact"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="../"
  data-template="vertical-menu-template">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>일정 관리</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&ampdisplay=swap"
      rel="stylesheet" />

    <!-- Icons -->
    <link rel="stylesheet" href="../vendor/fonts/materialdesignicons.css" />
    <link rel="stylesheet" href="../vendor/fonts/fontawesome.css" />
    <link rel="stylesheet" href="../vendor/fonts/flag-icons.css" />

    <!-- Menu waves for no-customizer fix -->
    <link rel="stylesheet" href="../vendor/libs/node-waves/node-waves.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="../vendor/css/rtl/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="../vendor/css/rtl/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="../css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="../vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
    <link rel="stylesheet" href="../vendor/libs/typeahead-js/typeahead.css" />
    <link rel="stylesheet" href="../vendor/libs/fullcalendar/fullcalendar.css" />
    <link rel="stylesheet" href="../vendor/libs/flatpickr/flatpickr.css" />
    <link rel="stylesheet" href="../vendor/libs/select2/select2.css" />
    <link rel="stylesheet" href="../vendor/libs/quill/editor.css" />
    <link rel="stylesheet" href="../vendor/libs/@form-validation/umd/styles/index.min.css" />

    <!-- Page CSS -->

    <link rel="stylesheet" href="../vendor/css/pages/app-calendar.css" />

    <!-- Helpers -->
    <script src="../vendor/js/helpers.js"></script>
    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Template customizer: To hide customizer set displayCustomizer value false in config.js.  -->
    <script src="../vendor/js/template-customizer.js"></script>
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../js/config.js"></script>
  </head>

  <body>
  <div class="card app-calendar-wrapper">
    <div class="row g-0">
      <!-- Calendar Sidebar -->
      <div class="col app-calendar-sidebar border-end" id="app-calendar-sidebar">
        <div class="p-3 pb-2 my-sm-0 mb-3">
          <div class="d-grid">
            <button
                    class="btn btn-primary btn-toggle-sidebar"
                    data-bs-toggle="offcanvas"
                    data-bs-target="#addEventSidebar"
                    aria-controls="addEventSidebar">
              <i class="mdi mdi-plus me-1"></i>
              <span class="align-middle">일정을 추가하세요</span>
            </button>
          </div>
        </div>
        <div class="p-4">
          <!-- inline calendar (flatpicker) -->
          <div class="inline-calendar"></div>

          <hr class="container-m-nx my-4" />

          <!-- Filter -->
          <div class="mb-4">
            <small class="text-small text-muted text-uppercase align-middle">Filter</small>
          </div>

          <div class="form-check form-check-secondary mb-3">
            <input
                    class="form-check-input select-all"
                    type="checkbox"
                    id="selectAll"
                    data-value="all"
                    checked />
            <label class="form-check-label" for="selectAll">View All</label>
          </div>

          <div class="app-calendar-events-filter">
            <div class="form-check form-check-danger mb-3">
              <input
                      class="form-check-input input-filter"
                      type="checkbox"
                      id="select-personal"
                      data-value="personal"
                      checked />
              <label class="form-check-label" for="select-personal">개인 업무</label>
            </div>
            <div class="form-check mb-3">
              <input
                      class="form-check-input input-filter"
                      type="checkbox"
                      id="select-business"
                      data-value="business"
                      checked />
              <label class="form-check-label" for="select-business">팀 업무</label>
            </div>
            <div class="form-check form-check-warning mb-3">
              <input
                      class="form-check-input input-filter"
                      type="checkbox"
                      id="select-family"
                      data-value="family"
                      checked />
              <label class="form-check-label" for="select-family">출장 업무</label>
            </div>
            <div class="form-check form-check-success mb-3">
              <input
                      class="form-check-input input-filter"
                      type="checkbox"
                      id="select-holiday"
                      data-value="holiday"
                      checked />
              <label class="form-check-label" for="select-holiday">상담 업무</label>
            </div>
            <div class="form-check form-check-info">
              <input
                      class="form-check-input input-filter"
                      type="checkbox"
                      id="select-etc"
                      data-value="etc"
                      checked />
              <label class="form-check-label" for="select-etc">기타 업무</label>
            </div>
          </div>
        </div>
      </div>
      <!-- /Calendar Sidebar -->

      <!-- Calendar & Modal -->
      <div class="col app-calendar-content">
        <div class="card shadow-none border-0">
          <div class="card-body pb-0">
            <!-- FullCalendar -->
            <div id="calendar"></div>
          </div>
        </div>
        <div class="app-overlay"></div>
        <!-- FullCalendar Offcanvas -->
        <div
                class="offcanvas offcanvas-end event-sidebar"
                tabindex="-1"
                id="addEventSidebar"
                aria-labelledby="addEventSidebarLabel">
          <div class="offcanvas-header border-bottom">
            <h5 class="offcanvas-title" id="addEventSidebarLabel">일정을 추가하세요</h5>
            <button
                    type="button"
                    class="btn-close text-reset"
                    data-bs-dismiss="offcanvas"
                    aria-label="Close"></button>
          </div>
          <div class="offcanvas-body">
            <form class="event-form pt-0" id="eventForm" onsubmit="return false">
              <div class="form-floating form-floating-outline mb-4">
                <input
                        type="text"
                        class="form-control"
                        id="eventTitle"
                        name="eventTitle"
                        placeholder="Event Title" />
                <label for="eventTitle">Title</label>
              </div>
              <div class="form-floating form-floating-outline mb-4">
                <select class="select2 select-event-label form-select" id="eventLabel" name="eventLabel">
                  <option data-label="primary" value="Business" selected>팀 업무</option>
                  <option data-label="danger" value="Personal">개인 업무</option>
                  <option data-label="warning" value="Family">출장 업무</option>
                  <option data-label="success" value="Holiday">상담 업무</option>
                  <option data-label="info" value="ETC">기타 업무</option>
                </select>
                <label for="eventLabel">Label</label>
              </div>
              <div class="form-floating form-floating-outline mb-4">
                <input
                        type="text"
                        class="form-control"
                        id="eventStartDate"
                        name="eventStartDate"
                        placeholder="Start Date" />
                <label for="eventStartDate">Start Date</label>
              </div>
              <div class="form-floating form-floating-outline mb-4">
                <input
                        type="text"
                        class="form-control"
                        id="eventEndDate"
                        name="eventEndDate"
                        placeholder="End Date" />
                <label for="eventEndDate">End Date</label>
              </div>
              <div class="mb-3">
                <label class="switch">
                  <input type="checkbox" class="switch-input allDay-switch" />
                  <span class="switch-toggle-slider">
                                <span class="switch-on"></span>
                                <span class="switch-off"></span>
                              </span>
                  <span class="switch-label">All Day</span>
                </label>
              </div>
              <div class="form-floating form-floating-outline mb-4">
                <input
                        type="url"
                        class="form-control"
                        id="eventURL"
                        name="eventURL"
                        placeholder="https://www.google.com" />
                <label for="eventURL">Event URL</label>
              </div>
              <div class="form-floating form-floating-outline mb-4 select2-primary">
                <select
                        class="select2 select-event-guests form-select"
                        id="eventGuests"
                        name="eventGuests"
                        multiple>
                  <option data-avatar="1.png" value="Jane Foster">허인</option>
                  <option data-avatar="3.png" value="Donna Frank">이진만</option>
                  <option data-avatar="5.png" value="Gabrielle Robertson">서민철</option>
                  <option data-avatar="7.png" value="Lori Spears">권현진</option>
                  <option data-avatar="9.png" value="Sandy Vega">박효선</option>
                  <option data-avatar="11.png" value="Cheryl May">오지예</option>
                </select>
                <label for="eventGuests">동행자</label>
              </div>
              <div class="form-floating form-floating-outline mb-4">
                <input
                        type="text"
                        class="form-control"
                        id="eventLocation"
                        name="eventLocation"
                        placeholder="Enter Location" />
                <label for="eventLocation">Location</label>
              </div>
              <div class="form-floating form-floating-outline mb-4">
                <textarea class="form-control" name="eventDescription" id="eventDescription"></textarea>
                <label for="eventDescription">Description</label>
              </div>
              <div class="mb-3 d-flex justify-content-sm-between justify-content-start my-4 gap-2">
                <div class="d-flex">
                  <button type="submit" class="btn btn-primary btn-add-event me-sm-2 me-1">Add</button>
                  <button
                          type="reset"
                          class="btn btn-outline-secondary btn-cancel me-sm-0 me-1"
                          data-bs-dismiss="offcanvas">
                    Cancel
                  </button>
                </div>
                <button class="btn btn-outline-danger btn-delete-event d-none">Delete</button>
              </div>
            </form>
          </div>
        </div>
      </div>
      <!-- /Calendar & Modal -->
    </div>
  </div>

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="../vendor/libs/jquery/jquery.js"></script>
    <script src="../vendor/libs/popper/popper.js"></script>
    <script src="../vendor/js/bootstrap.js"></script>
    <script src="../vendor/libs/node-waves/node-waves.js"></script>
    <script src="../vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="../vendor/libs/hammer/hammer.js"></script>
    <script src="../vendor/libs/i18n/i18n.js"></script>
    <script src="../vendor/libs/typeahead-js/typeahead.js"></script>
    <script src="../vendor/js/menu.js"></script>

    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="../vendor/libs/fullcalendar/fullcalendar.js"></script>
    <script src="../vendor/libs/@form-validation/umd/bundle/popular.min.js"></script>
    <script src="../vendor/libs/@form-validation/umd/plugin-bootstrap5/index.min.js"></script>
    <script src="../vendor/libs/@form-validation/umd/plugin-auto-focus/index.min.js"></script>
    <script src="../vendor/libs/select2/select2.js"></script>
    <script src="../vendor/libs/flatpickr/flatpickr.js"></script>
    <script src="../vendor/libs/moment/moment.js"></script>

    <!-- Main JS -->
    <script src="../js/main.js"></script>

    <!-- Page JS -->
    <script src="../js/app-calendar-events.js"></script>
    <script src="../js/app-calendar.js"></script>
  </body>
</html>
