<!--  login.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
<!-- <form method="get"  action="login"> -->
<form method="post"  action="login">
	<label for ="userid"> 아이디 : </label>	<!-- label은 이름표/표식 -->
	<input type="text"  name="id"  id="userid"> <br>
	
	<label for ="userid"> 암&nbsp;&nbsp;&nbsp;&nbsp;호 : </label>  <!-- &nbsp;는 한칸띄기 -->
	<input type="text"  name="password"  id="password"> <br>
	
	<input type="submit"  value="로그인"> <br>

</form>

</body>
</html>