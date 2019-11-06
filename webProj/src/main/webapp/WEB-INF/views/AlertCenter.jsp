<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:if test="${i==1 }">
	<script type="text/javascript">
	alert("회원가입이 완료되었습니다.");
	document.location.href='login';
	</script>
</c:if>
<c:if test="${i==2 }">
	<script type="text/javascript">
	alert("아이디 혹은 비밀번호가 맞지 않습니다.");
	document.location.href='login';
	</script>
</c:if>
<c:if test="${i==3 }">
	<script type="text/javascript">
	alert("로그아웃이 완료되었습니다.");
	document.location.href='login';
	</script>
</c:if>

</body>
</html>