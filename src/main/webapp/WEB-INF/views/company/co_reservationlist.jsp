<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<body>
        <!-- Content wrapper -->
        <div class="content-wrapper" id="reservation" style="display: none">

          <!-- Contents -->
          <div class="container-xxl flex-grow-1 container-p-y">
            <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">고객관리 / </span>예약내역</h4>

            <!-- Table -->
            <div class="card">
              <div class="table-responsive text-nowrap">
                <table class="table table-hover">
                  <caption><span id="total">0</span></caption>
                  <thead>
                    <tr>
                      <th>고객명</th>
                      <th>키워드</th>
                      <th>계약 기간</th>
                      <th>주소</th>
                      <th>채팅</th>
                      <th>관리</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr class="long">
                      <td>이사랑</td>
                      <td>에어컨 청소</td>
                      <td>2022.05.01 ~ 2025.05.01</td>
                      <td>대전광역시 동구 자양동</td>
                      <td>
                        <button type="button" class="btn btn-secondary">
                          <i class="bx bx-comment-dots"></i>
                        </button>
                      </td>
                      <td><button type="button" class="btn btn-primary"><i class="bx bx-task"></i></button><button type="button" class="btn btn-outline-secondary">취소</button></td>
                    </tr>

                    <tr class="long">
                      <td>이사랑</td>
                      <td>에어컨 청소</td>
                      <td>2022.05.01 ~ 2025.05.01</td>
                      <td>대전광역시 동구 자양동</td>
                      <td>
                        <button type="button" class="btn btn-secondary">
                          <i class="bx bx-comment-dots"></i>
                        </button>
                      </td>
                      <td><button type="button" class="btn btn-primary"><i class="bx bx-task"></i></button><button type="button" class="btn btn-outline-secondary">취소</button></td>
                    </tr>

                    <tr class="long">
                      <td>이사랑</td>
                      <td>에어컨 청소</td>
                      <td>2022.05.01 ~ 2025.05.01</td>
                      <td>대전광역시 동구 자양동</td>
                      <td>
                        <button type="button" class="btn btn-secondary">
                          <i class="bx bx-comment-dots"></i>
                        </button>
                      </td>
                      <td><button type="button" class="btn btn-primary"><i class="bx bx-task"></i></button><button type="button" class="btn btn-outline-secondary">취소</button></td>
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