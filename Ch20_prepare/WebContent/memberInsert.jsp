<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	Connection connection;  // 1.DB 접속
    Statement statement;     // 2.SQL 실행
    ResultSet resultSet;        // 3.SQL 실행 결과
    
    String driver = "oracle.jdbc.driver.OracleDriver";   	
    String url = "jdbc:oracle:thin:@localhost:1521:xe";  
    String uid ="system";
    String upw="oracle";     
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>memberInsert.jsp</title>
</head>
<body>
<%
	try {
		Class.forName(driver);
		connection = DriverManager.getConnection(url, uid, upw); 
		int n;
		String query = "insert into  membership (id, pw, name, phone) " +
				" values ( ?, ?,  ?,  ? )";  // preparedStatement (미리 준비된 쿼리문)
				
		PreparedStatement  pre;
				
		pre = connection.prepareStatement(query);
		pre.setString(1, "ABCDE");
		pre.setString(2, "1234");
		pre.setString(3, "James");
		pre.setString(4, "010-2323-4545");	
		n = pre.executeUpdate();
		if (n==1) { // 리턴값이 1인 경우 ok!  -1이면 error
			out.println("insert sucess!");
		} else {
			out.println("insert fail!");
		}		
		pre = connection.prepareStatement(query);
		pre.setString(1, "EEEEE");
		pre.setString(2, "4321");
		pre.setString(3, "Tom");
		pre.setString(4, "010-1122-3344");	
		n = pre.executeUpdate();
		
	} catch (Exception ex) {
		ex.printStackTrace();
	} finally {
		try {
			if (resultSet != null) resultSet.close();
			if (statement != null) statement.close();
			if (connection != null) connection.close(); 
		} catch (Exception e) {
			System.out.println("SQL Exception ==> " + e);
		}
	}  
%>

<a href = "memberView.jsp"> 회원정보 보기</a>


</body>
</html>