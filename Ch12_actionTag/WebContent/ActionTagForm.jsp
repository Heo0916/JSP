<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ActionTagForm.jsp</title>
</head>
<body>
	<!-- method를 생략할 경우 get방식 -->
	<form action="actionTagTest.jsp" >
		아이디 : <input type="text"  name="userID"> <br>
		암&nbsp;&nbsp;&nbsp;&nbsp;호 : <input type="password"  name="userPwd"> <br>
		
		<input type="radio"  name="loginCheck"  value="user"  checked="checked">사용자
		<input type="radio"  name="loginCheck"  value="manager" >관리자  <br>
		
		<input type="submit"  value="로그인">
		
	</form>
	
<hr><hr>
<h2>페이지 이동</h2>
<p> 페이지 이동은 html, js, 
	Java방식으로 RequestDispatcher(forward), sendRedirect
	가 있으며, JSP방식으로 액션태그인
	< jsp:forward >  가 존재함 <p>
	


<hr><hr>
<h2>서블릿 페이지 이동</h2>
<h3>utf-8</h3>
<p>get방식 : setCharacterEncoding이 필요없음  </p>
<h3>euc-kr</h3>
<p>get방식 : setCharacterEncoding이 필요없음  </p>
<p>        server.xml의  < Connector 부분에 <br>
 			 URIEncoding="euc-kr"을 추가해야함  </p>

<h3>utf-8과 euc-kr</h3>
<p>post방식 : setCharacterEncoding이 필요함 </p>
	
	
</body>
</html>