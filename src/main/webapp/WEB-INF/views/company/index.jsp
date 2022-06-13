<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
<title>Helpus</title>

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap"
	rel="stylesheet">

<!-- Icons -->
<link rel="stylesheet" href="../fonts/boxicons.css" />
<script src="https://kit.fontawesome.com/0c375d6c23.js"
	crossorigin="anonymous"></script>

<!-- CSS -->
<link rel="stylesheet" href="../css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet" href="../css/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet" href="../css/demo.css" />
<link rel="stylesheet" href="../css/modal/contract.css" />
<link rel="stylesheet" href="../css/co_chat.css" />
<link href="../lib/datepicker/datepicker.min.css" rel="stylesheet"
	type="text/css" media="all">

<!-- JS -->
<script src="../js/helpers.js"></script>
<script src="../js/jquery-3.6.0.min.js"></script>
<script src="../lib/datepicker/datepicker.js"></script>
<script src="../lib/datepicker/datepicker.ko.js"></script>


<!-- Fullcalendar -->
<link href='../lib/calMain.css' rel='stylesheet' />
<script src='../lib/calMain.js'></script>
<script src='../lib/calKO.js'></script>

<script>
	var co_code = ${sessionScope.company.coCode};
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			locale : "en",
			editable : false,
			selectable : true,
			businessHours : true,
			dayMaxEvents : true, // allow "more" link when too many events
			select : function(arg) {
				var start = arg.startStr;
				console.log(start);
					
				$("#schedule").empty();
				$.ajax("/calendar/sch",{
					method: "POST",
					dataType: "json",
					contentType: "application/json",
					data: JSON.stringify({
						coCode : co_code,
						start : start
					}),
					success: (result) => {
						if(result != null){
							$.each(result, function(index, item){
								let contents = '<div class="mb-4">'
								contents += '<div class="card">'
								contents += '<div class="row row-bordered g-0">'
								contents += '<div class="col-md-4">'
								contents += '<h4 class="card-header">'
								contents += item.start
								contents += '</h4>'
								contents += '</div>'
								contents += '<div class="col-md-8">'
								contents += '<div class="d-flex justify-content-between">'
								contents += '<div class="schedule">'
								contents += '<div class="small">'
								contents += item.keyName
								contents += '</div>'
								contents += '<div>'
								contents += item.userName
								contents += '</div>'
								contents += '</div>'
								contents += '<button class="btn p-0">'
								contents += '<i class="bx bx-dots-vertical-rounded"></i>'
								contents += '</button>'
								contents += '</div>'
								contents += '</div>'
								contents += '</div>'
								contents += '</div>'
								contents += '</div>'
								
								$("#schedule").append(contents);
							})//each end
						}//if end
					}
				})//select ajax end
			},
			eventClick : function(arg) {
				// 있는 일정 클릭시,
				console.log("#등록된 일정 클릭#");
				console.log(arg.event);

				
			},
			events : function(info, successCallback, failureCallback){
				
				$.ajax("/calendar/calList/" + co_code,{
		        	   method: "POST",
		        	   dataType: "json",		        	  
		        	   success: (result) => {
		        		  var events = [];
		        		  
		        		  if(result != null){
		        			  $.each(result, function(index, item){
		        				  events.push({
		        					  title : item.start.split(" ")[1] + " " + item.userName+"님",
		        					  start : item.start,
		        					  end : item.end,
		        					  textColor : "white",
		        					  allDay : true
		        				  })
		        			  })
		        		  }
		        		  console.dir(events)
		        		  
		        		  successCallback(events);
		        	   }
		        })
			}
			   
		});

		calendar.render();
	});
</script>
</head>

<body>
	<input type="hidden" value="${sessionScope.company.coCode}" id="coCode">
	<!-- Contract -->
	<jsp:include page="../include/modal/contract.jsp"></jsp:include>
	<!-- Contract -->
	<!-- Layout wrapper -->
	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">

			<!-- Menu -->
			<aside id="layout-menu"
				class="layout-menu menu-vertical menu bg-menu-theme">
				<div class="app-brand demo">
					<a href="/company/${sessionScope.company.coId}"
						class="app-brand-link"> <span
						class="app-brand-text demo menu-text fw-bolder ms-2"><img
							src="../img/logo.png"></span>
					</a>
				</div>

				<ul class="menu-inner py-1">
					<li class="menu-header small text-uppercase"><span
						class="menu-header-text">Navigation</span></li>

					<li class="menu-item active">
						<div class="menu-link">
							<i class="menu-icon fa-solid fa-calendar-check"></i>
							<div class="index">일정관리</div>
						</div>
					</li>

					<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon fa-solid fa-user-group"></i>
							<div>고객관리</div>
					</a>
						<ul class="menu-sub">
							<li class="menu-item">
								<div class="menu-link">
									<div class="inquery">문의내역</div>
								</div>
							</li>
							<li class="menu-item">
								<div class="menu-link">
									<div class="reservation">예약내역</div>
								</div>
							</li>
							<li class="menu-item">
								<div class="menu-link">
									<div class="complete">완료내역</div>
								</div>
							</li>
						</ul></li>

					<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon fa-solid fa-file-lines"></i>
							<div>서비스관리</div>
					</a>
						<ul class="menu-sub">
							<li class="menu-item"><a href="#" class="menu-link">
									<div>상품수정</div>
							</a></li>
							<li class="menu-item"><a href="#" class="menu-link">
									<div>리뷰내역</div>
							</a></li>
						</ul></li>

					<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon fa-solid fa-chart-simple"></i>
							<div>매출조회</div>
					</a>
						<ul class="menu-sub">
							<li class="menu-item"><a href="#" class="menu-link">
									<div>매출내역</div>
							</a></li>
							<li class="menu-item"><a href="#" class="menu-link">
									<div>월간매출</div>
							</a></li>
							<li class="menu-item"><a href="#" class="menu-link">
									<div>연간매출</div>
							</a></li>
							<li class="menu-item"><a href="#" class="menu-link">
									<div>납부내역</div>
							</a></li>
						</ul></li>
				</ul>
			</aside>
			<!-- / Menu -->

			<!-- Layout container -->
			<div class="layout-page">

				<!-- Navbar -->
				<nav
					class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
					id="layout-navbar">
					<div
						class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
						<a class="nav-item nav-link px-0 me-xl-4"
							href="javascript:void(0)"> <i class="bx bx-menu bx-sm"></i>
						</a>
					</div>

					<div class="navbar-nav-right d-flex align-items-center"
						id="navbar-collapse">

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
								<a class="nav-link dropdown-toggle hide-arrow"
								href="javascript:void(0);" data-bs-toggle="dropdown"> <i
									class="fa-solid fa-bell"></i>
							</a>
								<ul class="dropdown-menu dropdown-menu-end">
									<li><a class="dropdown-item" href="#"> <span
											class="align-middle">알림 N 개</span>
									</a></li>
									<li>
										<div class="dropdown-divider"></div>
									</li>
									<li><a class="dropdown-item" href="#"> <span
											class="align-middle">알림 내용</span>
									</a></li>
									<li><a class="dropdown-item" href="#"> <span
											class="align-middle">알림 내용</span>
									</a></li>
								</ul>
							</li>
							<!--/ Notice -->

							<!-- User -->
							<li class="nav-item navbar-dropdown dropdown-user dropdown">
								<a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
									<img src="../img/clean.jpg" class="w-px-40 h-px-40 rounded-circle btn-secondary" />
								</a>
								<ul class="dropdown-menu dropdown-menu-end">
									<li><a class="dropdown-item" href="#">
											<div class="d-flex">
												<div class="flex-shrink-0 me-3">
													<img src="../img/clean.jpg" class="w-px-40 h-px-40 rounded-circle shadow-sm" />
												</div>
												<div class="flex-grow-1">
													<small class="text-muted">대전 동구</small>
													<span class="fw-semibold d-block">클린앤클리어</span>
												</div>
											</div>
									</a></li>
									<li>
										<div class="dropdown-divider"></div>
									</li>
									<li><a class="dropdown-item" href="#"> <i
											class="bx bx-user me-2"></i> <span class="align-middle">마이페이지</span>
									</a></li>
									<li><a class="dropdown-item" href="#"> <i
											class="bx bx-cog me-2"></i> <span class="align-middle">설정</span>
									</a></li>
									<li>
										<div class="dropdown-divider"></div>
									</li>
									<li><a class="dropdown-item" href="../logout"> <i
											class="bx bx-power-off me-2"></i> <span class="align-middle">로그아웃</span>
									</a></li>
								</ul>
							</li>
							<!--/ User -->

						</ul>
					</div>
				</nav>
				<!-- / Navbar -->

				<!-- Content wrapper -->
				<div class="content-wrapper" id="index">

					<!-- Content -->
					<div class="container-xxl flex-grow-1 container-p-y">
						<div class="row">

							<!-- Content 1-->
							<div class="col-12 col-lg-9 order-md-1">
								<div class="card">
									<div class="card-body">
										<div id='calendar'></div>
									</div>
								</div>
							</div>
							<!--/ Content 1 -->

							<!-- Content 2 -->
							<div class="col-lg-3 order-2">
								<div class="row" id="schedule">

								</div>
							</div>
							<!-- /Content 2 -->

						</div>
					</div>
					<!-- Content -->

				</div>
				<!-- Content wrapper -->

				<!-- 문의내역  -->
				<jsp:include page="co_inqurylist.jsp"></jsp:include>
				<!-- /문의내역 -->
				<!-- 예약내역  -->
				<jsp:include page="co_reservationlist.jsp"></jsp:include>
				<!-- /예약내역 -->
				<!-- 완료내역 -->
				<jsp:include page="co_completelist.jsp"></jsp:include>
				<!-- /완료내역 -->
				<!-- 리뷰내역 -->
				<jsp:include page="co_reviewlist.jsp"></jsp:include>
				<!-- /리뷰내역 -->
				<!-- 회사소개 -->
				<jsp:include page="co_aboutco.jsp"></jsp:include>
				<!-- /회사소개 -->

			</div>
			<!-- / Layout page -->

		</div>
	</div>
	<!-- / Layout wrapper -->
	<!-- 회사소개 -->
	<jsp:include page="co_chat.jsp"></jsp:include>
	<!-- /회사소개 -->





	<!-- Footer -->
	<div class="footer">
		<div>
			<img src="../img/logo.png">
			<div>
				대전광역시 동구 가양동 우암로 352-21 <br> BRN. 000-00-00000 <br> <br>
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
	<script src="../js/bootstrap.js"></script>
	<script src="../js/menu.js"></script>

	<!-- Main JS -->
	<script src="../js/main.js"></script>
	<!-- function JS -->
	<script src="../js/company_func.js"></script>
	<script src="../js/modal/contract.js"></script>
	<script src="../js/co_chat_modal.js"></script>

	<!-- datepicker -->
	<script src="../lib/datepicker/datepicker.js"></script>
	<script src="../lib/datepicker/datepicker.ko.js"></script>

</body>
</html>
