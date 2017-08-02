<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
<meta charset="utf-8">
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
		<!--  using sql -->
			<%
			  Class.forName("oracle.jdbc.OracleDriver");
			String DB_URL = "jdbc:oracle:thin:@localhost:1521:xe";
			String DB_USER = "SYSTEM";
			String DB_PASSWARD = "tndms82";
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", DB_USER, DB_PASSWARD);

			String query = "select * from f_schedule natural join facility natural join f_rev where f_rev.U_ID = '"+userID+"'";

			PreparedStatement pst = conn.prepareStatement(query);
			ResultSet rs = pst.executeQuery();
			%>
			<!--  using sql -->
			
			
			<h2>시설 예약 조회</h2>
			<br>
			<br>
			<!--  수강 등록 조회 테이블  -->
			
			<div class="width=100%">
				<table class="table table-striped custab">
					<thead>
						<tr>
							<th class="text-center">번호</th>
							<th class="text-center">시설 명</th>
							<th class="text-center">시설 예약 일정</th>
							<th class="text-center">시설 위치</th>
							<th  class="text-center">삭제</th>
						</tr>
					</thead>
					
					<%
						int n=1;
						while (rs.next()) {
					%>
					<tr>
						<td class="text-center"><%= n %></td>
						<td class="text-center"><%=rs.getString("f_name")%></td>
						<td class="text-center"><%=rs.getString("F_TIME")%></td>
						<td class="text-center"><%=rs.getString("locationn")%></td>
						<td class="text-center" onclick="fdelete()"><a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> 삭제 </a></td>
					<script>
						function fdelete(){
							document.location.href = "fa_delete.jsp";
						}
						</script>
					</tr>
					
					
					<%
						n++;
						}
					%>
					<!--  
					<tr>
						<td>1</td>
						<td>News</td>
						<td>News Cate</td>
						<td>Main Products</td>
						<td class="text-center"><a class='btn btn-info btn-xs'
							href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a>
							<a href="#" class="btn btn-danger btn-xs"><span
								class="glyphicon glyphicon-remove"></span> Del</a></td>
					</tr>
					<tr>
						<td>2</td>
						<td>Products</td>
						<td>Main Products</td>
						<td>Main Products</td>
						<td class="text-center"><a class='btn btn-info btn-xs'
							href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a>
							<a href="#" class="btn btn-danger btn-xs"><span
								class="glyphicon glyphicon-remove"></span> Del</a></td>
					</tr>
					<tr>
						<td>3</td>
						<td>Blogs</td>
						<td>Parent Blogs</td>
						<td>Main Products</td>
						<td class="text-center"><a class='btn btn-info btn-xs'
							href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a>
							<a href="#" class="btn btn-danger btn-xs"><span
								class="glyphicon glyphicon-remove"></span> Del</a></td>
					</tr>
					-->
				</table>
			</div>

		</div>
	</div>
	<!--  마이 페이지 작성 -->
</body>
</html>