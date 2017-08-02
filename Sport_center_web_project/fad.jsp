<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Admin</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" hrft="./Resources/css/adtable.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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

	<h2>ADMIN</h2>

	<nav class="navbar navbar-default" role="navigation">
	  <div class="container-fluid">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1">
		<span class="sr-only">Toggle navigation</span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
	      </button>
	    </div>

    <!--  왼쪽 상단 메뉴 바  -->
	    <div class="navbar-collapse collapse" id="navbar-collapse-1">
	      <ul class="nav navbar-nav">
		<li ><a href="uad.jsp">회원관리 <span class="sr-only">(current)</span></a></li>
		
		<li ><a href="fad.jsp">시설관리<span class="sr-only">(current)</span></a></li>
		
		<li ><a href="pad.jsp">강좌관리 <span class="sr-only">(current)</span></a></li>
	

		
   
    
	      </ul>
  <!--  왼쪽 상단 메뉴 바  -->
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
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
</div>

<div class="container">
  

  <%
  Class.forName("oracle.jdbc.OracleDriver");
	String DB_URL = "jdbc:oracle:thin:@localhost:1521:xe";
	String DB_USER = "SYSTEM";
	String DB_PASSWARD = "tndms82";
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", DB_USER, DB_PASSWARD);

  String query = " select * from facility natural join f_schedule";

  PreparedStatement pst = conn.prepareStatement(query);
  ResultSet rs = pst.executeQuery();
  %>



<div class="container">
	<div class="row">
		<div class="panel panel-primary">
		    <div class="panel-heading">
		        <h3>시설 목록
    		       
		        </h3>
		    </div>
		   
		    <table class="table table-striped table-hover">
		        <thead>
		            <tr>
		                <th>시설번호</th>
		                <th>시설이름</th>
		                <th>위치</th>
		                <th>시설날짜</th>		             
		            </tr>
		        </thead>
		        
		        <tbody>
							<%while (rs.next()) { %>
							<form action="fdelete.jsp" method="get">
								<tr>
									<td><input type="hidden" name="FNO"
										value=<%=rs.getString("FNO") %>><%=rs.getString("fno")%></td>
									<td><%=rs.getString("f_name")%></td>
			<td><%=rs.getString("locationn")%></td>
			<td><%=rs.getString("f_time")%></td>
									<td><input type="submit" class='btn btn-info btn-xs'
										value="삭제하기"></td>
								</tr>
							</form>
							<%
			}
		%>
						</tbody>
						
	
		    </table>
		</div>
	</div>
</div>

</body>
</html>
