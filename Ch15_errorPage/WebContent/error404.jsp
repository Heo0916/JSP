<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 2. web.xml을 사용 -->
<%@ page isErrorPage="true" %>
<!-- 프로세스 에러인 경우 4xx 번이 발생되므로,
     정상처리이 2xx 번으로 변경하여 설정 -->
<%  response.setStatus(200); %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>error404.jsp</title>
</head>
<body>
404번 에러발생<br>
<%--  <%= exception.getMessage()%> --%>
</body>
</html>