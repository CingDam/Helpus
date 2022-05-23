<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="include/header.jsp"></jsp:include>
<c:if test="${msg != null}">
	<script>
		window.onload = function() {
			alert("${msg}")
		}
	</script>
</c:if>
<link rel="stylesheet"
	href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
<link rel="stylesheet" href="./css/mainpage.css">
</head>
<body>
	<jsp:include page="include/header_body.jsp"></jsp:include>
	<div class="banner">
		<div class="banner_write">
			<p class="frist_line">무엇을 도와드릴까요?</p>
			<p class="second_line">믿을 수 있는 당신 근처의 전문가</p>
		</div>
		<form method="post" action="/list">
			<input class="search_bar" type="text" name="keyword"
				placeholder="검색어를 입력하세요">
		</form>
	</div>
	<div class="cate_list_box">
		<ul>
			<li>
				<div class="circle"></div>
				<div class="cate_name">카테고리</div>
			</li>
			<li>
				<div class="circle"></div>
				<div class="cate_name">카테고리</div>
			</li>
			<li>
				<div class="circle"></div>
				<div class="cate_name">카테고리</div>
			</li>
			<li>
				<div class="circle"></div>
				<div class="cate_name">카테고리</div>
			</li>
			<li>
				<div class="circle"></div>
				<div class="cate_name">카테고리</div>
			</li>
			<li>
				<div class="circle"></div>
				<div class="cate_name">카테고리</div>
			</li>
			<li>
				<div class="circle"></div>
				<div class="cate_name">카테고리</div>
			</li>
		</ul>
	</div>
	<div class="day_key swiper">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<div class="text_box">
					<p class="subhead">오늘은 대청소 하는 날</p>
					<p class="text">
						침대는 주기적으로 청소청소 대청소 대청소<br> 매트리스에는 수많은 세균세균<br> 청소청소 미세먼지
						진드기 청소청소
					</p>
					<button class="day_key_submit">신청하기</button>
				</div>
				<div class="img_box">
					<p class="subhead">침대/매트리스 청소</p>
					<div class="img_1"></div>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="text_box">
					<p class="subhead">오늘은 대청소 하는 날</p>
					<p class="text">
						침대는 주기적으로 청소청소 대청소 대청소<br> 매트리스에는 수많은 세균세균<br> 청소청소 미세먼지
						진드기 청소청소
					</p>
					<button class="day_key_submit">신청하기</button>
				</div>
				<div class="img_box">
					<p class="subhead">에어콘 청소</p>
					<div class="img_2"></div>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="text_box">
					<p class="subhead">오늘은 대청소 하는 날</p>
					<p class="text">
						침대는 주기적으로 청소청소 대청소 대청소<br> 매트리스에는 수많은 세균세균<br> 청소청소 미세먼지
						진드기 청소청소
					</p>
					<button class="day_key_submit">신청하기</button>
				</div>
				<div class="img_box">
					<p class="subhead">세탁기 청소</p>
					<div class="img_3"></div>
				</div>
			</div>
		</div>
		<div class="swiper-pagination"></div>
	</div>
	<div class="local_popul_service">
		<p>우리 지역 인기 서비스</p>
		<ul>
			<li>
				<div class="contents">
					<div class="content"></div>
					<div class="text_box">
						<p class="subhead">클린앤클리어</p>
						<p class="keyword">침대/메트릭스 청소</p>
					</div>
				</div>
			</li>
			<li>
				<div class="contents">
					<div class="content"></div>
					<div class="text_box">
						<p class="subhead">클린앤클리어</p>
						<p class="keyword">침대/메트릭스 청소</p>
					</div>
				</div>
			</li>
			<li>
				<div class="contents">
					<div class="content"></div>
					<div class="text_box">
						<p class="subhead">클린앤클리어</p>
					</div>
				</div>
			</li>
			<li>
				<div class="contents">
					<div class="content"></div>
					<div class="text_box">
						<p class="subhead">클린앤클리어</p>
					</div>
				</div>
			</li>
		</ul>
	</div>
	<div>
		<img class="banner_2" src="./image/banner_2.png">
	</div>

	<div class="useful_func swiper">
		<div class="swiper-scrollbar"></div>
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<div class="img_box">
					<div class="img_1"></div>
				</div>
				<div class="text_box">
					<p class="subhead">사업자 예약 관리</p>
					<p class="text">
						내가 언제 예약했는지 모르겠다면?<br> 여기로 가시면 다 있습니다
					</p>
					<button class="useful_func_submit">시작하기</button>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="img_box">
					<div class="img_2"></div>
				</div>
				<div class="text_box">
					<p class="subhead">리뷰 작성하러 가기</p>
					<p class="text">
						아직 리뷰를 작성 안하셨나요?<br> 여기로 가시면 다 있습니다
					</p>
					<button class="useful_func_submit">시작하기</button>
				</div>
			</div>
		</div>
	</div>
	<div class="review_box">
		<p>리뷰</p>
		<div class="content_box swiper">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div class="content">
						<div class="img_box">
							<img>
						</div>
						<div class="text_box">
							<p class="name">wpdnjs***</p>
							<p class="text">청소 정말 잘해줘요</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="content">
						<div class="img_box">
							<img>
						</div>
						<div class="text_box">
							<p class="name">rodi***</p>
							<p class="text">처음 사용해보는데 청소 정말 깔끔하게 해주고 친절하세요</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="content">
						<div class="img_box">
							<img>
						</div>
						<div class="text_box">
							<p class="name">dlshr***</p>
							<p class="text">청소 깔끔하게 해주셔서 추천합니다</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="content">
						<div class="img_box">
							<img>
						</div>
						<div class="text_box">
							<p class="name">qorthd***</p>
							<p class="text">청소하시는 분들이 열심히 청소하시고 깔끔하게 해주세요</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="content">
						<div class="img_box">
							<img>
						</div>
						<div class="text_box">
							<p class="name">dbstkd***</p>
							<p class="text">내집 처럼 열심히 해줘요</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
	<script src="./js/mainPage.js"></script>
</body>
</html>
