<%@page import="com.ih.member.MemberDto"%>
<%@page import="com.ih.member.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	String id = (String) session.getAttribute("id");
	MemberDao dao = MemberDao.getInstance();
	MemberDto dto = dao.getMember(id);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script language="JavaScript" src="members.js"></script>
</head>
<body>
	<form action="modifyOk.jsp" method="post" name="reg_frm">
		아이디 :
		<%=dto.getId()%><br /> 
		비밀번호 : <input type="password" name="pw"
			size="20"><br /> 
		비밀번호 확인 : <input type="password"
			name="pw_check" size="20"><br /> 
		이름 : <%=dto.getName()%><br /> 
		메일 : <input type="text" name="eMail"
			size="20" value="<%=dto.getEmail()%>"><br /> 
			
		<input type="button" value="수정" onclick="updateInfoConfirm()">&nbsp;&nbsp;&nbsp;
		<input type="reset" value="취소"
			onclick="javascript:window.location='login.jsp'">
	</form>
</body>
</html>