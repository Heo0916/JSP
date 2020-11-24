<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- html comment tag -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>builtin.jsp</title>
</head>
<body>
<%
	// localhost = 127.0.0.1 = 컴퓨터 IP
	out.println("서버 : " +  request.getServerName() + "<br>");
    out.println("포트 번호 : " + request.getServerPort() + "<br>");
    out.println("요청 방식 : " + request.getMethod() + "<br>");
    out.println("프로토콜 : " + request.getProtocol() + "<br>");
    out.println("URL : " + request.getRequestURL() + "<br>");
    out.println("URI : " + request.getRequestURI() + "<br>");
    out.println("Read Path : " + request.getRealPath(".") + "<br>");
%>

</body>
</html>