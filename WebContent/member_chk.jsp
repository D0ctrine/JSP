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
	<%!Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String uid = "system";
	String pass = "1111";
	String sql = "select * from member where id=?";%>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("iid");

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, uid, pass);
			pstmt = conn.prepareStatement(sql);
			//(4 단계) 바인딩 변수를 채운다.
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
	%>
				<script type="text/javascript">
					alert("중복됨");
					history.go(-1);
				</script>
	<%
	
			}else{
			//	response.sendRedirect("member_input.jsp");  // 값을 넘길 수가 없다. 그래서 get방식으로 해줘야 한다.
			
				RequestDispatcher dispatcher = request.getRequestDispatcher("member_input.jsp");
				dispatcher.forward(request, response);  // member_form으로 받은 request정보를 그대로 forward, 클라이언트에게 응답하는 객체 실행결과를 브라우저에 되돌려 줄때
		
	
		/*		<jsp:forward page="member_input.jsp">
					<jsp:param value="Good" name="vvv"/>				
				</jsp:forward>  <!--  jsp 액션태그를 활용한 방법 -->
		*/	
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		} //finally의 끝
	%>
</body>
</html>