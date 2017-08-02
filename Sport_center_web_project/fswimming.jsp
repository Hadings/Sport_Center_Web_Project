<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>수영시설 예약</title>
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
		//로그인이 된사람들을 위함
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

			<!--  왼쪽 상단 메뉴 바  -->
			<div class="navbar-collapse collapse" id="navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="test.jsp">Home <span
							class="sr-only">(current)</span></a></li>


					<li class="dropdown"><a href="" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">시설<span
							class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li class="divider">
							<li><a href="facility.jsp">시설 정보</a></li>
							<li class="divider">
							<li><a href="allf.jsp">시설 예약 신청</a></li>
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
							<li><a href="mypage_user.jsp">회원정보</a></li>
							<li class="divider">
							<li><a href="mypage1.jsp">시설 예약 조회</a></li>
							<li class="divider">
							<li><a href="mypage2.jsp">강좌 예약 조회</a></li>
						</ul></li>
				</ul>
				<%
					if (userID == null) {
				%>
				<!--  왼쪽 상단 메뉴 바  -->
				<ul class="nav navbar-nav navbar-right">
					<li><a href="login.jsp">로그인</a></li>
					<li><a href="join.jsp">회원가입 </a></li>
				</ul>

				<%
					} else {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="logout.jsp">로그아웃</a></li>

				</ul>
				<%
					}
				%>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid --> </nav>
	</div>
	<!--  메인 바 -->

	<div class="container" style=margin-top:100px; >
		<div style="width: 600px; height:400px; margin:auto;">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
					<li data-target="#myCarousel" data-slide-to="4"></li>

				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner">

					<div class="item active">
						<img src="./Resources/images/PS01.jpg" style="width: 100%;"
							alt="image_2">
					</div>
					<div class="item">
						<img src="./Resources/images/PS02.jpg" style="width: 100%;"
							,alt="image_2">
					</div>
					<div class="item">
						<img src="./Resources/images/PS03.jpg" style="width: 100%;"
							,alt="image_2">
					</div>
					<div class="item">
						<img src="./Resources/images/PS04.jpg" style="width: 100%;"
							,alt="image_2">
					</div>
					<div class="item">
						<img src="./Resources/images/PS05.jpg" style="width: 100%;"
							,alt="image_2">
					</div>
					
					
					
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
		</div>


	<!--  table  -->
	<div class="container">
		<div class="" style="width: 100%">
			<table class="table table-striped custab">
				<h3>- 1일 자유수영</h3>
				</div>

				<%
					Class.forName("oracle.jdbc.OracleDriver");
					String DB_URL = "jdbc:oracle:thin:@localhost:1521:xe";
					String DB_USER = "SYSTEM";
					String DB_PASSWARD = "tndms82";
					Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", DB_USER, DB_PASSWARD);

					String query = "select * from facility natural join f_schedule where fno like 'F1%'";

					PreparedStatement pst = conn.prepareStatement(query);
					ResultSet rs = pst.executeQuery();
				%>
				<div class="row">
					<div class="span8">

						<table style="width: 100%" class="table table-striped custab">
							<thead>
								<tr>
									<th>시설이름</th>
									<th>시설위치</th>
									<th>가능날짜</th>
									<th class="text-center">예약</th>

								</tr>
							</thead>
							<tbody>
								<%
									while (rs.next()) {
								%>

								<form  action="fadd.jsp" method="get">
								<tr>
				
									<td><input type="hidden" name="FNO"
										value=<%=rs.getString("fno")%>><%=rs.getString("f_NAME")%></td>
									<td><%=rs.getString("locationn")%></td>
									<td><%=rs.getString("f_time")%> 명</td>
									<td><input type="submit" class='btn btn-info btn-xs' value="예약하기"></td>
								</tr>

								<%
									}
								%>
								
							</tbody>
						</table>
					</div>
				</div>
				</div>
				<!--  table  -->
</body>
</html>
