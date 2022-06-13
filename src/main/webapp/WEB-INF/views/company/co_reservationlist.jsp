<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<body>
		<script type="text/javascript">
			const reservation_key = "userName"
		</script>

        <!-- Content wrapper -->
        <div class="content-wrapper" id="reservation" style="display: none">

          <!-- Contents -->
          <div class="container-xxl flex-grow-1 container-p-y">
            <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">고객관리 / </span>예약내역</h4>

            <!-- Table -->
            <div class="card">
              <div class="table-responsive text-nowrap">
                <table class="table table-hover" id="pager_rez">
                  <caption><span id="total">0</span></caption>
                  <thead>
                    <tr>
                      <th class="order_rez" data-order="userName" data-name="userName">고객명</th>
                      <th class="order_rez" data-order="keyName" data-name="keyName">키워드</th>
                      <th class="order_rez" data-order="contractAddress" data-name="contractAddress">주소</th>
                      <th>계약 기간</th>
                      <th>채팅</th>
                      <th>관리</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr class="long empty_msg">
                      <td>예약된 고객이 없습니다!</td>
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
                <div class="page-link" data-page="1">
                  <i class="tf-icon bx bx-chevrons-left"></i>
                </div>
              </li>
              <li class="page-item prev">
                <div class="page-link">
                  <i class="tf-icon bx bx-chevron-left"></i>
                </div>
              </li>
              <li class="page-item next">
                <div class="page-link">
                  <i class="tf-icon bx bx-chevron-right"></i>
                </div>
              </li>
              <li class="page-item last">
                <div class="page-link">
                  <i class="tf-icon bx bx-chevrons-right"></i>
                </div>
              </li>
            </ul>
          </nav>
          <!-- /Pagination -->

        </div>
        <!-- Content wrapper -->