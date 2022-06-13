<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<body>
		<script type="text/javascript">
			const inquery_key = "userId"
		</script>
        <!-- Content wrapper -->
        <div class="content-wrapper" id="inquery" style="display: none;">

          <!-- Contents -->
          <div class="container-xxl flex-grow-1 container-p-y">
            <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">고객관리 / </span>문의내역</h4>

            <!-- Table -->
            <div class="card">
              <div class="table-responsive text-nowrap">
                <table class="table table-hover" id="inquery_table">
                  <caption><span id="total">0</span>건</caption>
                  <thead>
                    <tr>
                      <th class="order" data-order="userName" data-name="userName">고객명</th>
                      <th class="order" data-order="keyName" data-name="keyName">키워드</th>
                      <th class="order" data-order="inquryRegDate" data-name="inquryRegDate">날짜</th>
                      <th class="order" data-order="inquryContents" data-name="inquryContents">문의 내용</th>
                      <th>채팅</th>
                      <th>관리</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr class="long empty_msg" >
                    	<td colspan="6">문의 내역이 없습니다!</td>
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
</body>

