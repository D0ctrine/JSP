<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
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
<%!	
	Connection conn = null;
	PreparedStatement pstmt = null;
	PreparedStatement pstmt2 = null;
	ResultSet rs = null;
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String uid = "system";
	String pass = "1111";
	String sql = "select id fbmember where id=?";
	String sql2 = "select password fbmember where id=?";
%>	
<%

	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String password = request.getParameter("pw");
	


	

%>
<%
	    // 반드시 web-inf에 bin에저장해야 한다. 그리고 이클립스 갱신
		try {
			//(1 단계) JDBC 드라이버 로드
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//(2 단계) 데이터베이스 연결 객체인 Connection 생성
			conn = DriverManager.getConnection(url, uid, pass);

			//(3 단계) Statement 객체 생성하기
			pstmt = conn.prepareStatement(sql);
			pstmt2 = conn.prepareStatement(sql2);
			//(4 단계) 바인딩 변수를 채운다.
			pstmt.setString(1, id);
			pstmt2.setString(1, id);
			
			//(5단계) SQL문을 실행하여 결과 처리
			int k = pstmt.executeUpdate();
			rs = pstmt2.executeQuery();
			out.println(rs.next());
			while (rs.next()) {
				if(k>0){
					if(rs.getString("password").equals(password)){
						out.println("<tr>");
						out.println("<td>로그인성공</td>");
						out.println(password+" 1 <br>");
						out.println("<td>" + rs.getString("id")+"님 어서오세요~" + "</td>");
						out.println("</tr>");	
						response.sendRedirect("./facebook_main.jsp");
					}else{
						out.println(password+" 2 <br>");
						out.println("<tr>");
						out.println("<td>로그인에 실패하였습니다. 다시 시도하세요.</td>");
						out.println("</tr>");	
						response.sendRedirect("./facebook_login.jsp");
					}
					
				}else{
					out.println(password+" 3 <br>");
					out.println("<tr>");
					out.println("<td>해당 아이디가 없습니다. 다시 입력해주세요.</td>");
					out.println("</tr>");
					response.sendRedirect("./facebook_login.jsp");
				}
				
			
				

			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			//(6단계) 사용한 리소스 해제
			try {
				if (pstmt != null)
					pstmt.close();
				if (pstmt2 != null)
					pstmt2.close();
				if (conn != null)
					conn.close();
				if (rs != null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
		}//finally의 끝
	%>
	</table>
</body>
</html>