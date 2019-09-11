<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%!//선언부는 첫 방문자에 의해서 단 한번 수행합니다.
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String url = "jdbc:oracle:thin:@10.0.0.10:1521:orcl";
	String uid = "system";
	String pass = "1111";
	String sql = "select * from gesipan where not no=0";%>

<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="utf-8">
<link href="table.css" rel="stylesheet" type="text/css" />
<title>BorderList</title>
<style>
table {
	margin-top: 50px;
	width: 700px;
	border-spacing: 1px;
	padding: 0px;
	margin-bottom: 50px;
	background-color: rgb(70, 65, 217);
}

.write table{
position: absolute;
left: 1000px;
top:100px;
width: 100px;

}
tr {
	background-color: rgb(246, 246, 246);
	height: 100px
}

h9 {
	color: rgba(70, 65, 217);
}

h9_1 {
	color: rgba(93, 93, 93);
}
</style>
</head>
<body>
	<%
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, uid, pass);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				out.println("<table align=center>");
				out.println("<tr>");
				out.println("<th rowspan='2'>" + "<img src='./img/profile.png' width=120 height=120>" + "</th>");
				out.println("<th colspan='2'>" + "<h9>" + rs.getString("id") + "</h9>" + "</th>");
				out.println("</tr>");

				out.println("<tr>");
				out.println("<th colspan='2'>" + "<h9>" + rs.getString("dates") + "</h9>" + "</th>");
				out.println("</tr>");

				out.println("<tr>");
				out.println("<th colspan='2'>" + "<h9_1>" + rs.getString("title") + "</h9_1>" + "</th>");
				out.println("</tr>");

				out.println("<tr>");
				out.println("<th colspan='2'>" + "<h9_1>" + rs.getString("contents") + "</h9_1>" + "</th>");
				out.println("</tr>");
				out.println("</table>");
			} //while의 끝
		} catch (

		Exception e) {
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
	<div class="write">
	<table align="center">
		<tr>
			<td colspan=6 class=sp><a href="./facebook_gesipan.jsp">[글쓰기]</a>
			</td>
		</tr>
	</table>
	</div>
</body>
</html>