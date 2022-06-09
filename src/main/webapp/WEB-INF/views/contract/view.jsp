<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../include/header.jsp"></jsp:include>
<link rel="stylesheet" href="../../css/modal/contract.css">
<link rel="stylesheet" href="../../css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet" href="../../css/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet" href="../../css/demo.css" />

</head>
<body>
	<div id="wrap">
        <div id="section">
            <div id="content1">
                <div>계약서</div>
                <div>${item.contract.userName} (이하 “동”이라 한다)와 ${item.contract.coName} (이하 “행”이라 한다)는 다음과 같이 계약을 체결한다.</div>
            </div>

            <div id="content2">
                <div id="checkbox" class="mb-2 mt-2">
                	<c:forEach var="items" items="${item.coKey }">
	                	<div class="form-check">
	                		<input class="form-check-input" type="radio" name="keyCode" value="${items.keyCode}" 
	                			${item.contract.keyCode == items.keyCode ? 'checked' : ''} onclick="return(false);">
					 		<label class="form-check-label stop-dragging">${items.keyName}</label>
					 	</div>
                	</c:forEach>
                </div>
                <div class="mb-2 row">
                	<fmt:formatDate value="${item.contract.contractSdate}" pattern="yyyy-MM-dd" var="sdate" />
                	<fmt:formatDate value="${item.contract.contractEdate}" pattern="yyyy-MM-dd" var="edate" />
                    <label class="col-md-2 col-form-label">기간 </label>
                    <div class="col-md-10 col-form-label">
                      	<c:out value="${sdate }"/> ~ <c:out value="${edate }"></c:out>
                     </div>
                    
                </div>
                <div class="mb-2 row">
                    <label class="col-md-2 col-form-label">금액</label>
                    <div class="col-md-6 col-form-label">
                      ${item.contract.contractPay}
                    </div>
                </div>
                <div class="mb-2 basics">
                    <label class="col-form-label">기본사항</label>
                    <ul>
                    	<li>"행"은 지정된 기간안에 "동"에게 서비스를 제공해야한다. </li>
                    	<li>"행"은 지정된 기간안에 "동"에게 서비스를 제공하지 않을시 계약금에서 변상금액을 공제해야한다. </li>
                    	<li>"동"은 "행"이 작업하는 기간동안 안전사고 발생시 "동"의 책임하에 피해보상하고 "동"은 책임지지않는다.</li>
                    	<li>"동"은 "행"이 기간동안 서비스 제공을 성실히 이행하지 않을 경우 수행 능력이 없다고 판단되면 중도해약을 요청할 수 있다.</li>
                    	<li>상기 계약의 사항 이외는 특약사항으로 정하며, 일반사항과 특약사항이 상충되는 경우 특약사항을 우선하여 적용하도록 한다.</li>
                    </ul>
                </div>
                <div class="mb-4">
                    <label class="col-form-label">특약사항</label>
                    <div>${item.contract.contractContents}</div>
                </div>
            </div>
            <div id="content3">
                <div><fmt:formatDate value="${item.contract.contractDay }" pattern="yyyy년 MM일 dd일"/></div>
                <div class="append">
	                 <div>동</div>
	                 <div id="userCode">고객명 : ${item.contract.userName}</div>
	                 <div>연락처 : ${item.contract.userPhone}</div>
	                 <div>주소 :${item.contract.contractAddress }</div>
              	</div>
             	<div class="append" style="margin : 0 0 0 20px;">
	                  <div>행</div>
	                  <div>회사명 : ${item.contract.coName}</div>
	                  <div>연락처 : ${item.contract.coPhone}</div>
	                  <div>주소 : ${item.contract.coAddress}</div>
              	</div>
            </div>
            <div id="button">
                <button class="btn btn-primary btn-lg" id="addContract">계약서 전송</button>
            </div>
        </div>
    </div>
</body>
</html>