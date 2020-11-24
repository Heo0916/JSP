<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%= request.getParameter("name") %>
님 안녕하세요!
<br>
저희 홈페이지 방문을 환영합니다. <br>
<%
System.out.println("로그인 성공 .... name="+
		request.getParameter("name")  ); // 콘솔 출력
out.println("로그인 성공 .... name="+	
		request.getParameter("name")  ); // 화면 출력
%>
</body>
</html>