<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!//선언부는 첫 방문자에 의해서 단 한번 수행합니다.
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String uid = "system";
	String pass = "1111";
	String sql = "select * from research where name=?";%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="table.css" rel="stylesheet" type="text/css" />
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String sename = request.getParameter("sname");

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, uid, pass);
			stmt = conn.prepareStatement(sql);
			//(4 단계) 바인딩 변수를 채운다.
			stmt.setString(1, sename);
			rs = stmt.executeQuery();
			if (rs.next()) {
				out.println("<tr>");
				out.println("<td>아이디</td>");
				out.println("<td class=sp>" + rs.getString("id") + "</a></td>");
				out.println("</tr>");
				
				out.println("<tr>");
				out.println("<td>나이</td>");
				out.println("<td class=sp>" + rs.getString("age") + "</td>");
				out.println("</tr>");
				
				out.println("<tr>");
				out.println("<td>성별</td>");
				out.println("<td class=sp>" + rs.getString("gender") + "</td>");
				out.println("</tr>");
				
				out.println("<tr>");
				out.println("<td>도시</td>");
				out.println("<td class=sp>" + rs.getString("city") + "</td>");
				out.println("</tr>");
				
				out.println("<tr>");
				out.println("<td colspan><a href ='javascript:history.go(-1)'>이전</a></td>");
				out.println("</tr>");
				

			}
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
		} //finally의 끝
	%>
</body>
</html>