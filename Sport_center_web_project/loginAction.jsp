<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
		String userID = null; // session id
		
		String id = request.getParameter("U_ID");
		String pw = request.getParameter("U_PW");

		Class.forName("oracle.jdbc.OracleDriver");
		String DB_URL = "jdbc:oracle:thin:@localhost:1521:xe";
		String DB_USER = "SYSTEM";
		String DB_PASSWARD = "tndms82";
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", DB_USER, DB_PASSWARD);

		try {
			String query = "select U_PW from USERR where  USERR.U_ID = '" + id + "' ";
			System.out.println(query);
			System.out.println(pw);
			boolean n= false;
			PreparedStatement pst = conn.prepareStatement(query);
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				if (rs.getString("U_PW").equals(pw)) { // 로그인 성공 
					if(id.equals("admin")){ // 관리자 
						System.out.println("12345455555");
					
					%>
					<script type="text/javascript">
					alert("관리자님 환영합니다");
					document.location.href = "uad.jsp";
					</script>
					<%
					n = true;
					}
				
					if(session.getAttribute("userID") != null){
						userID = (String) session.getAttribute("userID");
					}
					
					if(userID != null){ // 로그인 중복 방지
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("alert('이미 로그인이 되어있습니다.')");
						script.println("location.href = 'test.jsp'");
						script.println("</script>");
					}
					
					session.setAttribute("userID", id);    
					
					if(n == false || userID != null){
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("location.href = 'test.jsp'");
					script.println("</script>");
					
					}
					n = true;
				} else { // 비밀번호 틀림
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('비밀번호가 틀립니다.')");
					script.println("history.back()");
					script.println("</script>");
				}
			}
			
			if(!n){
			// 아이디가 없음
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디입니다.')");
			script.println("history.back()");
			script.println("</script>");
			}
		} catch (Exception e) {
			System.out.println("오류다아아아~~~~~~~~~~~~~");
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('다시 해주세요')");
			script.println("history.back()");
			script.println("</script>");
		}
	%>

</body>
</html>