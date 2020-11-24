<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Error1.jsp</title>
</head>
<body>
<%
	int i = 40/0;
%> 
<%-- <%
// 3. try/catch를 사용
try {
	int i = 40/0;
} catch (Exception e) {
	System.out.println(" Exception ==== " +e);
	out.println(" Exception ==== " +e);
}
%> --%>
</body>
</html>