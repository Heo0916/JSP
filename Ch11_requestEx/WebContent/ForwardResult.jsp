<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String age = request.getParameter("age");
String name = (String) request.getAttribute("name");
String gender = (String) request.getAttribute("gender");
String mobile = (String) request.getAttribute("mobile");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ForwardResult.jsp</title>
</head>
<!-- bgcolor : 배경색 설정하는 속성(element) -->
<body bgcolor="pink">
forward 방식으로 이동된 페이지 <br>
나이 <%= age %>  <br>
이름 <%= name %>  <br>
성별 <%= gender %>  <br>
휴대폰 번호 <%= mobile %> <br>
</body>
</html>