<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="./Resources/css/programtype.css" rel="stylesheet">
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



<!-- 강좌예약박스 -->
      <div class="container">
            <div class="col-sm-12">


                <div class="bs-calltoaction bs-calltoaction-primary">
                    <div class="row">
                        <div class="col-md-9 cta-contents">
                            <h1 class="cta-title">수영</h1>
                            <div class="cta-desc">
                                <p>1. 물 적응훈련을 통하여 물에 대한 적응력을 높인다.</p>
                                <p>2. 영법별 기초동작 및 종합동작을 익힌다.</p>
                                <p>3. 종합동작을 숙련시키고 응용기술을 익힌다.</p>
                            </div>
                        </div>
                        <div class="col-md-3 cta-button">
                            <a href="swimming.jsp" class="btn btn-lg btn-block btn-primary">상세정보 / 예약</a>
                        </div>
                     </div>
                </div>


                <div class="bs-calltoaction bs-calltoaction-success">
                    <div class="row">
                        <div class="col-md-9 cta-contents">
                            <h1 class="cta-title">테니스</h1>
                            <div class="cta-desc">
                                <p>1. 운동 경기를 증길 수 있는 운동 기능과 건강에 필요한 체력을 기른다.</p>
                                <p>2. 운동과 건강 및 여가활동에 필요한 체계적인 지식을 이해하여 실천하는 능력을 기른다.</p>
                                <p>3. 기초 Stroke 동작 - 그립법, 준비자세, 드라이브 등의 기술을 배운다.</p>
                            </div>
                        </div>
                        <div class="col-md-3 cta-button">
                            <a href="tennis.jsp" class="btn btn-lg btn-block btn-success">상세정보 / 예약</a>
                        </div>
                     </div>
                </div>

                <div class="bs-calltoaction bs-calltoaction-warning">
                    <div class="row">
                        <div class="col-md-9 cta-contents">
                            <h1 class="cta-title">요가</h1>
                            <div class="cta-desc">
                                <p>1. 요가의 예정과 매너교육 및 심신의 수련을 한다.</p>
                                <p>2. 요가의 기본 동작을 배운다.</p>
                                <p>3. 도구를 이용한 각종 요가동작을 배운다.</p>
                            </div>
                        </div>
                        <div class="col-md-3 cta-button">
                            <a href="yoga.jsp" class="btn btn-lg btn-block btn-warning">상세정보 / 예약</a>
                        </div>
                     </div>
                </div>

            </div>
        </div>

<!-- 강좌예약박스 -->


</body>
</html>
