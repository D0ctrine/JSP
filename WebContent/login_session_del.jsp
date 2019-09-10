<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
	
	out.print("<hr> <h3> >>세션값을 삭제하기 전<< </h3> ");
	Enumeration names;
	names = session.getAttributeNames();
	while (names.hasMoreElements()) {
		String name = names.nextElement().toString();
		String value = session.getAttribute(name).toString();
		out.println(name + " : " + value + "<br>");
	}
	// 이름을 지정하여 세션에 저장된 객체를 제거합니다.
	session.removeAttribute("id");
	session.removeAttribute("name");
	
	out.print("<hr> <h3> >>세션값을 삭제한 후<< </h3> ");
	names = session.getAttributeNames();
	while (names.hasMoreElements()) {
		String name = names.nextElement().toString();
		String value = session.getAttribute(name).toString();
		out.println(name + " : " + value + "<br>");
	}
	%>
	<script type="text/javascript">
		alert("세션삭제");
	</script>
	<%	
//	response.sendRedirect("login_ok_session.jsp");
	%>

</body>
</html>