<!-- Expression.jsp   ctl+shift+\  --> 
<!-- @ : system에게 알려주는 표식(자) -->
<!--  page : 지시자(명령)	language : 언어	contentType : charset은 선언된 문자정보(html/utf-8) 로 출력
	pageEncoding : 현재 파일의 인코딩 방법
-->
<%-- <%@ page  language="java"   contentType="text/html; charset=UTF-8"   
		pageEncoding="UTF-8"  %>
 --%>
 <%@page import="java.util.Arrays"   %>
<%@ page  language="java"   contentType="text/html; charset=euc-kr"   
 		pageEncoding="euc-kr"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- meta : 메타포어(의미를 암시) -->
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<title>JSP ***** </title> <!-- 브라우저 상단 제목 -->
</head>
<body>
<%!   /* !  : 선언문  */
	int i = 10;
	String str = "abc";
	private int sum(int a,  int b) {
		return a+b;
	}
%>


i => 		<%= i %> <br>  <!-- =  : 출력문  --> 
str => 	<%= str  %> <br> 
<h2>sum => </h2> <%= sum(1,5) %> 

<%
	int[] iArr = { 10, 20, 30 };
	out.println( Arrays.toString(iArr)  ); 
%>



</body>
</html>

<!-- 이클립스 단축키
      ctl + c : 복사
	  ctl + v : 이동
	  ctl + / : 한줄 커맨트
  -->