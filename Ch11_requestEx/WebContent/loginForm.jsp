<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>loginForm.jsp</title>
</head>
<body>
	<form method="post"  action="testLogin.jsp">
		<label for="userid">  아이디 : </label>
		<input type="text"  name="id"  id="userid">	<br>
		
		<label for ="userpw"> 암&nbsp;호</label>
		<input type="password"  name="pw"  id="userpw">		<br>	
			
		<input type="submit"  value="로그인">
	</form>
</body>
</html>