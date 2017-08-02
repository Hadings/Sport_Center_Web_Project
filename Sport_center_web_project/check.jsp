<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">

<meta name="viewport" content="width=device.width" ,initial-scale="1">
<link rel="stylesheet" href="./Resources/css/bootstrap.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./Resources/css/carousel-inner.css">
<link
	href="https//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">


</head>
<title>정보 수정</title>


<body>
	<%
		response.setCharacterEncoding("UTF-8");
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

	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post" action="checkAction.jsp">
					<h3 style="text-align: center;">회원 정보 수정</h3>


					<div class="form-group">
						<input type="password" class="form-control" placeholder="새로운 비밀번호"
							name="U_PW" maxlength="20" required>
					</div>


					<div class="form-group">
						<input type="text" class="form-control" placeholder="새로운 핸드폰 번호"
							name="UPHONE" maxlength="20" required>
					</div>

					<div class="form-group">
						<input type="email" class="form-control" placeholder="새로운 이메일"
							name="U_MAIL" maxlength="20" required>
					</div>


					<input type="submit" class="btn btn-primary form-control"
						value="회원 정보 수정">
				</form>
			</div>
		</div>
	</div>


	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>

</body>
</html>
