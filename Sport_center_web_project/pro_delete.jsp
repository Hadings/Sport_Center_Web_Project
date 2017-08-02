<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		//로그인이 된사람들을 위함
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
	<%

	Class.forName("oracle.jdbc.OracleDriver");
	String DB_URL = "jdbc:oracle:thin:@localhost:1521:xe";
	String DB_USER = "SYSTEM";
	String DB_PASSWARD = "tndms82";
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", DB_USER, DB_PASSWARD);

		String query = "delete from p_rev where u_id = '"+userID+"'";

		try {
			PreparedStatement pst = conn.prepareStatement(query);

			ResultSet rs = pst.executeQuery();
			
			rs.close();
			pst.close();

			Statement stmt = conn.createStatement();
			stmt.execute("commit");
			stmt.close();
			conn.close();
			

			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('강좌 수강을 취소 하셨습니다.')");
			script.println("location.href = 'mypage_user.jsp'");
			script.println("</script>");
		} catch (Exception e) {
	%>
	<script type="text/javascript">
		alert("오류 발생");
		history.back();
	</script>

	<%
		}
	%>

</body>
</html>