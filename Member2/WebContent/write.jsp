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
				<li ><a href="main.jsp">메인</a></li>
				<li class="active"><a href="bbs.jsp">게시판</a></li>
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
		<div class="container">
			<div class ="row">
				<form action="writeOk.jsp" method = "post">
				<table class ="table table-striped" style ="text-align: center; border: 1px solid #dddddd">
					<thread>
						<tr>
							<th colspan = "2" style ="background-color : #eeeeee; text-align: center;">게시판 글쓰기 양식</th>
						</tr>
							</thread>
							<tbody>
								<tr>
								<td><input type ="text" class="form-control" placeholder="글 제목" name ="bbsTitle" maxlength ="50"></td>
								</tr>
								<tr>
								<td><textarea class="form-control" placeholder="글 내용" name ="bbsContent" maxlength ="2048" style="height :350px;"></textarea></td>
								</tr>
									
								
							</tbody>
							
							</table>
							<input type = "submit" class ="btn btn-primary pull-right" value = "글쓰기">
				</form>
							
							
			</div>
		</div>
		
		
	<script src = "http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src = "js/bootstrap.js"></script>
	
</body>
</html>