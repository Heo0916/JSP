<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Context initContext = new InitialContext();
	// ������Ʈ ��� ���̺�
	Context evnContext = (Context) initContext.lookup("java:/comp/env");
	// ������Ʈ ��� ���̺� ���Ե� ���ҽ� �˻�
	DataSource ds = (DataSource) evnContext.lookup("jdbc/myoracle");
	Connection conn = ds.getConnection();
	out.println("DBCP ���� ����");
%>

</body>
</html>