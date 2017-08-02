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
		response.setCharacterEncoding("UTF-8");

		String id = request.getParameter("U_ID");
		String pw = request.getParameter("U_PW");
		String name = request.getParameter("UNAME");
		String phone = request.getParameter("UPHONE");
		String mail = request.getParameter("U_MAIL");
		String uid_n = request.getParameter("UID_N");

		  Class.forName("oracle.jdbc.OracleDriver");
			String DB_URL = "jdbc:oracle:thin:@localhost:1521:xe";
			String DB_USER = "SYSTEM";
			String DB_PASSWARD = "tndms82";
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", DB_USER, DB_PASSWARD);

		try {

			boolean n = false;
			String query = "select U_ID from USERR";
			System.out.println(query);
			PreparedStatement pst = conn.prepareStatement(query);
			ResultSet rs = pst.executeQuery();

			if (rs.next()) {
				if (rs.getString(1).equals(id)) { // 아이디 중복
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('아이디가 중복됩니다.')");
					script.println("history.back()");
					script.println("</script>");
					n = true;
					rs.close();
					pst.close();
					conn.close();
				}
			}
			if (!n) {
				Connection conn1 = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWARD);
				String query1 = "insert into USERR values('" + id + "', '" + pw + "','" + name + "','" + phone
						+ "','" + mail + "','" + uid_n + "' )";
				System.out.println(query1);
				PreparedStatement pst1 = conn1.prepareStatement(query1);
				ResultSet rs1 = pst1.executeQuery();

				//회원가입 성공
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('회원가입 성공')");
				script.println("location.href = 'test.html'");
				script.println("</script>");
			}

		} catch (Exception e) {
			System.out.println("오류다아아아~~~~~~~~~~~~~");
		}
	%>

</body>
</html>