<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>actionTagTest.jsp</title>
</head>
<body>
<%
	String userID = request.getParameter("userID");
	String userPwd = request.getParameter("userPwd");
	String loginCheck = request.getParameter("loginCheck");
	
	// 콘솔창 출력
	System.out.println("userID="+userID );
	System.out.println("userPwd="+userPwd );
	System.out.println("loginCheck="+loginCheck );

	// 브라우저 화면 출력
	out.println("userID="+userID );
	out.println("userPwd="+userPwd );
	out.println("loginCheck="+loginCheck );	
%>
   <!-- HTML코드로  브라우저 화면 출력-->
	userID : <%= userID %>
	userPwd : <%= userPwd %>
	loginCheck : <%= loginCheck %>
	
<%
	if (loginCheck.equals("user")) {
%>
<!-- JSP 방식으로 코딩한 경우 
      1. forward이기 때문에 userID는 생략가능
      2. 만약, userID를 또 한번  encode한 경우,
         이동페이지에서 decode 가 필요함 
-->
	
     <jsp:forward page="userMain.jsp">
		<jsp:param 
		 value=
			 '<%=URLEncoder.encode("홍길동", "UTF-8")%>'		 
		 name="userName"/>	 
		<jsp:param 
		 value=
			 '<%=URLEncoder.encode(userID, "UTF-8")%>'		 
		 name="userID"/>		 
	</jsp:forward> 
	
<!-- 자바 방식으로 코딩한 경우  
    1. 주의사항
    RequestDispatcher를 사용한 경우 
    post방식처럼  setCharacterEncoding 반드시 필요-->
<%-- <%
	request.setCharacterEncoding("utf-8");
	RequestDispatcher dis 
			= request.getRequestDispatcher(
							"userMain.jsp?userName="
							+URLEncoder.encode("홍길동", "UTF-8"));
	dis.forward(request, response);	
%>	 --%>


<!-- 자바 방식으로 코딩한 경우  
	1. 주의사항
	  redirect방식을 사용한 경우, 반드시 파라미터를 사용하여
	  데이터를 전달해야함
	    -->
<%-- <%
	response.sendRedirect(
			"userMain.jsp?userName="
			+ URLEncoder.encode("홍길동", "UTF-8")
			+ "&userID="
			+ URLEncoder.encode(userID, "UTF-8") );
%> --%>

<%
	} else {		
%>
	<jsp:forward page="managerMain.jsp">
		<jsp:param 
		 value=
			 '<%=URLEncoder.encode("임꺽정", "UTF-8")%>'		 
		 name="userName"/>
	</jsp:forward>
<%
	}
%>

<hr>
도움말<br>
	<!-- 단순한 페이지 이동 -->
<script type ="text/javascript">
	alert("자바스크립트 기반의 페이지 이동");
	history.go("-1" );
</script>

</body>
</html>