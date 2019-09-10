<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%!//선언부는 첫 방문자에 의해서 단 한번 수행합니다.
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String uid = "system";
	String pass = "1111";
	String sql = "select * from fbgesipan";%>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="utf-8">
<link href="table.css" rel="stylesheet" type="text/css"/>
<title>Insert title here</title>
</head>
<body>
<table  align=center>
	<tr>
		<th>아이디</th>
		<th>제목</th>
		<th>본문</th>
		<th>날짜</th>
		<th>수정/삭제</th>
	</tr>
	<%
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url, uid, pass);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);		
		while (rs.next()) {
			out.println("<tr>");
			out.println("<td class=sp><a href='./01_research_view.jsp?sid="+
							rs.getString("id")+"'>"+rs.getString("id")+"</a></td>");
			out.println("<td class=sp>" + rs.getString("when") + "</td>");
			out.println("</tr>");
			out.println("<tr>");
			out.println("<td class=sp>" + rs.getString("title") + "</td>");
			out.println("<td class=sp>" + rs.getString("write") + "</td>");
			out.println("</tr>");
		}//while의 끝
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}//finally의 끝	
	
	
	%>
	<tr>
		<td colspan=6  class=sp><a href="./facebook_gesipan.jsp">[글쓰기]</a> </td>
	</tr>
</table>
</body>
</html>