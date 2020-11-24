<!-- Include.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- <%@ page import = "java.util.Arrays;"   %> --%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> include.jsp 입니다</h1>
	
	<!-- @ : system에게 알려주는 표식(자) -->	
	<!--  include : 지시자(명령) -->
	<%@ include file="Include01.jsp" %>
	
	<h1> 다시 include.jsp 입니다</h1>
</body>
</html>