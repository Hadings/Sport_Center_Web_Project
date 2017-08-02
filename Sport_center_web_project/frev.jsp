<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>수영ㅋ</title>
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

			<!--  왼쪽 상단 메뉴 바  -->
			<div class="navbar-collapse collapse" id="navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="test.html">Home <span class="sr-only">(current)</span></a></li>
					

					<li class="dropdown"><a href="" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">시설<span
							class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="facility.jsp">시설 정보</a></li>
							<li><a href="#">시설 예약 신청</a></li>
						</ul></li>
					<li class="dropdown"><a href="" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">강좌<span
							class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="teacher.jsp">강사 소개</a></li>
							<li class="divider">
							<li><a href="program.jsp">강좌 일정</a></li>
							<li class="divider">
							<li><a href="allp.jsp">강좌 예약하기</a></li>
						</ul></li>
					<li class="dropdown"><a href="" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">마이페이지<span
							class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="mypage_user.jsp">수강신청 현황</a></li>
							<li><a href="#">수강 이력</a></li>
							<li><a href="#">환불 신청 현황</a></li>
							<li class="divider">
							<li><a href="#">시설 예약 신청 현황</a></li>
						</ul></li>
				</ul>
				<!--  왼쪽 상단 메뉴 바  -->
				<ul class="nav navbar-nav navbar-right">
					<li><a href="login.html">로그인</a></li>
					<li><a href="resistration.html">회원가입 </a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid --> </nav>
	</div>


	<!--  table  -->
	<div class="container">
		<div class="" style="width: 100%">
		<table class="table table-striped custab">
			<h3>- 전체 시설 예약</h3>
		</div>

		<%
		Class.forName("oracle.jdbc.OracleDriver");
		String DB_URL = "jdbc:oracle:thin:@localhost:1521:xe";
		String DB_USER = "SYSTEM";
		String DB_PASSWARD = "tndms82";
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", DB_USER, DB_PASSWARD);

			String query = "select * from facility natural join F_SCHEDULE";

			PreparedStatement pst = conn.prepareStatement(query);
			ResultSet rs = pst.executeQuery();
		%>
		<div class="row">
			<div class="span8">

				<table style="width:100%" class="table table-striped custab">
					<thead>
						<tr>
							<th>시설이름</th>
							<th>시설 위치</th>
							<th>가능 날짜</th>
							<th class="text-center">예약</th>
							
						</tr>
					</thead>

					<%
						while (rs.next()) {
					%>
					<tbody>
						<tr>
							<td><%=rs.getString("F_NAME")%></td>
							<td><%=rs.getString("locationn")%></td>
							<td><%=rs.getString("F_time")%></td>
							<td><span ><a href="rev.html">예약하기</a></span></td>

						</tr>
					</tbody>
					<%
						}
					%>
				</table>
			</div>
		</div>
	</div>
	<!--  table  -->

</body>
</html>
