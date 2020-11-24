<!-- Param.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"  src="param.js"> </script>
</head>
<body>
	<form  method="post"  action="PS"  name="frm" >
	아이디 : <input type="text" name="id"> <br>
	나이    : <input type="text" name="age"> <br>
	<input type="submit" value="전송"  onclick ="return check()">
	</form>
</body>
</html>