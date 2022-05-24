<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/js/jquery-3.6.0.min.js"></script>
<script>
	let keyNum = null
</script>
<script src="/js/detail_add.js"></script>
<script>
	$(function(){
		 $("#add_image").click(function(){
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
	})
</script>
</head>
<body>
	<form method="post" id="detail_content" enctype="multipart/form-data">
		<div>
			<label>내용</label>
			<textarea name="detailContents"></textarea>
		</div>
		<div>
			<label>카테고리</label>
			<select name="cateCode" id="category">
				<option>카테고리를 선택해주세요</option>
				<c:forEach var="cate" items="${cateList}" >
					<option value="${cate.cateCode }">${cate.cateName}</option>
				</c:forEach>
			</select>
		</div>
		<div>
			<label>사업장 이미지 : <button id="add_image" type="button">추가</button> </label>
			<input type="file" name="detailImage">
		</div>
	<div id="submit">
		<button >등록하기</button>
	</div>
	</form>

</body>
</html>