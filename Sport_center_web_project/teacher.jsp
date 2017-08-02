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
								<li><a href="mypage1.jsp">���� ���� ���� ��ȸ</a></li>
								<li class="divider">
								<li><a href="mypage2.jsp">�ü� ���� ��ȸ</a></li>
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

		<div>
			<h2>- ����Ұ�</h2>
		</div>
		<div style="margin-top: 50px;">

			<div class="row">

				<div style="height: 100%; width: 100%">

					<div class="col-sm-2 col-md-2">
						<img
							src="./Resources/images/����.jpg"
							alt="" class="img-rounded img-responsive" />
					</div>
					<div class="col-sm-2 col-md-4">
						<blockquote>
							<p>����</p>
							<small><cite title="Source Title">�λ�� ���� �������� <i
									class="glyphicon glyphicon-map-marker"></i></cite></small>
						</blockquote>
						<p>
						<li>�λ���б� ü���к� �ܷ����� ����</li> <br />
						<li>���������ڻ� �λ����� �����������ȸ ȸ��</li> <br />
						<li>�����θ� ������ �ڰ���</li>
					</div>
				</div>

				<div style="height: 100%; width: 100%">

					<div class="col-sm-2 col-md-2">
						<img
							src="./Resources/images/����.jpg"
							alt="" class="img-rounded img-responsive" />
					</div>
					<div class="col-sm-2 col-md-4">
						<blockquote>
							<p>����</p>
							<small><cite title="Source Title">�λ�� ���� �������� <i
									class="glyphicon glyphicon-map-marker"></i></cite></small>
						</blockquote>
						<p>
						<li>�λ���б� ü���а� ����</li> <br />
						<li>���������� �� ����</li> <br />
						<li>���� �����ڻ� �θ�����</li>
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
							src="./Resources/images/��ä��.jpg"
							alt="" class="img-rounded img-responsive" />
					</div>
					<div class="col-sm-2 col-md-4">
						<blockquote>
							<p>��ä��</p>
							<small><cite title="Source Title">�λ�� ���� �������� <i
									class="glyphicon glyphicon-map-marker"></i></cite></small>
						</blockquote>
						<p>
						<li>�λ���б� �������п� ����</li> <br />
						<li>�����θ�����</li> <br />
						<li>��Ȱü�������� ���� 3��</li>
					</div>


					<div class="col-sm-2 col-md-2">
						<img
							src="./Resources/images/�����.jpg"
							alt="" class="img-rounded img-responsive" />
					</div>
					<div class="col-sm-2 col-md-4">
						<blockquote>
							<p>�����</p>
							<small><cite title="Source Title">�λ�� ���� �״Ͻ����� <i
									class="glyphicon glyphicon-map-marker"></i></cite></small>
						</blockquote>
						<p>
						<li>KPTA �״Ͻ������� 1��</li> <br />
						<li>�� ���̽�û ��ǥ����</li> <br />
						<li>�� �λ��û �÷��� ��ġ</li>
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
							src="./Resources/images/�ں���.jpg"
							alt="" class="img-rounded img-responsive" />
					</div>
					<div class="col-sm-2 col-md-4">
						<blockquote>
							<p>�ں���</p>
							<small><cite title="Source Title">�λ�� ���� �״Ͻ����� <i
									class="glyphicon glyphicon-map-marker"></i></cite></small>
						</blockquote>
						<p>
						<li>�λ���б� ü���а� ����</li> <br />
						<li>��Ȱü��������3�� �״Ͻ�)</li> <br />
						<li>KPTA �״Ͻ������� 2��</li>
					</div>


					<div class="col-sm-2 col-md-2">
						<img
							src="./Resources/images/��ȿ��.jpg"
							alt="" class="img-rounded img-responsive" />
					</div>
					<div class="col-sm-2 col-md-4">
						<blockquote>
							<p>��ȿ��</p>
							<small><cite title="Source Title">�λ�� ���� �״Ͻ����� <i
									class="glyphicon glyphicon-map-marker"></i></cite></small>
						</blockquote>
						<p>
						<li>��Ȱü�������� 3�� �״Ͻ�</li> <br />
						<li>�����ʵ��б� ������ ��������</li> <br />
						<li>�������б� �״Ͻ� ����������</li>
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
							src="./Resources/images/�Ӽ���.jpg"
							alt="" class="img-rounded img-responsive" />
					</div>
					<div class="col-sm-2 col-md-4">
						<blockquote>
							<p>�Ӽ���</p>
							<small><cite title="Source Title">�λ�� ���� �䰡���� <i
									class="glyphicon glyphicon-map-marker"></i></cite></small>
						</blockquote>
						<p>
						<li>�䰡 ������ �ڰ���</li> <br />
						<li>KBS �򸶸� ��� �ӻ�� �䰡</li> <br />
						<li>ť���� ��� �䰡</li>
					</div>


					<div class="col-sm-2 col-md-2">
						<img
							src="./Resources/images/������.JPG"
							alt="" class="img-rounded img-responsive" />
					</div>
					<div class="col-sm-2 col-md-4">
						<blockquote>
							<p>������</p>
							<small><cite title="Source Title">�λ�� ���� �䰡���� <i
									class="glyphicon glyphicon-map-marker"></i></cite></small>
						</blockquote>
						<p>
						<li>�ѱ��䰡��ȸ �������ڰ� ���</li> <br />
						<li>���Ѿ�̿䰡��ȸ ��̿䰡�����ڰ� ���</li> <br />
						<li>������ ���ǳ�䰡�� ���ο䰡����</li>
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
							src="./Resources/images/��ȣ��.jpg"
							alt="" class="img-rounded img-responsive" />
					</div>
					<div class="col-sm-2 col-md-4">
						<blockquote>
							<p>��ȣ��</p>
							<small><cite title="Source Title">�λ�� ���� �䰡���� <i
									class="glyphicon glyphicon-map-marker"></i></cite></small>
						</blockquote>
						<p>
						<li>��Ȱü�� ������ �ڰ���</li> <br />
						<li>�������б� ��ȸ������ �̼�</li> <br />
						<li>GSȨ���� ��� �䰡</li>
					</div>

				</div>

			</div>
		</div>
	</div>


</body>
</html>