<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<link rel="stylesheet"
	href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.1.0/css/font-awesome.min.css" />
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
								<li><a href="mypage1.jsp">강좌 수강 내역 조회</a></li>
								<li class="divider">
								<li><a href="mypage2.jsp">시설 예약 조회</a></li>
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
	<div class="container">

		<div>
			<h2>- 강사소개</h2>
		</div>
		<div style="margin-top: 50px;">

			<div class="row">

				<div style="height: 100%; width: 100%">

					<div class="col-sm-2 col-md-2">
						<img
							src="./Resources/images/원빈.jpg"
							alt="" class="img-rounded img-responsive" />
					</div>
					<div class="col-sm-2 col-md-4">
						<blockquote>
							<p>원빈</p>
							<small><cite title="Source Title">부산시 남구 수영강사 <i
									class="glyphicon glyphicon-map-marker"></i></cite></small>
						</blockquote>
						<p>
						<li>부산대학교 체육학부 외래강사 수영</li> <br />
						<li>대한적십자사 부산지사 수상안전강사회 회장</li> <br />
						<li>수상인명 지도자 자격증</li>
					</div>
				</div>

				<div style="height: 100%; width: 100%">

					<div class="col-sm-2 col-md-2">
						<img
							src="./Resources/images/현빈.jpg"
							alt="" class="img-rounded img-responsive" />
					</div>
					<div class="col-sm-2 col-md-4">
						<blockquote>
							<p>현빈</p>
							<small><cite title="Source Title">부산시 남구 수영강사 <i
									class="glyphicon glyphicon-map-marker"></i></cite></small>
						</blockquote>
						<p>
						<li>부산대학교 체육학과 졸업</li> <br />
						<li>신정수영장 전 강사</li> <br />
						<li>대한 적십자사 인명구조원</li>
					</div>
				</div>
			</div>
		</div>
	</div>




	<div class="container" style="margin-top: 100px;">

		<div class="row">
			<div style="">
				<div style="height: 100px; width: 100%">


					<div class="col-sm-2 col-md-2">
						<img
							src="./Resources/images/문채원.jpg"
							alt="" class="img-rounded img-responsive" />
					</div>
					<div class="col-sm-2 col-md-4">
						<blockquote>
							<p>문채원</p>
							<small><cite title="Source Title">부산시 남구 수영강사 <i
									class="glyphicon glyphicon-map-marker"></i></cite></small>
						</blockquote>
						<p>
						<li>부산대학교 교육대학원 졸업</li> <br />
						<li>수상인명구조원</li> <br />
						<li>생활체육지도자 수영 3급</li>
					</div>


					<div class="col-sm-2 col-md-2">
						<img
							src="./Resources/images/김수현.jpg"
							alt="" class="img-rounded img-responsive" />
					</div>
					<div class="col-sm-2 col-md-4">
						<blockquote>
							<p>김수현</p>
							<small><cite title="Source Title">부산시 남구 테니스강사 <i
									class="glyphicon glyphicon-map-marker"></i></cite></small>
						</blockquote>
						<p>
						<li>KPTA 테니스지도자 1급</li> <br />
						<li>전 구미시청 대표선수</li> <br />
						<li>전 부산시청 플레잉 코치</li>
					</div>

				</div>

			</div>
		</div>
	</div>
	
	<div class="container" style="margin-top: 100px;">

		<div class="row">
			<div style="">
				<div style="height: 100px; width: 100%">


					<div class="col-sm-2 col-md-2">
						<img
							src="./Resources/images/박보검.jpg"
							alt="" class="img-rounded img-responsive" />
					</div>
					<div class="col-sm-2 col-md-4">
						<blockquote>
							<p>박보검</p>
							<small><cite title="Source Title">부산시 남구 테니스강사 <i
									class="glyphicon glyphicon-map-marker"></i></cite></small>
						</blockquote>
						<p>
						<li>부산대학교 체육학과 졸업</li> <br />
						<li>생활체육지도자3급 테니스)</li> <br />
						<li>KPTA 테니스지도자 2급</li>
					</div>


					<div class="col-sm-2 col-md-2">
						<img
							src="./Resources/images/한효주.jpg"
							alt="" class="img-rounded img-responsive" />
					</div>
					<div class="col-sm-2 col-md-4">
						<blockquote>
							<p>한효주</p>
							<small><cite title="Source Title">부산시 남구 테니스강사 <i
									class="glyphicon glyphicon-map-marker"></i></cite></small>
						</blockquote>
						<p>
						<li>생활체육지도자 3급 테니스</li> <br />
						<li>우이초등학교 교직원 레슨강사</li> <br />
						<li>구일중학교 테니스 스포츠강사</li>
					</div>

				</div>

			</div>
		</div>
	</div>
	
	<div class="container" style="margin-top: 100px;">

		<div class="row">
			<div style="">
				<div style="height: 100px; width: 100%">


					<div class="col-sm-2 col-md-2">
						<img
							src="./Resources/images/임수정.jpg"
							alt="" class="img-rounded img-responsive" />
					</div>
					<div class="col-sm-2 col-md-4">
						<blockquote>
							<p>임수정</p>
							<small><cite title="Source Title">부산시 남구 요가강사 <i
									class="glyphicon glyphicon-map-marker"></i></cite></small>
						</blockquote>
						<p>
						<li>요가 지도자 자격증</li> <br />
						<li>KBS 빅마마 방송 임산부 요가</li> <br />
						<li>큐릭스 방송 요가</li>
					</div>


					<div class="col-sm-2 col-md-2">
						<img
							src="./Resources/images/김태희.JPG"
							alt="" class="img-rounded img-responsive" />
					</div>
					<div class="col-sm-2 col-md-4">
						<blockquote>
							<p>김태희</p>
							<small><cite title="Source Title">부산시 남구 요가강사 <i
									class="glyphicon glyphicon-map-marker"></i></cite></small>
						</blockquote>
						<p>
						<li>한국요가협회 지도자자격 취득</li> <br />
						<li>대한어린이요가협회 어린이요가지도자격 취득</li> <br />
						<li>수영구 스피노요가원 성인요가지도</li>
					</div>

				</div>

			</div>
		</div>
	</div>


	<div class="container" style="margin-top: 100px;">

		<div class="row">
			<div style="">
				<div style="height: 100px; width: 100%">


					<div class="col-sm-2 col-md-2">
						<img
							src="./Resources/images/강호동.jpg"
							alt="" class="img-rounded img-responsive" />
					</div>
					<div class="col-sm-2 col-md-4">
						<blockquote>
							<p>강호동</p>
							<small><cite title="Source Title">부산시 남구 요가강사 <i
									class="glyphicon glyphicon-map-marker"></i></cite></small>
						</blockquote>
						<p>
						<li>생활체육 지도자 자격증</li> <br />
						<li>명지대학교 사회교육원 이수</li> <br />
						<li>GS홈쇼핑 방송 요가</li>
					</div>

				</div>

			</div>
		</div>
	</div>


</body>
</html>