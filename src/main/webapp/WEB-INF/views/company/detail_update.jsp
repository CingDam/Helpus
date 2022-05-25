<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/js/jquery-3.6.0.min.js"></script>
<script src="/js/detail_add.js"></script>
<script>
	$(function(){
		 $("#add_image").click(function(){
			 $("#no_image").remove();
			 const div = $("<div>");
			 const label = $("<label>").text("사업장 이미지 : ");
			 const button = $("<button>").text("삭제");
			 button.attr("type","button");
			 const file = $("<input>").attr("type", "file");
			 file.attr("name", "detailImage");
			 
			button.click(function(){
				
				 $(this).parent().remove();
				 
			 });
			 
			
			 div.append(label);
			 div.append(button);
			 div.append(file);
			 
			 $("form > div:last-child").before(div);
			 //form 태그 안의 div중에 라스트 차일드
		 });
		 
		 $(".delete_image").click(function(){
			 const image_code = $(this).parent().val();
			 const filePath = $(this).parent().next().val();
			 console.log(filePath);
			 
			 $.ajax("detailImage_delete",{
				 method:"POST",
				 contentType:"application/json",
		         dataType:"json",
		         data:JSON.stringify({
		        	 imageCode:image_code,
		        	 filePath:filePath
		        	 })
			 })
			 
			 $(this).parent().remove();
		 });
	})
</script>
</head>
<body>
	<form method="post" id="detail_content" enctype="multipart/form-data">
		<div>
			<label>내용</label>
			<div>
				<textarea name="detailContents">${item.detailContents}</textarea>
			</div>
		</div>
		<div>
			<label>카테고리</label>
			<select name="cateCode" id="category">
				<option>카테고리를 선택해주세요</option>
				<c:forEach var="cate" items="${cateList}" >
					<option value="${cate.cateCode}" ${item.cateCode == cate.cateCode  ? 'selected' : ''}>${cate.cateName}</option>
				</c:forEach>
			</select>
		</div>
		<div class="keywordlist">
					
		</div>
		<div>
			<button type="button" id="add_image">추가</button>
			<c:if test="${images == null || images.size() < 1}">
				<li style="list-style : none" id="no_image">등록 된 이미지가 없습니다</li>
			</c:if>
			<c:forEach var="image" items="${images}">
				<div>
					<li style="list-style : none" value="${image.imageCode}">${image.filename}<button type="button" class="delete_image">삭제</button></li>
					<input type="hidden" value="${image.uuid}_${image.filename}">			
				</div>
			</c:forEach>
		</div>
	<div>
		<button id="submit">변경하기</button>
	</div>
	</form>

</body>
</html>