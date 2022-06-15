<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
  <title>상세</title>

  <!-- Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">

  <!-- Icons -->
  <link rel="stylesheet" href="../../fonts/boxicons.css" />
  <script src="https://kit.fontawesome.com/0c375d6c23.js" crossorigin="anonymous"></script>

  <!-- CSS -->
  <link rel="stylesheet" href="../../css/search.css">
  <link rel="stylesheet" href="../../css/core.css" class="template-customizer-core-css" />
  <link rel="stylesheet" href="../../css/theme-default.css" class="template-customizer-theme-css" />
  <jsp:include page="../include/header.jsp"></jsp:include>
</head>

<body>
   <jsp:include page="../include/header_body.jsp"></jsp:include>

    <!-- Content wrapper -->
    <div id="wrap">
  
        <!-- Contents -->
        <div class="container-p-y">
            <div class="row">
            
            <!-- Content 1-->
            <div class="col-lg-9">
                <div class="card">
                    <div class="card-body">
                        <div class="mb-5 row">
                            <label class="col-md-2 col-form-label">한줄 소개글</label>
                            <div class="col-md-10">
                            	<c:if test="${item.detailShorts == null }">
                                	소개글이 없습니다
                                </c:if>
                                ${item.detailShorts }
                            </div>
                        </div>

                        <div class="mb-5 row">
                            <label class="col-md-2 col-form-label">제공 서비스</label>
                            <div class="col-md-10 tag" id="keyword">
                            
                            </div>
                        </div>

                        <div class="mb-5 row">
                            <label class="col-md-2 col-form-label">상세 소개글</label>
                            <div class="col-md-10">
                                <c:if test="${item.detailContents == null }">
                                	소개글이 없습니다
                                </c:if>
                                ${item.detailContents }
                            </div>
                        </div>

                        <div class="mb-5 row">
                            <label class="col-md-2 col-form-label">사진 및 동영상</label>
                            <div class="col-md-10" id="img">
                                <div class="row row-cols-4 g-2">
                                    <div>
                                        <img class="card-img shadow-sm" src="../../img/detail2.jpg"/>
                                    </div>
                                    <div>
                                        <img class="card-img shadow-sm" src="../../img/detail1.jpg"/>
                                    </div>
                                    <div>
                                        <img class="card-img shadow-sm" src="../../img/detail3.jpg"/>
                                    </div>
                                    <div>
                                        <img class="card-img shadow-sm" src="../../img/detail4.png"/>
                                    </div>
                                    <div>
                                        <img class="card-img shadow-sm" src="../../img/detail5.jpg"/>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="mb-5 row">
                            <label class="col-md-2 col-form-label">리뷰</label>
                            <div class="col-md-10 rank">
                                <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                                <div><strong>5.0</strong></div>
                                <div> | 84 개의 리뷰</div>
                                <hr>
                                
                                <div class="rlist">
                                    <div class="review">
                                        <span>lilpa***</span>
                                        <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                                        <span> | 22.02.15</span>
                                        <div>
                                            <img src="../../img/review1.jpg">
                                            <img src="../../img/review2.jpg">
                                        </div>
                                        <div class="rtext">깨끗하게 에어컨 청소해 주시고, 청소 후 바닥에 떨어진 물도 깨끗이 닦아주셨습니다. 경력이 오래되셔서 그런지 확실히 분해, 조립 깔끔하게 하시네요. 감사합니다.</div>
                                        <hr>
                                    </div> 
                                </div>

                                <div class="rlist">
                                    <div class="review">
                                        <span>rodi***</span>
                                        <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                                        <span> | 22.05.15</span>
                                        <div class="rtext">세탁기가 깨끗해져서 만족스럽습니다.</div>
                                        <hr>
                                    </div> 
                                </div>

                                <div class="rlist">
                                    <div class="review">
                                        <span>areas***</span>
                                        <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                                        <span> | 22.05.15</span>
                                        <div class="rtext">정말 정말 친절하시고 설명도 잘해주시고 엄청 좋아요! 다음에 필요할 때도 이용할게요~</div>
                                        <hr>
                                    </div> 
                                </div>

                                

                                
                                
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!--/ Content 1 -->

            <!-- Content 2 -->
            <div class="col-lg-3">
                <div class="row">
                    <div class="mb-4">
                        <div class="card text-center">
                            <div class="card-body">
                                <img src="../../img/clean.jpg" class="profile rounded mb-4 shadow">
                                <h4>${item.coName }</h4>
                                <div class="text-muted">대전 동구</div>
                            </div>
                        </div>
                    </div>

                    <div class="d-grid">
                        <button class="btn btn-primary btn-lg" type="button">문의하기</button>
                    </div>
                </div>
            </div>
            
            <!--/ Content 2 -->
            
            </div>
        </div>
        <!-- Contents -->

        
    </div>
    <!-- Content wrapper -->

    <!-- Footer -->
    <div id="footer">
        <div id="fnav">
            <div>
                <img src="img/logo.png">
                <div>
                    대전광역시 동구 가양동 우암로 352-21 <br>
                    BRN. 000-00-00000 <br><br>
                    COPYRIGHT 2022. HELPUS. ALL RIGHTS RESERVED.
                </div>
            </div>
            <div>
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
    </div>
    <!-- /Footer -->
    <!-- 로그인 -->
	<jsp:include page="../include/modal/login.jsp"/>
	<!-- 회원가입 -->
	<jsp:include page="../include/modal/signup.jsp"/>
    <jsp:include page="../include/chat.jsp"/>
</body>
</html>