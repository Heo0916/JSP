<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name = "viewport" content = "width=device-width", initial-scale = "1">
<link rel = "stylesheet" href = "css/bootstrap.css">
<link rel = "stylesheet" href = "css/custom.css">

<title>Insert title here</title>
</head>
<body>
	<%
	if(session.getAttribute("ValidMem") == null) {
%>
	<jsp:forward page="login.jsp" />
<%
	}

	String name = (String)session.getAttribute("name");
	String id = (String)session.getAttribute("id");
%>

	<nav class = "navbar navbar-defalut">
		<div class = "navbar-header">
			<button type ="button" class ="navbar-toggle collapsed"
				data-toggle = "collapse" data-target ="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class ="icon-bar"></span>
				<span class ="icon-bar"></span>
				<span class ="icon-bar"></span>
				</button>
				<a class ="navbar-brand" href ="main.jsp">JSP 게시판 웹 사이트</a>
		</div>
		<div class = "collapse navbar-collapse" id="#bs-example-navbar-collapse-1">
			<ul class = "nav navbar-nav">
				<li class="active"><a href="main.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			
			
			<ul class = "nav navbar-nav navbar-right">
				<li class = "dropdown">
					<a href = "#" class ="dropdown-toggle"
						data-toggle="dropdown" role ="button" aria-haspopup="true"
						aria-expanded="false">회원관리<span class = "caret"></span></a>
						<ul class ="dropdown-menu">
							<li><a href ="logout.jsp">로그아웃</a></li>
							
						</ul>
		</li>
		</ul>
		</div>
		</nav>
		<div  class = "container">
			<div class = "jumbotron">
				<div class = "container">
					<h1>웹 사이트 소개</h1>
					<p> 이 웹 사이트는 미세먼지 측정값 기록한 것입니다.
					<a class = "btn btn-primary btn-pull" href ="#" role = "button">자세히 알아보기</a>
				</div>
			</div>
		</div>
		<div class="container">
			<div id = "myCarousel" class ="carousel slide" data-ride ="carousel">
				<ol class ="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"> </li>
					<li data-target="#myCarousel" data-slide-to="1" ></li>
					<li data-target="#myCarousel" data-slide-to="2" ></li>
				</ol>
				<div class = "carousel-inner">
					<div class = "item active">
						<img src = "images/1.jpg">
					</div>
					<div class = "item">
						<img src = "images/2.jpg">
					</div>
					<div class = "item">
						<img src = "images/3.jpg">
					</div>
					<a class = "left carousel-control" href = "#myCarousel" data-slide = "prev">
						<span class = "glyphicon glyphicon-chevron-left"></span>
					</a>
					<a class = "right carousel-control" href = "#myCarousel" data-slide = "prev">
						<span class = "glyphicon glyphicon-chevron-right"></span>
					</a>
					
				</div>
			</div>
		</div>
		
		
	<script src = "http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src = "js/bootstrap.js"></script>
	
</body>
</html>