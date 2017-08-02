<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.io.PrintWriter"%>



<!DOCTYPE html>

<html lang="en">

<head>
<%
	request.setCharacterEncoding("UTF-8");
%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
.custab {
	border: 1px solid #ccc;
	padding: 5px;
	margin: 5% 0;
	box-shadow: 3px 3px 2px #ccc;
	transition: 0.5s;
}

.custab:hover {
	box-shadow: 3px 3px 0px transparent;
	transition: 0.5s;
}

input.hidden {
	position: absolute;
	left: -9999px;
}

#profile-image1 {
	cursor: pointer;
	width: 100px;
	height: 100px;
	border: 2px solid #03b1ce;
}

.tital {
	font-size: 16px;
	font-weight: 500;
}

.bot-border {
	border-bottom: 1px #f8f8f8 solid;
	margin: 5px 0 5px 0
}
</style>
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
			<!-- /.container-fluid -->
		</nav>
	</div>
	<!--  메인 바 -->



	<!--  마이 페이지 작성 -->
	<div class="container">
		<div class="jumbotron">

			<h2>회원 정보 조회</h2>
			<div class="btn-toobar pull-right" role="toolbar">
				<div class="btn-group" role="group" aria-label="First group">
					<button type="button" class="btn btn-default" onclick="check()">회원
						정보 수정</button>
					<button type="button" class="btn btn-danger"
						onclick="udelete()">회원 탈퇴</button>
						<script>
						function check(){
							document.location.href = "check.jsp";
						}
						function udelete(){
							document.location.href = "delete.jsp";
						}
						</script>
						
				</div>
			</div>
			<br> <br> <br> <br>
			<%
			  Class.forName("oracle.jdbc.OracleDriver");
			String DB_URL = "jdbc:oracle:thin:@localhost:1521:xe";
			String DB_USER = "SYSTEM";
			String DB_PASSWARD = "tndms82";
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", DB_USER, DB_PASSWARD);
				String query = "select * from USERR where U_ID = '" + userID + "'";

				System.out.println(query);

				PreparedStatement pst = conn.prepareStatement(query);
				ResultSet rs = pst.executeQuery();
			%>
			<!--  회원 정보 테이블 -->
			<div class="row">
				<div class="width:100%">

					<div class="panel panel-default">
						<div class="panel-heading">
							<h4>사용자 프로파일</h4>
						</div>
						<div class="panel-body">

							<div class="box box-info">
								<div class="box-body">
									<div class="col-sm-6">
										<span><p>
												<%
													while (rs.next()) {
												%>

												<td><%=rs.getString("UNAME")%></td>

												<%
													}
												%>
											</p></span>

									</div>
									<div class="clearfix"></div>
									<hr style="margin: 5px 0 5px 0;">


									<%
										Connection conn1 = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWARD);
										String query1 = "select * from USERR where U_ID = '" + userID + "'";

										System.out.println(query1);

										PreparedStatement pst1 = conn1.prepareStatement(query1);
										ResultSet rs1 = pst1.executeQuery();
									%>
									<div class="col-sm-5 col-xs-6 tital ">주민번호 앞자리 :</div>
									<div class="col-sm-7">

										<%
											while (rs1.next()) {
										%>

										<td><%=rs1.getString("UID_N")%></td>

										<%
											}
										%>
									</div>


									<div class="clearfix"></div>
									<div class="bot-border"></div>


									<%
										Connection conn2 = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWARD);
										String query2 = "select * from USERR where U_ID = '" + userID + "'";

										System.out.println(query2);

										PreparedStatement pst2 = conn2.prepareStatement(query2);
										ResultSet rs2 = pst2.executeQuery();
									%>

									<div class="col-sm-5 col-xs-6 tital ">휴대폰 번호 :</div>
									<div class="col-sm-7">
										<%
											while (rs2.next()) {
										%>

										<td><%=rs2.getString("UPHONE")%></td>

										<%
											}
										%>
										
									</div>
									<div class="clearfix"></div>
									<div class="bot-border"></div>
									<%
										Connection conn3 = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWARD);
										String query3 = "select * from USERR where U_ID = '" + userID + "'";

										System.out.println(query3);

										PreparedStatement pst3 = conn3.prepareStatement(query3);
										ResultSet rs3 = pst3.executeQuery();
									%>

									<div class="col-sm-5 col-xs-6 tital ">이메일 :</div>
									<div class="col-sm-7">
										<%
											while (rs3.next()) {
										%>

										<td><%=rs3.getString("U_MAIL")%></td>

										<%
											}
										%>
									</div>

									<!-- /.box-body -->
								</div>
								<!-- /.box -->

							</div>


						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--  마이 페이지 작성 -->
</body>
</html>