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
	alert("ȸ�������� �Ϸ�Ǿ����ϴ�.");
	document.location.href='login';
	</script>
</c:if>
<c:if test="${i==2 }">
	<script type="text/javascript">
	alert("���̵� Ȥ�� ��й�ȣ�� ���� �ʽ��ϴ�.");
	document.location.href='login';
	</script>
</c:if>
<c:if test="${i==3 }">
	<script type="text/javascript">
	alert("�α׾ƿ��� �Ϸ�Ǿ����ϴ�.");
	document.location.href='login';
	</script>
</c:if>

</body>
</html>