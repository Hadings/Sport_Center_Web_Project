
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String fno = request.getParameter("FNO");

	Class.forName("oracle.jdbc.OracleDriver");
	String DB_URL = "jdbc:oracle:thin:@localhost:1521:xe";
	String DB_USER = "SYSTEM";
	String DB_PASSWARD = "tndms82";
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", DB_USER, DB_PASSWARD);

		String query = "delete from facility where fno = ?";

		try{
		PreparedStatement pst = conn.prepareStatement(query);
		pst.setString(1, fno);

		ResultSet rs = pst.executeQuery();
		rs.close();
		pst.close();

		Statement stmt = conn.createStatement();
		stmt.execute("commit");
		stmt.close();
		conn.close();
		
		response.sendRedirect("fad.jsp");
		}catch(Exception e) {
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