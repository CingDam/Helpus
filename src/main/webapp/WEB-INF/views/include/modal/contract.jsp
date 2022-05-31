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
                <div>김사랑 (이하 “동”이라 한다)와 클린앤클리어 (이하 “행”이라 한다)는 다음과 같이계약을 체결한다.</div>
            </div>

            <div id="content2">
                <div class="mb-2 row">
                    <label class="col-md-2 col-form-label">기간 </label>
                    <div class="col-md-6">
                      <input class="form-control" type="text"/>
                    </div>
                </div>
                <div class="mb-5 row">
                    <label class="col-md-2 col-form-label">금액</label>
                    <div class="col-md-6 won">
                      <input class="form-control" type="text"/>
                    </div>
                </div>
                <div id="checkbox">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="1"/>
                        <label class="form-check-label" for="1">세탁기 청소</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="2"/>
                        <label class="form-check-label" for="2">에어컨 청소</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="3"/>
                        <label class="form-check-label" for="3">냉장고 청소</label>
                    </div>
                </div>
                <div class="mb-2 basics">
                    <label class="col-form-label">기본사항</label>
                    <ul>
                    	<li>"행"은 지정된 기간안에 "동"에게 서비스를 제공해야한다. </li>
                    	<li>"행"은 지정된 기간안에 "동"에게 서비스를 제공하지 않을시 계약금에서 변상금액을 공제해야한다. </li>
                    	<li>"동"은 "행"이 작업하는 기간동안 안전사고 발생시 "동"의 책임하에 피해보상하고 "동"은 책임지지않는다. </li>
                    	<li>"동"은 "행"이 기간동안 서비스 제공이 성실히 이행하지 않을 경우 수행 능력이 없다고 인정된 경우 중도해약이 가능할 수 있다.</li>
                    	<li>상기 계약의 사항 이외는 특약사항으로 정하며, 일반사항과 특약사항이 상충되는 경우 특약사항을 우선하여 적용하도록 한다</li>
                    </ul>
                </div>
                <div class="mb-4">
                    <label class="col-form-label">특약사항</label>
                    <textarea class="form-control" rows="3"></textarea>
                </div>
            </div>
            <div id="content3">
            	<jsp:useBean id="now" class="java.util.Date" />
            	<fmt:formatDate value="${now}" pattern="yyyy년 MM월 dd일" var="today" />
                <div><c:out value="${today }"></c:out></div>
                <div>
                    <div>동</div>
                    <div>고객명 : 김사랑</div>
                    <div>연락처 : 010-1234-1324</div>
                    <div class="row">
                        <label class="col-md-2">주소 :</label>
                        <div class="col-md-6">
                          <input class="form-control" type="text"/>
                        </div>
                    </div>
                </div>
                <div>
                    <div>행</div>
                    <div>고객명 : 김사랑</div>
                    <div>연락처 : 010-1234-1324</div>
                    <div>주소 : 대전 동구 가양동 우암로 352-21</div>
                </div>
            </div>
            <div id="button">
                <button class="btn btn-primary btn-lg">계약서 전송</button>
            </div>
        </div>
    </div>
</div>
</body>