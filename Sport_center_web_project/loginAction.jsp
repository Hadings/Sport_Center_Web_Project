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
				if (rs.getString("U_PW").equals(pw)) { // �α��� ���� 
					if(id.equals("admin")){ // ������ 
						System.out.println("12345455555");
					
					%>
					<script type="text/javascript">
					alert("�����ڴ� ȯ���մϴ�");
					document.location.href = "uad.jsp";
					</script>
					<%
					n = true;
					}
				
					if(session.getAttribute("userID") != null){
						userID = (String) session.getAttribute("userID");
					}
					
					if(userID != null){ // �α��� �ߺ� ����
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("alert('�̹� �α����� �Ǿ��ֽ��ϴ�.')");
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
				} else { // ��й�ȣ Ʋ��
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('��й�ȣ�� Ʋ���ϴ�.')");
					script.println("history.back()");
					script.println("</script>");
				}
			}
			
			if(!n){
			// ���̵� ����
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('�������� �ʴ� ���̵��Դϴ�.')");
			script.println("history.back()");
			script.println("</script>");
			}
		} catch (Exception e) {
			System.out.println("�����پƾƾ�~~~~~~~~~~~~~");
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('�ٽ� ���ּ���')");
			script.println("history.back()");
			script.println("</script>");
		}
	%>

</body>
</html>