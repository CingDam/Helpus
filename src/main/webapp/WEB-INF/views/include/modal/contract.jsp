<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<body>
<div class="modal_background_contract" id="modal_contract">
	 <div id="wrap">
	    <div class="closeBtn" id="closeBtn_contract">&times;</div>
        <div id="section">
            <div id="content1">
                <div>계약서</div>
            </div>

            <div id="content2">
                <div id="checkbox" class="mb-2 mt-2">

                </div>
                <div class="mb-2 row">
                    <label class="col-md-2 col-form-label">기간 </label>
                    <div class="col-md-4">
                      <input type="text" name="contractSdate" class="form-control pointer" id="sdate" placeholder="날짜를 선택해주세요" autocomplete="off">
                    </div>
                    <div class="col-md-4">
                      <input type="text" name="contractEdate" class="form-control pointer" id="edate" placeholder="날짜를 선택해주세요" autocomplete="off">
                    </div>
                </div>
                <div class="mb-2 row">
                    <label class="col-md-2 col-form-label">금액</label>
                    <div class="col-md-6 won">
                      <input class="form-control" type="text"/ name="contractPay">
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
                    <textarea class="form-control" rows="3" name="contractContents"></textarea>
                </div>
            </div>
            <div id="content3">
            	<jsp:useBean id="now" class="java.util.Date" />
            	<fmt:formatDate value="${now}" pattern="yyyy년 MM월 dd일" var="today" />
                <div><c:out value="${today}"></c:out></div>
            </div>
            <div id="button">
                <button class="btn btn-primary btn-lg" id="addContract">계약서 전송</button>
            </div>
        </div>
    </div>
</div>
</body>