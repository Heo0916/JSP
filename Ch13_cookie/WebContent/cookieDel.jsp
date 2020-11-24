<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>cookieDel.jsp</title>
</head>
<body>
<p> // 쿠키 지속시간으로 0으로 해서 삭제함 </p>
<%
	Cookie[ ] cookies = request.getCookies();
	for (int i=0; i<cookies.length; i++) {
		cookies[i].setMaxAge(0); 
		response.addCookie(cookies[i]); 
	}
%>
<a href = "cookieInfo.jsp"> cookie 확인 </a>
</body>
</html>