<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>firstPage.jsp</title>
</head>
<body>
내장객체 pageContext는 현재페이지에서 Scope가 유효(변수값의 존재 = 파라미터, 애트리뷰트,
다른 페이지로 이동시 scope는 종료가 됨.
단, forward인 경우 request는 Scope가 유효!!
<%
// 예를 들면, 자바에서 변수선언 방법은 String name="page name"; 인 것처럼
// JSP에서는 아래와 같이 선언하여 브라우저로 전달한다!
pageContext.setAttribute("name", "page name");
request.setAttribute("name", "request name");
session.setAttribute("name", "session name");
application.setAttribute("name", "application name");

System.out.println("firstPage.jsp");
System.out.println("페이지 속성 : " + pageContext.getAttribute("name") ); // page name
System.out.println("요청 속성 : " + request.getAttribute("name") );	// request name
System.out.println("세션 속성 : " + session.getAttribute("name") );		// session name
System.out.println("프로젝트 속성 : " + application.getAttribute("name") ); //application name
%>
<br>
<hr>
<%
out.println("firstPage.jsp");
out.println("페이지 속성 : " + pageContext.getAttribute("name") ); // page name
out.println("요청 속성 : " + request.getAttribute("name") );	// request name
out.println("세션 속성 : " + session.getAttribute("name") );		// session name
out.println("프로젝트 속성 : " + application.getAttribute("name") ); //application name

request.getRequestDispatcher("secondPage.jsp").forward(request, response);
%>




</body>
</html>