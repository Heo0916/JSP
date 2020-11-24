<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>welcome.jsp</title>
</head>
<body>

<%
	Cookie[ ] cookies = request.getCookies();
	for (int i=0; i<cookies.length; i++) {
		String id = cookies[i].getValue();
		if (id.equals("abcd"))
			out.println( id + " 님 안녕하세요! " + "<br>");
	}
%>
<a href = "logout.jsp"> 로그아웃 </a>
</body>
</html>