<%@page import="java.text.SimpleDateFormat"%>
<%@page  import =" java.util.Calendar" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>importEx.jsp</title>
</head>
<body>
<%
	Calendar date = Calendar.getInstance(); // 인스턴스 객체
	SimpleDateFormat today = new SimpleDateFormat("yyyy년 MM월 dd일" ); // M월
	SimpleDateFormat todayDefault = new SimpleDateFormat();
	
	SimpleDateFormat now = new SimpleDateFormat("hh시 mm분 ss초");		// m 분
	SimpleDateFormat nowDefault = new SimpleDateFormat();
	// UTC 시간,   GMT,     KST
%>
<!-- b는 bold 체로 출력!! -->
오늘은 <b>  <%= today.format(date.getTime()) %> </b> 입니다 <br>
오늘은 <b>  <%= todayDefault.format(date.getTime()) %> </b> 입니다<br>

지금 시각은 <b>  <%= now.format(date.getTime()) %> </b> 입니다<br>
지금 시각은 <b>  <%= nowDefault.format(date.getTime()) %> </b> 입니다<br>






</body>
</html>