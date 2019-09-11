<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<%!Connection conn = null;
	PreparedStatement pstmt = null;
	String url = "jdbc:oracle:thin:@10.0.0.10:1521:orcl";
	String uid = "system";
	String pass = "1111";
	String sql = "insert into gesipan values(no.nextval,?, ?, ?, ?)";%>
		<%
			Date now = new Date();
			String id = (String) session.getAttribute("id");
		%>
		<%
			SimpleDateFormat sf = new SimpleDateFormat("yyyy년MM월dd일 E요일 a hh:mm:ss");
			request.setCharacterEncoding("UTF-8");
			String title = request.getParameter("title");
			String write = request.getParameter("contents");
			String when = sf.format(now);
			String use = request.getParameter("ifor");
			out.println(use + "<br>");
			out.println(id + "<br>");
			out.println(title + "<br>");
			out.println(when + "<br>");
			out.println(write + "<br>");
		%>
		<%
			
			// 반드시 web-inf에 bin에저장해야 한다. 그리고 이클립스 갱신
			try {
				//(1 단계) JDBC 드라이버 로드
				Class.forName("oracle.jdbc.driver.OracleDriver");
				//(2 단계) 데이터베이스 연결 객체인 Connection 생성
				conn = DriverManager.getConnection(url, uid, pass);
				//(3 단계) Statement 객체 생성하기
				if(use.equals("공지(관리자 전용)")){
					pstmt = conn.prepareStatement("insert into gesipan values('0',?, ?, ?, ?)");
				}else{
					pstmt = conn.prepareStatement(sql);
				}
				//(4 단계) 바인딩 변수를 채운다.
				pstmt.setString(1, id);
				pstmt.setString(2, when);
				pstmt.setString(3, title);
				pstmt.setString(4, write);

				//(5단계) SQL문을 실행하여 결과 처리
				pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				//(6단계) 사용한 리소스 해제
				try {
					if (pstmt != null)
						pstmt.close();
					if (conn != null)
						conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}

				response.sendRedirect("./facebook_gesipan_list.jsp");
			} //finally의 끝
			
		%>
	</table>
</body>
</html>