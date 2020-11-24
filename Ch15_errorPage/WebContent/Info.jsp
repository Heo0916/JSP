<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 1.에러 페이지 지시자를 사용     -->
<%@ page errorPage="errorPage.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- Ch15_errorPage -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Info.jsp</title>
</head>
<body>
<p>
	에러페이지 사용방법
	1.에러 페이지 지시자를 사용
</p>
	<%
			int i = 40/0;
	%>

</body>
</html>