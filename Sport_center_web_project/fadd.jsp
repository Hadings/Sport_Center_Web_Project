
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.io.PrintWriter"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	response.setCharacterEncoding("UTF-8");
		//로그인이 된사람들을 위함
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
	
	<%
		String fno = request.getParameter("FNO");
		System.out.println(fno);
		Class.forName("oracle.jdbc.OracleDriver");
		String DB_URL = "jdbc:oracle:thin:@localhost:1521:xe";
		String DB_USER = "SYSTEM";
		String DB_PASSWARD = "tndms82";
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", DB_USER, DB_PASSWARD);

		String query = "insert into f_rev values(?,'"+userID+"')";
		System.out.println(query);
		try {
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setString(1, fno);

			ResultSet rs = pst.executeQuery();
			rs.close();
			pst.close();

			Statement stmt = conn.createStatement();
			stmt.execute("commit");
			stmt.close();
			conn.close();

			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('수강 등록 되셨습니다.')");
			script.println("location.href = 'test.jsp'");
			script.println("</script>");
		} catch (Exception e) {
	%>
	<script type="text/javascript">
		alert("로그인을 하셔야 합니다.");
		history.back();
	</script>

	<%
		}
	%>
</body>
</html>