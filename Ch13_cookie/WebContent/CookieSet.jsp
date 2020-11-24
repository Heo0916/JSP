<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- Ch13_cookie -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CookieSet.jsp</title>
</head>
<body>
<p> 쿠키의 특징 </p>
<pre>
		브라우저 종류/버전별 쿠키는 
		1개 정보당 4kb로 용량이 제한됨
		300개까지 배열형태로 저장됨,  
		총 300개*4kb = 약 1.2M
		1.2M 초과시 오랜된 정보부터 자동 삭제
</pre>
<%
	// name & value
	Cookie cookie = new Cookie("cookieN--", "cookieV--" );
	cookie.setMaxAge(60*60); 		// 60초*60= 1시간, 또는 3600, 단위는 sec 
	response.addCookie(cookie); 

	cookie = new Cookie("order", "clothes" );
	cookie.setMaxAge(60*30); 	// 30분
	response.addCookie(cookie); 
	
	cookie = new Cookie("site", "http://www.naver.com" );
	cookie.setMaxAge(60*60*2); 	// 2시간
	response.addCookie(cookie); 
%>
<a href = "cookieGet.jsp"> get cookie </a>
</body>
</html>