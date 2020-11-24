<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>redirect & forward</title>
</head>
<body>
<!--  redirect 페이지 이동
  		redirect는 fore-end(브라우저)에서 페이지 이동이나 브라우저로 화면 갱신할 때 사용 
  		jsp이외에도, servlet, url 에서 모두 사용가능 -->

<%-- 
<% response.sendRedirect("HelloWorld"); %>
<% response.sendRedirect("http://localhost:8090/Ch5_Servlet/HelloWorld"); %>

<% response.sendRedirect("http://www.daum.net"); %> 
--%>


 forward 페이지 이동

 	forward는 back-end(브라우저 이외)에서 페이지 이동에 사용 <br>
    jsp이외에도, servlet 에서 사용가능, 단, URL은 불가
<%
	// URL은 동일 서버에 존재하는 도메인만 가능, 따라서 아래는 접속 불가!
	// RequestDispatcher dis = request.getRequestDispatcher("http://www.naver.com");
 
	//RequestDispatcher dis = request.getRequestDispatcher("test.jsp");
	//dis.forward(request, response);
	
	RequestDispatcher dis = request.getRequestDispatcher("HelloWorld");
	dis.forward(request, response);
%> 

</body>
</html>