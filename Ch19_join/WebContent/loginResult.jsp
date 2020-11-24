<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	String name, id, pw; 
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>loginResult.jsp</title>
</head>
<body>
<%
	name = (String) session.getAttribute("name");
	id = (String) session.getAttribute("id");
	pw = (String) session.getAttribute("pw");
%>
<hr>
<%= name %> 님 안녕하세요! <br>
아이디는 <%= id %> <br>
패스워드는 <%= pw %><br>

<a href = "modify.jsp"	> 회원정보 수정</a>


</body>
</html>