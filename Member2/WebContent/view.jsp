<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import = "java.io.PrintWriter" %>
<%@ page import = "com.heo.bbs.Bbs" %>
<%@ page import = "com.heo.bbs.BbsDAO" %>


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
	int bbsID = 0;
	if(request.getParameter("bbsID") != null){
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	if (bbsID == 0){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다..')");
		script.println("location.href = 'bbs.jsp'");
		script.println("</script>");
	}
	Bbs bbs = new BbsDAO().getBbs(bbsID);
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
				<table class ="table table-striped" style ="text-align: center; border: 1px solid #dddddd">
					<thread>
						<tr>
							<th colspan = "3" style ="background-color : #eeeeee; text-align: center;">게시판 글 보기</th>
						</tr>
							</thread>
							<tbody>
								<tr>
									<td style = "width : 20%;">글 제목</td>
									<td colspan = "2"><%= bbs.getBbsTitle() %></td>
								</tr>
								<tr>
									<td>작성자</td>
									<td colspan = "2"><%= bbs.getUserID()%></td>
								</tr>
								<tr>
									<td>작성일자</td>
							    	<td colspan = "2"><%= bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + "시" + bbs.getBbsDate().substring(14, 16) + "분" %>
							    </tr>
							    <tr>
							    	<td>내용</td>
							    	<td colspan="2" style="min-height: 200px; text-align : left;"><%= bbs.getBbsContent().replaceAll(" ", "&nbsp;").replaceAll(">","&gt;").replaceAll("<", "&lt;").replaceAll("/n", "<br>") %></td>
							    </tr>
						    </tbody>
							
							</table>
							<a href = "bbs.jsp" class = "btn btn-primary">목록</a>
							<%
								if(id != null && id.equals(bbs.getUserID())){
							%>
								<a href = "update.jsp?bbsID=<%= bbsID %>" class="btn btn-primary">수정</a>
								<a onclick="return confirm('정말 삭제하겠습니까?')" href = "deleteOk.jsp?bbsID=<%= bbsID %>" class="btn btn-primary">삭제</a>
							<%
							}
							%>
				</div>
		</div>
		
		
	<script src = "http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src = "js/bootstrap.js"></script>
	
</body>
</html>