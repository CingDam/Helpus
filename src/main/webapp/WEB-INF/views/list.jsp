<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

  <!-- Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">

  <!-- Icons -->
  <link rel="stylesheet" href="fonts/boxicons.css" />
  <script src="https://kit.fontawesome.com/0c375d6c23.js" crossorigin="anonymous"></script>

  <!-- CSS -->
  <link rel="stylesheet" href="css/search.css">
  <link rel="stylesheet" href="css/header.css">
  <link rel="stylesheet" href="css/core.css" class="template-customizer-core-css" />
  <link rel="stylesheet" href="css/theme-default.css" class="template-customizer-theme-css" />
  <jsp:include page="include/header.jsp"></jsp:include>
</head>

<body>
    <!-- Header -->
    <jsp:include page="include/header_body.jsp"></jsp:include>
    <div id="line"></div>
    <!-- /Header -->

    <!-- Content wrapper -->
    <div id="wrap">
  
        <!-- Contents -->
        <div class="row">

            <!-- Content 1 -->
            <form class="col-lg-3">
                <hr>
                <div class="row">
                    <div class="mb-4 col-md-6">
                        <select class="form-select form-select-lg">
                            <option>시/도</option>
                            <option value="1">One</option>
                        </select>
                    </div>
                    <div class="mb-4 col-md-6">
                        <select class="form-select form-select-lg">
                            <option>구/군</option>
                            <option value="2">One</option>
                        </select>
                    </div>
                </div>
                <div class="mb-4">
                    <select class="form-select form-select-lg">
                        <option>카테고리</option>
                        <option value="3">One</option>
                    </select>
                </div>
                <div class="mb-4">
                    <select class="form-select form-select-lg">
                        <option>키워드</option>
                        <option value="4">One</option>
                    </select>
                </div>
                <button class="btn btn-secondary btn-lg">검색</button>
            </form>
            <!--/ Content 1 -->
        
            <!-- Content 2-->
            <div class="col-lg-9 search_list">
                <div id="cap">
                    <span>총 ${pager.total } 건</span>
                    <div><i class="fa-solid fa-arrow-right-arrow-left fa-rotate-90"></i>평점순</div>
                </div>
               <c:if test="${list.size() < 1}">
               		<hr>
		                <div class="list">
		                	<div>검색된 결과가 없습니다!</div>
		                </div>
		            <hr>
               </c:if>
               <c:forEach var="item" items="${list}">
	               	<hr>
	               		<a href = "detail/view/${item.coCode }">
			                <div class="list">
			                    <img src="img/${item.coProfile }" onerror="this.src='img/basic_img.png'" class="shadow-sm"/>
			                    <div class="text">
			                     <div>
			                    	<c:forEach var="cokey" items="${item.coKey }">
			                        	<span>#${cokey.keyName }</span>
			                        </c:forEach>
			                      </div>
			                        <div>${item.coName}</div>
			                        <div>${item.detailShorts }</div>
			                    </div>
			                    <div>
			                        <i class="fa-solid fa-star"></i>
			                        <span>${item.reviewScore }</span>
			                    </div>
			                </div>
		                </a>
	                <hr>
               </c:forEach> 

            </div>
            <!--/ Content 2 -->
            
        </div>
        <!-- Contents -->

        <!-- Pagination -->
        <nav aria-label="Page navigation">
            <ul class="pagination justify-content-center">
                <li class="page-item first">
                    <a class="page-link" href="?page=1">
                    <i class="tf-icon bx bx-chevrons-left"></i>
                    </a>
                </li>
                <li class="page-item prev">
                    <a class="page-link" href="?page=${pager.prev}&${pager.query}">
                    <i class="tf-icon bx bx-chevron-left"></i>
                    </a>
                </li>
                <c:forEach  var="page" items="${pager.list}">
                	<li class="page-item ${page == pager.page ? 'active' : ''}">
                    	<a class="page-link" href="?page=${page}">${page}</a>
                	</li>
                </c:forEach>
                <li class="page-item next">
                    <a class="page-link" href="?page=${pager.next}&${pager.query}">
                    <i class="tf-icon bx bx-chevron-right"></i>
                    </a>
                </li>
                <li class="page-item last">
                    <a class="page-link" href="?page=${pager.last}&${pager.query}">
                    <i class="tf-icon bx bx-chevrons-right"></i>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /Pagination -->
        
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
   	<!-- 로그인 -->
	<jsp:include page="include/modal/login.jsp"/>
	<!-- 회원가입 -->
	<jsp:include page="include/modal/signup.jsp"/>
    <!-- /Footer -->
    <jsp:include page="include/chat.jsp"/>
</body>
</html>