<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>requestParam.jsp</title>
</head>
<body>
<%! // decration
String name, id, password, major, protocol;
String[] hobby;
%>
<!-- ISO-8859 : apache tomcat
      MS-949 : MS
      EUC-KR : Korean
      UTF-8 : unicode  -->
<% // scriptlet (script + applet)
	request.setCharacterEncoding("utf-8");
	name = request.getParameter("name");
	id = request.getParameter("id");
	password = request.getParameter("password");
	hobby = request.getParameterValues("hobby");
	major = request.getParameter("major");
	protocol = request.getParameter("protocol");
%>

이름 : <%= name %>
아이디:<%= id %>
비밀번호:<%= password %>
취미:<%= Arrays.toString(hobby) %>
전공:<%= major %>
프로토콜:<%= protocol %>






</body>
</html>