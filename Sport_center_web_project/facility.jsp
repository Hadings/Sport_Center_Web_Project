<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
  <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="./Resources/css/programtype.css" rel="stylesheet">
<title>전체 시설</title>
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
                            <h1 class="cta-title">수영장</h1>
                            <div class="cta-desc">
                                <p>총 520평의 50M 8레인으로 수심은 1.3M로 균일합니다. 수질관리는 치염소산 투입 및 오존을 투입하여 완벽하게 살균 처리되며 연속 활성여과장치에 의하여 항상 깨끗하고 청결한 수질이 유지됩니다.</p>
                                <p>1일 사용권 : 5,000원</p>
                                <p>운영시간 : 주말  09:00 ~ 18:00</p>
                            </div>
                        </div>
                        <div class="col-md-3 cta-button">
                            <a href="fswimming.jsp" class="btn btn-lg btn-block btn-primary">상세정보 / 예약</a>
                        </div>
                     </div>
                </div>


                <div class="bs-calltoaction bs-calltoaction-success">
                    <div class="row">
                        <div class="col-md-9 cta-contents">
                            <h1 class="cta-title">테니스장</h1>
                            <div class="cta-desc">
                                <p>실내테니스 코트는 5면  총면적~, 관람석 312석을 갖춘  국제규격의 시설입니다.</p>
                                <p>대관료 : 20,000 원 </p>
                                <p>운영시간 : 주말  09:00 ~ 18:00</p>
                            </div>
                        </div>
                        <div class="col-md-3 cta-button">
                            <a href="ftennis.jsp" class="btn btn-lg btn-block btn-success">상세정보 / 예약</a>
                        </div>
                     </div>
                </div>

                <div class="bs-calltoaction bs-calltoaction-warning">
                    <div class="row">
                        <div class="col-md-9 cta-contents">
                            <h1 class="cta-title">체육관</h1>
                            <div class="cta-desc">
                                <p>전자식 전광판과 운동에 지장 이 없는 최고의 조명기구가 설치되어 있으며, 각각의 경기규정에 맞는 정규경기를 행할 수 있는 규모와 설비를 갖춘 종합적인 시설입니다.</p>
                                <p>대관료 : 30,000 원</p>
                                <p>운영시간 : 주말  09:00 ~ 18:00</p>
                            </div>
                        </div>
                        <div class="col-md-3 cta-button">
                            <a href="fgym.jsp" class="btn btn-lg btn-block btn-warning">상세정보 / 예약</a>
                        </div>
                     </div>
                </div>

            </div>
        </div>

<!-- 강좌예약박스 -->


</body>
</html>
