<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<body>
		<script type="text/javascript">
			const inquery_root= '#pager';
		</script>
        <!-- Content wrapper -->
        <div class="content-wrapper" id="inquery" style="display: none;">

          <!-- Contents -->
          <div class="container-xxl flex-grow-1 container-p-y">
            <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">고객관리 / </span>문의내역</h4>

            <!-- Table -->
            <div class="card">
              <div class="table-responsive text-nowrap">
                <table class="table table-hover" id="pager">
                  <caption><span id="total">0</span>건</caption>
                  <thead>
                    <tr>
                      <th class="order" data-order="userId">아이디</th>
                      <th class="order" data-order="keyName">키워드</th>
                      <th class="order" data-order="inqueryRegDate">날짜</th>
                      <th class="order" data-order="inqueryContents">문의 내용</th>
                      <th class="order">채팅</th>
                      <th class="order">관리</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr class="long empty_msg" style="display:none">
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
              <li class="page-item">
                <div class="page-link page-first" data-page="1">
                  <i class="tf-icon bx bx-chevrons-left"></i>
                </div>
              </li>
              <li class="page-item">
                <div class="page-link page-prev">
                  <i class="tf-icon bx bx-chevron-left"></i>
                </div>
              </li>
              <li class="page-item">
                <div class="page-link page-next">
                  <i class="tf-icon bx bx-chevron-right"></i>
                </div>
              </li>
              <li class="page-item">
                <div class="page-link page-last">
                  <i class="tf-icon bx bx-chevrons-right"></i>
                </div>
              </li>
            </ul>
          </nav>
          <!-- /Pagination -->

        </div>
        <!-- Content wrapper -->
</body>

