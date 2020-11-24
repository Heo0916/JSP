<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>secondPage.jsp</title>
</head>
<body bgcolor="green">
페이지 이동발생시 request는 유효 (단, redirect는 무효) 

<%
System.out.println("secondPage.jsp");
System.out.println("페이지 속성 : " + pageContext.getAttribute("name") ); // page name
System.out.println("요청 속성 : " + request.getAttribute("name") );	// request name
System.out.println("세션 속성 : " + session.getAttribute("name") );		// session name
System.out.println("프로젝트 속성 : " + application.getAttribute("name") ); //application name
%>
<br>
<hr>
<%
out.println("secondPage.jsp");
out.println("페이지 속성 : " + pageContext.getAttribute("name") ); // page name
out.println("요청 속성 : " + request.getAttribute("name") );	// request name
out.println("세션 속성 : " + session.getAttribute("name") );		// session name
out.println("프로젝트 속성 : " + application.getAttribute("name") ); //application name
%>
<br>
<hr>
<!-- a href 는 redirect와 동일한 의미 -->
<a href="thirdPage.jsp"> 또 다른 페이지로 이동</a>

</body>
</html>