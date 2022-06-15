<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="include/header.jsp"></jsp:include>
<c:if test="${!empty msg}">
	<script>
		$(function(){
			var msg = "<c:out value='${msg}'/>";
			alert(msg);
		});

	</script>
</c:if>
<link rel="stylesheet"
	href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />
<link rel="stylesheet" href="./css/mainpage.css">
<script src="https://kit.fontawesome.com/fecf148447.js" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="include/header_body.jsp"></jsp:include>
	<div class="banner">
		<div class="banner_write">
			<p class="frist_line">무엇을 도와드릴까요?</p>
			<p class="second_line">믿을 수 있는 당신 근처의 전문가</p>
		</div>
		<form method="post" action="/list">
			<input class="search_bar" type="text" name="keyword" placeholder="검색어를 입력하세요">
			<i class="fa-solid fa-magnifying-glass" style="color: #555"></i>
		</form>
		<div class="top_search">
			<c:forEach var="item" items="${key}" end="8">
				<div class="keyword">#${item.keyName}</div>
			</c:forEach>
		</div>
	</div>
	<div class="cate_list_box">
		<ul>
			<c:forEach var="item" items="${cate}" end="7">
				<li>
					<img class="circle" src="./img/category/${item.cateImg }"/>
					<div class="cate_name">${item.cateName }</div>
				</li>
			</c:forEach>
		</ul>
	</div>
	<div class="day_key swiper">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<div class="text_box">
					<p class="subhead">오늘은 대청소 하는 날</p>
					<p class="text">
						침대는 주기적으로 청소해야 합니다.<br>
						특히 매트리스에는 몸에서 떨어져 나온 각질과<br>
						미세먼지, 수많은 진드기들이 있습니다.<br>
					</p>
					<button class="day_key_submit">신청하기</button>
				</div>
				<div class="img_box">
					<p class="subhead">침대/매트리스 청소</p>
					<img src="../img/swiper1.png">
				</div>
			</div>
			<div class="swiper-slide">
				<div class="text_box">
					<p class="subhead">오늘은 대청소 하는 날</p>
					<p class="text">
						관리하지 않은 에어컨은 곰팡이와 세균의 세상입니다.
						이는 곧 알레르기나 호흡기 증상을 악화시킵니다.<br>
						최소 2주에 한 번씩 청소하는 것이 좋습니다.
					</p>
					<button class="day_key_submit">신청하기</button>
				</div>
				<div class="img_box">
					<p class="subhead">에어컨 청소</p>
					<img src="../img/swiper2.jpg">
				</div>
			</div>
			<div class="swiper-slide">
				<div class="text_box">
					<p class="subhead">오늘은 대청소 하는 날</p>
					<p class="text">
						세탁기는 습기로 인해 곰팡이가 서식하기 쉽습니다.<br>
						곰팡이가 생기면 빨래에 냄새가 나게 됩니다.<br>
						또한, 아토피와 피부염을 유발할 수 있습니다.
					</p>
					<button class="day_key_submit">신청하기</button>
				</div>
				<div class="img_box">
					<p class="subhead">세탁기 청소</p>
					<img src="../img/swiper3.jpg">
				</div>
			</div>
		</div>
		<!-- <div class="swiper-pagination"></div> -->
	</div>
	<div class="local_popul_service">
		<p>우리 지역 인기 서비스</p>
		<ul>
			<li>
				<div class="contents">
					<img class="content" src="../img/service1.png"></img>
					<div class="text_box">
						<p class="subhead">아이러브독</p>
						<p class="keyword">강아지 산책</p>
						<div class="star_box">
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
						</div>
					</div>
					
				</div>
			</li>
			<li>
				<div class="contents">
					<img class="content" src="../img/service2.png"></img>
					<div class="text_box">
						<p class="subhead">해피하우스</p>
						<p class="keyword">도배 장판 시공</p>
						<div class="star_box">
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
						</div>
					</div>
				</div>
			</li>
			<li>
				<div class="contents">
					<img class="content" src="../img/service3.png"></img>
					<div class="text_box">
						<p class="subhead">클래식바이올린</p>
						<p class="keyword">바이올린 레슨</p>
						<div class="star_box">
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
						</div>
					</div>
				</div>
			</li>
			<li>
				<div class="contents">
					<img class="content" src="../img/service4.png"></img>
					<div class="text_box">
						<p class="subhead">이사천국</p>
						<p class="keyword">원룸 이사</p>
						<div class="star_box">
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
							<i class="fa-solid fa-star"></i>
						</div>
					</div>
				</div>
			</li>
		</ul>
	</div>
	<div>
		<img class="banner_2" src="./img/banner_2.png">
	</div>

	<div class="useful_func swiper">
		<div class="swiper-scrollbar"></div>
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<div class="img_box">
					<img class="img_1" src="../img/company1.png"></img>
				</div>
				<div class="text_box">
					<p class="subhead">자동화된 일정 관리</p>
					<p class="text">
						이리저리 복잡한 근무 일정 😥 <br>
						중요한 고객과의 스케줄이 잡히면 <br>
						자동으로 일정을 기록해 드립니다.
					</p>
					<button class="useful_func_submit">시작하기</button>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="img_box">
					<img class="img_1" src="../img/company1.png"></img>
				</div>
				<div class="text_box">
					<p class="subhead">자동화된 일정 관리</p>
					<p class="text">
						이리저리 복잡한 근무 일정 😥 <br>
						중요한 고객과의 스케줄이 잡히면 <br>
						자동으로 일정을 기록해 드립니다.
					</p>
					<button class="useful_func_submit">시작하기</button>
				</div>
			</div>
			<div class="swiper-slide">
				<div class="img_box">
					<img class="img_1" src="../img/company1.png"></img>
				</div>
				<div class="text_box">
					<p class="subhead">자동화된 일정 관리</p>
					<p class="text">
						이리저리 복잡한 근무 일정 😥 <br>
						중요한 고객과의 스케줄이 잡히면 <br>
						자동으로 일정을 기록해 드립니다.
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
					<div class="content swiper-zoom-container"  data-swiper-zoom="5">
						<div class="img_box">
							<img src="../img/review5.png">
						</div>
						<div class="text_box">
							<p class="name">rodi***</p>
							<p class="text">청소 정말 깨끗하게 잘 해주셨어요 :) 믿고 맡길 수 있는 클린앤클리어 추천합니다!</p>
							<div class="star_box">
								<i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="content swiper-zoom-container">
						<div class="img_box">
							<img src="../img/review6.png">
						</div>
						<div class="text_box">
							<p class="name">vnda***</p>
							<div class="star_box">
								<i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
							</div>
							<p class="text">하루 종일 아이와 노느라 지치실 텐데 항상 밝게 놀아주시는 모습에 앞으로 만나고 싶다는 생각이 들었어요</p>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="content swiper-zoom-container">
						<div class="img_box">
							<img src="../img/review7.png">
						</div>
						<div class="text_box">
							<p class="name">mini***</p>
							<p class="text">갑작스러운 예약에도 불구하고 멋진 파티 만들어주셔서 정말 감사합니다.<br>생일인 친구도 만족했어요.</p>
							<div class="star_box">
								<i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="content swiper-zoom-container">
						<div class="img_box">
							<img src="../img/review3.png">
						</div>
						<div class="text_box ">
							<p class="name">aka***</p>
							<p class="text">원하는 디자인으로 만족스럽게 시공해주셨어요 😍😍😍<br>하자도 없는지 꼼꼼하게 봐주셨고요
							</p>
							<div class="star_box">
								<i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide">
					<div class="content swiper-zoom-container">
						<div class="img_box">
							<img src="../img/review4.png">
						</div>
						<div class="text_box">
							<p class="name">happ***</p>
							<p class="text">에어컨 설치가 필요했는데 매뉴얼대로 설치해 주시고 일일이 설명해 주셔서 정말 좋았습니다.</p>
							<div class="star_box">
								<i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
								<i class="fa-solid fa-star"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 로그인 -->
	<jsp:include page="include/modal/login.jsp"/>
	<!-- 회원가입 -->
	<jsp:include page="include/modal/signup.jsp"/>
	<!-- 채팅 -->
	<jsp:include page="include/chat.jsp"/>
	<!-- 푸터 -->
	<jsp:include page="include/footer.jsp"/>
	<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
	<script src="./js/mainPage.js"></script>
</body>
</html>
