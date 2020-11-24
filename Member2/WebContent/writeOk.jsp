<%@page import="java.io.PrintWriter"%>


<%@page import="com.heo.bbs.BbsDAO" %>
<%@page import="com.heo.bbs.Bbs" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="bbs" class="com.heo.bbs.BbsDAO" scope ="page"/>
<jsp:useBean id="dto" class="com.heo.bbs.Bbs"/>
<!-- value="???" 가 생략됨  -->

<jsp:setProperty name="dto" property="bbsTitle" />
<jsp:setProperty name="dto" property="bbsContent" />
 




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	
    
	String userID = null;
	if (session.getAttribute("id")!= null){
		userID = (String)session.getAttribute("id");
	}
	out.println(userID);
	if(userID == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println(" alert('로그인 하세요.')");
		script.println("location.href = 'login.jsp'");
		script.println("</script>");
	}else{
		if(dto.getBbsTitle()== null || dto.getBbsContent() == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안된 사항이 있습니다')");
			script.println("history.back");
			script.println("</script>");
		}
	 else {
		BbsDAO bbsDAO = new BbsDAO();
		int result = bbsDAO.write(dto.getBbsTitle(),userID,dto.getBbsContent());
		if(result == -1){
			PrintWriter script =response.getWriter();
			script.println("<script>");
			script.println("alert('글쓰기에 실패했습니다.')");
			script.println("history.back(-1)");
			script.println("</script>");
			
		}else{
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("location.href = 'bbs.jsp'");
			script.println("</script>");
		}
		
	}
	}
	
%>			
</body>
</html>