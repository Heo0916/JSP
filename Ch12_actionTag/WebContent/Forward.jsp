<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Forward.jsp</title>
</head>

<body>
<!-- html의 <form> -->
<jsp:forward page="forwardParam.jsp"> 
	<jsp:param value="abcd"   name="id"   />
	<jsp:param value="1234"   name="pw"   />
</jsp:forward>
</body>

</html>