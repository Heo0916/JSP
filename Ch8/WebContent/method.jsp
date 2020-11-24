<!-- method.jsp -->
<!--  org.apache.jasper.JasperException: Unable to compile class for JSP: 
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="get" action="MethodServlet">
		<input type="submit"  value="get 방식 호출"  >
	</form>
	<br><br>
	<form method="post" action="MethodServlet">
		<input type="submit"  value="post 방식 호출"  >
	</form>

</body>
</html>