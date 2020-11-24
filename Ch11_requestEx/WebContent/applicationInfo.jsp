<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>applicationInfo.jsp</title>
</head>
<body>
<%
String appPath = application.getContextPath();
String filePath = application.getRealPath("applicationInfo.jsp");
String serverInfo = application.getServerInfo();
%>
웹 애플리케이션의 컨텍스트(프로젝트) 패스명 <br>
<b> <%=appPath %></b> <br>

웹 애플리케이션 file 패스명 <br>
<b> <%=filePath %></b> <br>

컨테이너 이름과 버전번호<br>
<b> <%= serverInfo %></b> <br>

</body>
</html>