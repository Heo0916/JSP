<%@page import="java.sql.Timestamp"%>
<%@page import="com.ih.member.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="dto" class="com.ih.member.MemberDto"/>
<!-- value="???" 가 생략됨  -->
<jsp:setProperty name="dto" property="*"  /> 

<%
// 1970sus 1월 1일 0시부터 현재까지 지나온 시간을 ms로 표현한 데이터
		dto.setrDate(new Timestamp(  System.currentTimeMillis()  )   );

		MemberDao dao = MemberDao.getInstance();
		
		if(dao.confirmId(  dto.getId()  ) == MemberDao.MEMBER_EXISTENT) {
%>
		<script language="javascript">
			alert("아이디가 이미 존재 합니다.");
			history.back();
		</script>
<%
		} else {
			int ri = dao.insertMember(dto);
			if(ri == MemberDao.MEMBER_JOIN_SUCCESS) {
				session.setAttribute("id", dto.getId());
			//	session.setAttribute("name", dto.getName());
%>
			<script language="javascript">
				alert("회원가입을 축하 합니다.");
				document.location.href="login.jsp";
			</script>
<%
			} else {
%>
			<script language="javascript">
				alert("회원가입에 실패했습니다.");
				document.location.href="login.jsp";
			</script>
<%
			}
		}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>