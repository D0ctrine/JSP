<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>상품 관리</title>
<link rel="stylesheet" type = "text/css" href="css/shopping.css">
<script type="text/javascript" src="script/product.js">
function productCheck(){
	if(document.frm.content.value.length==0){
		alert("본문을 작성해주세요.");
		frm.content.focus();
		return false;
	}
	if(document.frm.url.value==0){
		alert("사진을 첨부해주세요.");
		frm.pictureUrl.focus();
		return false;
	}
return true;
}

</script>
</head>
<body>
<div id="wrap" align="center">
<h1>게시물 올리기</h1>
<form method="post" enctype="multipart/form-data" action="fileUpload" name="frm">
<table>
<tr>
	<th>게 시 물</th>
	</tr>
	<tr>
	</tr>
	<tr></tr>
	<tr>
	<th> 본문  </th>
	<td><input type="text" name="content" size="40"></td>
	</tr>
	<tr></tr>
	<tr>
	<th> 사  진  </th>
	<td><input type="file" name="url"><br>
	(주의사항 : 이미지를 변경하고자 할때만 선택하시오)
	</td>
	<td>
	</td>
	</tr>
</table>
<br>
<input type="submit" value="등록" onclick="return productCheck()">
<input type="reset" value="다시작성">
<input type="button" value="목록" onclick="location.href='list'">
</form>
</div>
</body>
</html>