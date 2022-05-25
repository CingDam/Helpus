<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
  <title>고객관리_문의내역</title>

  <!-- Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">

  <!-- Icons -->
  <link rel="stylesheet" href="fonts/boxicons.css" />
  <script src="https://kit.fontawesome.com/0c375d6c23.js" crossorigin="anonymous"></script>

  <!-- CSS -->
  <link rel="stylesheet" href="css/core.css" class="template-customizer-core-css" />
  <link rel="stylesheet" href="css/theme-default.css" class="template-customizer-theme-css" />

  <!-- JS -->
  <script src="js/helpers.js"></script>
</head>
<body>
  <!-- Layout wrapper -->
  <div class="layout-wrapper layout-content-navbar">
    <div class="layout-container">
    
      <!-- Menu -->
      <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
        <div class="app-brand demo">
          <a href="index.html" class="app-brand-link">
            <span class="app-brand-text demo menu-text fw-bolder ms-2"><img src="img/logo.png"></span>
          </a>
        </div>        

        <ul class="menu-inner py-1">
          <li class="menu-header small text-uppercase">
            <span class="menu-header-text">Navigation</span>
          </li>

          <li class="menu-item">
            <a href="#" class="menu-link">
              <i class="menu-icon fa-solid fa-calendar-check"></i>
              <div>일정관리</div>
            </a>
          </li>

          <li class="menu-item active open">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon fa-solid fa-user-group"></i>
              <div>고객관리</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item active">
                <a href="#" class="menu-link">
                  <div>문의내역</div>
                </a>
              </li>
              <li class="menu-item">
                <a href="#" class="menu-link">
                  <div>예약내역</div>
                </a>
              </li>
              <li class="menu-item">
                <a href="#" class="menu-link">
                  <div>완료내역</div>
                </a>
              </li>
            </ul>
          </li>

          <li class="menu-item">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon fa-solid fa-file-lines"></i>
              <div>서비스관리</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item">
                <a href="#" class="menu-link">
                  <div>회사소개</div>
                </a>
              </li>
              <li class="menu-item">
                <a href="#" class="menu-link">
                  <div>리뷰내역</div>
                </a>
              </li>
            </ul>
          </li>

          <li class="menu-item">
            <a href="javascript:void(0);" class="menu-link menu-toggle">
              <i class="menu-icon fa-solid fa-chart-simple"></i>
              <div>매출조회</div>
            </a>
            <ul class="menu-sub">
              <li class="menu-item">
                <a href="#" class="menu-link">
                  <div>매출내역</div>
                </a>
              </li>
              <li class="menu-item">
                <a href="#" class="menu-link">
                  <div>월간매출</div>
                </a>
              </li>
              <li class="menu-item">
                <a href="#" class="menu-link">
                  <div>연간매출</div>
                </a>
              </li>
              <li class="menu-item">
                <a href="#" class="menu-link">
                  <div>납부내역</div>
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </aside>
      <!-- / Menu -->

      <!-- Layout container -->
      <div class="layout-page">

        <!-- Navbar -->
        <nav class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme" id="layout-navbar">
          <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
            <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
              <i class="bx bx-menu bx-sm"></i>
            </a>
          </div>

          <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
            
            <!-- Search
            <div class="navbar-nav align-items-center">
              <div class="nav-item d-flex align-items-center">
                <i class="bx bx-search fs-4 lh-0"></i>
                <input type="text" class="form-control border-0 shadow-none" placeholder="Search"/>
              </div>
            </div>
            /Search -->

            <ul class="navbar-nav flex-row align-items-center ms-auto">

              <!-- Notice -->
              <li class="nav-item navbar-dropdown dropdown-user dropdown">
                <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                  <button class="btn rounded-pill btn-icon btn-secondary">
                    <span class="bx bx-bell"></span>
                  </button>
                </a>
                <ul class="dropdown-menu dropdown-menu-end">
                  <li>
                    <a class="dropdown-item text-center" href="#">
                      <span class="align-middle">알림 N 개</span>
                    </a>
                  </li>
                  <li>
                    <div class="dropdown-divider"></div>
                  </li>
                  <li>
                    <a class="dropdown-item" href="#">
                      <span class="align-middle">알림 내용</span>
                    </a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="#">
                      <span class="align-middle">알림 내용</span>
                    </a>
                  </li>
                </ul>
              </li>
              <!--/ Notice -->

              <!-- User -->
              <li class="nav-item navbar-dropdown dropdown-user dropdown">
                <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                  <img src="img/avatar.png" alt class="w-px-40 h-auto rounded-circle" />
                </a>
                <ul class="dropdown-menu dropdown-menu-end">
                  <li>
                    <a class="dropdown-item" href="#">
                      <div class="d-flex">
                        <div class="flex-shrink-0 me-3">
                          <img src="img/avatar.png" alt class="w-px-40 h-auto rounded-circle" />
                        </div>
                        <div class="flex-grow-1">
                          <small class="text-muted">대전 동구</small>
                          <span class="fw-semibold d-block">클린앤클리어</span>                            
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <div class="dropdown-divider"></div>
                  </li>
                  <li>
                    <a class="dropdown-item" href="#">
                      <i class="bx bx-user me-2"></i>
                      <span class="align-middle">마이페이지</span>
                    </a>
                  </li>
                  <li>
                    <a class="dropdown-item" href="#">
                      <i class="bx bx-cog me-2"></i>
                      <span class="align-middle">설정</span>
                    </a>
                  </li>
                  <li>
                    <div class="dropdown-divider"></div>
                  </li>
                  <li>
                    <a class="dropdown-item" href="#">
                      <i class="bx bx-power-off me-2"></i>
                      <span class="align-middle">로그아웃</span>
                    </a>
                  </li>
                </ul>
              </li>
              <!--/ User -->

            </ul>
          </div>
        </nav>
        <!-- / Navbar -->

        <!-- Content wrapper -->
        <div class="content-wrapper">

          <!-- Contents -->
          <div class="container-xxl flex-grow-1 container-p-y">
            <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">고객관리 / </span>문의내역</h4>

            <!-- Table -->
            <div class="card">
              <div class="table-responsive text-nowrap">
                <table class="table table-hover">
                  <caption>25건</caption>
                  <thead>
                    <tr>
                      <th>아이디</th>
                      <th>키워드</th>
                      <th>날짜</th>
                      <th>문의 내용</th>
                      <th>채팅</th>
                      <th>관리</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr class="long">
                      <td>lilpaaaa</td>
                      <td>에어컨 청소</td>
                      <td>2022.05.01</td>
                      <td>에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의</td>
                      <td>
                        <button type="button" class="btn btn-secondary">
                          <i class="bx bx-comment-dots"></i>
                        </button>
                      </td>
                      <td class="wait"><span class="badge rounded-pill bg-label-secondary">계약 대기</span></td>
                    </tr>

                    <tr class="long">
                      <td>lilpaaaa</td>
                      <td>에어컨 청소</td>
                      <td>2022.05.01</td>
                      <td>에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의</td>
                      <td>
                        <button type="button" class="btn btn-secondary">
                          <i class="bx bx-comment-dots"></i>
                        </button>
                      </td>
                      <td><button type="button" class="btn btn-primary">계약</button><button type="button" class="btn btn-outline-secondary">거절</button></td>
                    </tr>

                    <tr class="long">
                      <td>lilpaaaa</td>
                      <td>에어컨 청소</td>
                      <td>2022.05.01</td>
                      <td>에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의</td>
                      <td>
                        <button type="button" class="btn btn-secondary">
                          <i class="bx bx-comment-dots"></i>
                        </button>
                      </td>
                      <td><button type="button" class="btn btn-primary">계약</button><button type="button" class="btn btn-outline-secondary">거절</button></td>
                    </tr>

                    <tr class="long">
                      <td>lilpaaaa</td>
                      <td>에어컨 청소</td>
                      <td>2022.05.01</td>
                      <td>에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의</td>
                      <td>
                        <button type="button" class="btn btn-secondary">
                          <i class="bx bx-comment-dots"></i>
                        </button>
                      </td>
                      <td><button type="button" class="btn btn-primary">계약</button><button type="button" class="btn btn-outline-secondary">거절</button></td>
                    </tr>

                    <tr class="long">
                      <td>lilpaaaa</td>
                      <td>에어컨 청소</td>
                      <td>2022.05.01</td>
                      <td>에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의</td>
                      <td>
                        <button type="button" class="btn btn-secondary">
                          <i class="bx bx-comment-dots"></i>
                        </button>
                      </td>
                      <td><button type="button" class="btn btn-primary">계약</button><button type="button" class="btn btn-outline-secondary">거절</button></td>
                    </tr>

                    <tr class="long">
                      <td>lilpaaaa</td>
                      <td>에어컨 청소</td>
                      <td>2022.05.01</td>
                      <td>에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의</td>
                      <td>
                        <button type="button" class="btn btn-secondary">
                          <i class="bx bx-comment-dots"></i>
                        </button>
                      </td>
                      <td><button type="button" class="btn btn-primary">계약</button><button type="button" class="btn btn-outline-secondary">거절</button></td>
                    </tr>

                    <tr class="long">
                      <td>lilpaaaa</td>
                      <td>에어컨 청소</td>
                      <td>2022.05.01</td>
                      <td>에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의</td>
                      <td>
                        <button type="button" class="btn btn-secondary">
                          <i class="bx bx-comment-dots"></i>
                        </button>
                      </td>
                      <td><button type="button" class="btn btn-primary">계약</button><button type="button" class="btn btn-outline-secondary">거절</button></td>
                    </tr>

                    <tr class="long">
                      <td>lilpaaaa</td>
                      <td>에어컨 청소</td>
                      <td>2022.05.01</td>
                      <td>에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의</td>
                      <td>
                        <button type="button" class="btn btn-secondary">
                          <i class="bx bx-comment-dots"></i>
                        </button>
                      </td>
                      <td><button type="button" class="btn btn-primary">계약</button><button type="button" class="btn btn-outline-secondary">거절</button></td>
                    </tr>

                    <tr class="long">
                      <td>lilpaaaa</td>
                      <td>에어컨 청소</td>
                      <td>2022.05.01</td>
                      <td>에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의</td>
                      <td>
                        <button type="button" class="btn btn-secondary">
                          <i class="bx bx-comment-dots"></i>
                        </button>
                      </td>
                      <td><button type="button" class="btn btn-primary">계약</button><button type="button" class="btn btn-outline-secondary">거절</button></td>
                    </tr>

                    <tr class="long">
                      <td>lilpaaaa</td>
                      <td>에어컨 청소</td>
                      <td>2022.05.01</td>
                      <td>에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의에어컨 청소 문의</td>
                      <td>
                        <button type="button" class="btn btn-secondary">
                          <i class="bx bx-comment-dots"></i>
                        </button>
                      </td>
                      <td><button type="button" class="btn btn-primary">계약</button><button type="button" class="btn btn-outline-secondary">거절</button></td>
                    </tr>
                  </tbody>
                </table>
              </div>
            <!--/ Hoverable Table rows -->

            </div>
          </div>
          <!-- / Contents -->

          <!-- Pagination -->
          <nav aria-label="Page navigation">
            <ul class="pagination justify-content-center">
              <li class="page-item first">
                <a class="page-link" href="javascript:void(0);">
                  <i class="tf-icon bx bx-chevrons-left"></i>
                </a>
              </li>
              <li class="page-item prev">
                <a class="page-link" href="javascript:void(0);">
                  <i class="tf-icon bx bx-chevron-left"></i>
                </a>
              </li>
              <li class="page-item active">
                <a class="page-link" href="javascript:void(0);">1</a>
              </li>
              <li class="page-item">
                <a class="page-link" href="javascript:void(0);">2</a>
              </li>
              <li class="page-item">
                <a class="page-link" href="javascript:void(0);">3</a>
              </li>
              <li class="page-item">
                <a class="page-link" href="javascript:void(0);">4</a>
              </li>
              <li class="page-item">
                <a class="page-link" href="javascript:void(0);">5</a>
              </li>
              <li class="page-item next">
                <a class="page-link" href="javascript:void(0);">
                  <i class="tf-icon bx bx-chevron-right"></i>
                </a>
              </li>
              <li class="page-item last">
                <a class="page-link" href="javascript:void(0);">
                  <i class="tf-icon bx bx-chevrons-right"></i>
                </a>
              </li>
            </ul>
          </nav>
          <!-- /Pagination -->

        </div>
        <!-- Content wrapper -->

      </div>
      <!-- / Layout page -->

    </div>
  </div>
  <!-- / Layout wrapper -->

  <!-- Footer -->
  <div class="footer"> 
    <div>
      <img src="img/logo.png">
      <div>
        대전광역시 동구 가양동 우암로 352-21 <br>
        BRN. 000-00-00000 <br><br>
        COPYRIGHT 2022. HELPUS. ALL RIGHTS RESERVED.
      </div>
    </div>
    <div id="fnav">
      <div>정보</div>
      <div>HELPUS</div>
      <div>이용약관</div>
      <div>개인정보처리방침</div>
    </div>
    <div>
      <div>안내</div>
      <div>서비스 소개</div>
      <div>고객 가이드</div>
      <div>사업자 가이드</div>
    </div>
    <div>
      <div>지원</div>
      <div>공지사항</div>
      <div>자주 묻는 질문</div>
      <div>1 : 1 문의</div>
    </div>   
  </div>
  <!-- /Footer -->

  <!-- Core JS -->
  <script src="js/bootstrap.js"></script>
  <script src="js/menu.js"></script>

  <!-- Main JS -->
  <script src="js/main.js"></script>
</body>
</html>
