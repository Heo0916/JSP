<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>logout.jsp</title>
</head>
<body>
	
	<%
		Enumeration enumeration = session.getAttributeNames();
		while(enumeration.hasMoreElements()) {
			String sName = enumeration.nextElement().toString();
			String sValue = (String)session.getAttribute(sName);
			
			if(sValue.equals("abc")) 
				session.removeAttribute(sName);
		}
		
	%>
	
	<a href="sessionTest.jsp">sessionTest</a>
	
</body>
</html>