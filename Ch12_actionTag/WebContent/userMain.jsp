<%@ page import="java.net.URLDecoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>userMain.jsp</title>
</head>
<body>
<h3> 사용자로 로그인</h3>
<%-- <%=request.getParameter("userName") %> --%>
	 '<%=URLDecoder.decode(
			 request.getParameter("userName") 
			 , "UTF-8")%>'  님 환영합니다.		 
	 '<%=URLDecoder.decode(
			 request.getParameter("userID") 
			 , "UTF-8")%>'
	<%=request.getParameter("userID") %>
</body>
</html>