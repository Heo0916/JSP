<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- JSP의 커멘트 영역 --%>
<%
String id ="가나다";
String pw="1234";
String name="가나다";
request.setCharacterEncoding("utf-8");
if (   id.equals(request.getParameter("id") ) &&
		pw.equals(request.getParameter("pw") )   
	) {
	System.out.println("로그인 성공   name:"+name);
	response.sendRedirect("main.jsp?name="+
			URLEncoder.encode(name, "UTF-8"));
} else {
	System.out.println("로그인 실패   name:"+name);
	response.sendRedirect("loginForm.jsp");
}
%>
</body>





</html>