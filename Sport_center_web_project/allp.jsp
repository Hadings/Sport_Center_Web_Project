<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>��ü ����</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>


<body>
	<%
		//�α����� �Ȼ������ ����
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
	<div class="container">
		<h2>Sport Center</h2>

		<nav class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>

				<!--  ���� ��� �޴� ��  -->
				<div class="navbar-collapse collapse" id="navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="test.jsp">Home <span
								class="sr-only">(current)</span></a></li>


						<li class="dropdown"><a href="" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">�ü�<span
								class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
							<li class="divider">
								<li><a href="facility.jsp">�ü� ����</a></li>
								<li class="divider">
								<li><a href="allf.jsp">�ü� ���� ��û</a></li>
							</ul></li>
						<li class="dropdown"><a href="" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">����<span
								class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="teacher.jsp">���� �Ұ�</a></li>
								<li class="divider">
								<li><a href="program.jsp">���� ����</a></li>
								<li class="divider">
								<li><a href="allp.jsp">���� �����ϱ�</a></li>
							</ul></li>
						<li class="dropdown"><a href="" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">����������<span
								class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="mypage_user.jsp">ȸ������</a></li>
								<li class="divider">
								<li><a href="mypage1.jsp">�ü� ���� ��ȸ</a></li>
								<li class="divider">
								<li><a href="mypage2.jsp">���� ���� ��ȸ</a></li>
							</ul></li>
					</ul>
					<%
						if (userID == null) {
					%>
					<!--  ���� ��� �޴� ��  -->
					<ul class="nav navbar-nav navbar-right">
						<li><a href="login.jsp">�α���</a></li>
						<li><a href="join.jsp">ȸ������ </a></li>
					</ul>

					<%
						} else {
					%>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="logout.jsp">�α׾ƿ�</a></li>

					</ul>
					<%
						}
					%>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
	</div>
	<!--  ���� �� -->



	<div class="container">
		<div class="" style="width: 100%">
			<h3>��ü ����</h3>
		</div>
		<br>
		<br>
		

		<%
		Class.forName("oracle.jdbc.OracleDriver");
		String DB_URL = "jdbc:oracle:thin:@localhost:1521:xe";
		String DB_USER = "SYSTEM";
		String DB_PASSWARD = "tndms82";
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", DB_USER, DB_PASSWARD);

			String query = "select * from p_schedule natural join  programm join teacher on teacher.tno = programm.tno where pno like 'P%'";

			PreparedStatement pst = conn.prepareStatement(query);
			ResultSet rs = pst.executeQuery();
		%>
		<div class="row">
			<div class="span8">

				<table style="width: 100%"
					class="table table-striped table-condensed">
					<thead>
						<tr>
							<th class="text-center">���α׷�</th>
							<th class="text-center">���α׷� ����</th>
							<th class="text-center">���α׷� �ο�</th>
							<th class="text-center">���α׷� ����</th>
							<th class="text-center">�����̸�</th>
							<th class="text-center">����</th>
						</tr>
					</thead>

					<%
						while (rs.next()) {
					%>
					<tbody>
						<tr>
							<td class="text-center"><%=rs.getString("PNAME")%></td>
							<td class="text-center"><%=rs.getString("P_TIME")%></td>
							<td class="text-center"><%=rs.getInt("p_people")%> ��</td>
							<td class="text-center"><%=rs.getInt("p_price")%> ��</td>
							<td class="text-center"><%=rs.getString("TNAME")%></td>
							<td class="text-center"><a class='btn btn-info btn-xs'
								href="#"><span class="glyphicon glyphicon-edit"></span> �����ϱ�</a>
						</tr>
					</tbody>
					<%
						}
					%>
				</table>

			</div>
		</div>
		</div>
</body>
</html>
