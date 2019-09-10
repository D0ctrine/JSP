<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%--
    // html+css 기반에서 jsp문법이 필요할때는 <%  
	// <% 여기에는 jsp문법을 입력
	<%   %>  // java 문법 
	<%!  %>  //선언 해당 페이지를 처음 실행할때 한번만 선언이 된다.
	<%@	    //지시자 속성을 지정하거나 import같은 경우는 
	<%= %> // 문자형태로 출력하는 뜻
--%>
<%!
	int cnt=1;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
 <meta http-equiv="Refresh" content="1; url=./test1.jsp"/>
<title>Insert title here</title>
</head>
<body>
<%
	int num1=10;
	int num2=20;
	int sum = num1+num2;
	
	/*for(int i=0; i < 10; i++){
		out.print(i);
	}*/
	
	out.print(cnt+"초 후 이동합니다");
	cnt++;
	num1++;
%>
<%=num1 %>
<% out.print(num1); %>
</body>
</html>