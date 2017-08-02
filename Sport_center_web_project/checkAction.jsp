<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE>
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
		response.setCharacterEncoding("UTF-8");

		String pw = request.getParameter("U_PW");
		String phone = request.getParameter("UPHONE");
		String mail = request.getParameter("U_MAIL");


		Class.forName("oracle.jdbc.OracleDriver");
		String DB_URL = "jdbc:oracle:thin:@localhost:1521:xe";
		String DB_USER = "SYSTEM";
		String DB_PASSWARD = "tndms82";
		

		try {
			Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWARD);
			String query = "update USERR set U_PW = '"+pw+"' where U_ID = '"+userID+"' ";
			System.out.println(query);
			PreparedStatement pst = conn.prepareStatement(query);
			ResultSet rs = pst.executeQuery();
			
			Connection conn1 = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWARD);
			String query1 = "update USERR set UPHONE = '"+phone+"' where U_ID = '"+userID+"' ";
			System.out.println(query1);
			PreparedStatement pst1 = conn1.prepareStatement(query1);
			ResultSet rs1 = pst1.executeQuery();
			
			Connection conn2 = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWARD);
			String query2 = "update USERR set U_MAIL = '"+mail+"' where U_ID = '"+userID+"' ";
			System.out.println(query2);
			PreparedStatement pst2 = conn2.prepareStatement(query2);
			ResultSet rs2 = pst2.executeQuery();

				//회원가입 성공
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('회원수정 완료')");
				script.println("location.href = 'mypage_user.jsp'");
				script.println("</script>");

		} catch (Exception e) {
			System.out.println("오류다아아아~~~~~~~~~~~~~");
		}
	%>

</body>
</html>