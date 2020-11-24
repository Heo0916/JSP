<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	if (session.getAttribute("ValidMem") != null) {
%>
<jsp:forward page="main.jsp"></jsp:forward>
<%
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name = "viewport" content = "width=device-width", initial-scale = "1">
<link rel = "stylesheet" href = "css/bootstrap.css">
<link rel = "stylesheet" href = "css/custom.css">

<title>Insert title here</title>
<script   >
function infoConfirm2() {
	
	if (document.reg_frm.id.value.length == 0 ) {
		alert("아이디는 필수 입력 사항입니다.");
		reg_frm.id.focus();
		return false;
	}
	 if (document.reg_frm.id.value.length < 4  ) {
		alert("아이디는 4자 이상이어야 합니다.");
		reg_frm.id.focus();
		return false;
	}
	
	 if (document.reg_frm.pw.value.length == 0 ) {
		alert("비밀번호는 필수 입력 사항입니다.");
		//reg_frm.pw.focus();
		return false;
	}
	 if (document.reg_frm.pw.value.length != 
			document.reg_frm.pw_check.value.length ) {
		alert("비밀번호가 일치하지 않습니다.");
		reg_frm.pw.focus();
		return false;
	}
	 if (document.reg_frm.name.value.length == 0 ) {
		alert("이름은 필수 입력 사항입니다.");
		reg_frm.name.focus();
		return;
	}
	 if (document.reg_frm.eMail.value.length == 0 ) {
		alert("이메일은 필수 입력 사항입니다.");
		reg_frm.eMail.focus();
		return false;
	}

	    //document.reg_frm.action.value = "joinOk.jsp"; 
		document.reg_frm.submit();
	  
}
</script>
</head>
<body>
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
				<li><a href="main.jsp">메인</a></li>
				<li><a href="bbs.jsp">게시판</a></li>
			</ul>
			<ul class = "nav navbar-nav navbar-right">
				<li class = "dropdown">
					<a href = "#" class ="dropdown-toggle"
						data-toggle="dropdown" role ="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class = "caret"></span></a>
						<ul class ="dropdown-menu">
							<li ><a href ="login.jsp">로그인</a></li>
							<li class = "active"><a href ="join.jsp">회원가입</a></li>
						</ul>
		</li>
		</ul>
		</div>
		</nav>
		
		<div class = "container">
			<div class = "col-lg-4"></div>
			<div class = "col-lg-4">
				<div class ="jumbotron" style ="padding-top : 20px;">
					<form method = "post" action = "joinOk.jsp" name="reg_frm">
					<h3 style ="text-align: center;">회원가입화면</h3>
					<div class = "form-group">
						<input type = "text" class ="form-control" placeholder = "아이디" name ="id" naxlength="20">
					</div>
					<div class = "form-group">
						<input type = "password" class ="form-control" placeholder = "비밀번호" name ="pw" naxlength="20">
					</div>
					<div class = "form-group">
						<input type = "password" class ="form-control" placeholder = "비밀번호" name ="pw_check" naxlength="20">
					</div>
					<div class = "form-group">
						<input type = "text" class ="form-control" placeholder = "이름" name ="name" naxlength="20">
					</div>
					<div class = "form-group" style="text-align:center;">
						<div class ="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active">
								<input type ="radio" name ="gender" autocomplete="off" value="남자" checked>남자
							</label>
							<label class="btn btn-primary">
								<input type ="radio" name ="gender" autocomplete="off" value="여자" checked>여자
							</label>
						</div> <br> <br>
					<div class = "form-group">
						<input type = "text" class ="form-control" placeholder = "이메일" name ="eMail" naxlength="50">
					</div>	
					<input type ="submit" class ="btn btn-primary form-control" value="회원가입" onclick ="infoConfirm2();">
					<br><br>
					<input	type="reset" class ="btn btn-primary form-control"	value="취소" onclick="javascript:window.location='login.jsp'">
					
					</form>
			</div>
		
		</div>
		
	<script src = "http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src = "js/bootstrap.js"></script>
	
</body>
</html>