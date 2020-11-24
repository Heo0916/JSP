<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>sessionTest.jsp</title>
</head>
<body>
	<%
		Enumeration enums = session.getAttributeNames();
		int i =0;
		while(enums.hasMoreElements()) {
			i++;
			String sName = enums.nextElement().toString();
			System.out.println("sName="+sName);
			String sValue = enums.nextElement().toString();
			System.out.println("sValue="+sValue);	
			
			out.println("sName="+sName);
			out.println("sValue="+sValue);	
		}
		if (i==0) out.println("세션이 존재하지 않습니다!");
	
	%>
</body>




</html>