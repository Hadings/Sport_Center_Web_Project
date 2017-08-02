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



<!-- ���¿���ڽ� -->
      <div class="container">
            <div class="col-sm-12">


                <div class="bs-calltoaction bs-calltoaction-primary">
                    <div class="row">
                        <div class="col-md-9 cta-contents">
                            <h1 class="cta-title">����</h1>
                            <div class="cta-desc">
                                <p>1. �� �����Ʒ��� ���Ͽ� ���� ���� �������� ���δ�.</p>
                                <p>2. ������ ���ʵ��� �� ���յ����� ������.</p>
                                <p>3. ���յ����� ���ý�Ű�� �������� ������.</p>
                            </div>
                        </div>
                        <div class="col-md-3 cta-button">
                            <a href="swimming.jsp" class="btn btn-lg btn-block btn-primary">������ / ����</a>
                        </div>
                     </div>
                </div>


                <div class="bs-calltoaction bs-calltoaction-success">
                    <div class="row">
                        <div class="col-md-9 cta-contents">
                            <h1 class="cta-title">�״Ͻ�</h1>
                            <div class="cta-desc">
                                <p>1. � ��⸦ ���� �� �ִ� � ��ɰ� �ǰ��� �ʿ��� ü���� �⸥��.</p>
                                <p>2. ��� �ǰ� �� ����Ȱ���� �ʿ��� ü������ ������ �����Ͽ� ��õ�ϴ� �ɷ��� �⸥��.</p>
                                <p>3. ���� Stroke ���� - �׸���, �غ��ڼ�, ����̺� ���� ����� ����.</p>
                            </div>
                        </div>
                        <div class="col-md-3 cta-button">
                            <a href="tennis.jsp" class="btn btn-lg btn-block btn-success">������ / ����</a>
                        </div>
                     </div>
                </div>

                <div class="bs-calltoaction bs-calltoaction-warning">
                    <div class="row">
                        <div class="col-md-9 cta-contents">
                            <h1 class="cta-title">�䰡</h1>
                            <div class="cta-desc">
                                <p>1. �䰡�� ������ �ųʱ��� �� �ɽ��� ������ �Ѵ�.</p>
                                <p>2. �䰡�� �⺻ ������ ����.</p>
                                <p>3. ������ �̿��� ���� �䰡������ ����.</p>
                            </div>
                        </div>
                        <div class="col-md-3 cta-button">
                            <a href="yoga.jsp" class="btn btn-lg btn-block btn-warning">������ / ����</a>
                        </div>
                     </div>
                </div>

            </div>
        </div>

<!-- ���¿���ڽ� -->


</body>
</html>
