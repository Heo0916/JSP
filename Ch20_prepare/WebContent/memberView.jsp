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
    String query = "select * from membership";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>memberView.jsp</title>
</head>
<body>
<% 
	try {
		Class.forName(driver);
		connection = DriverManager.getConnection(url, uid, upw); 
		statement = connection.createStatement(); // query 문장을 위한 객체의 인스턴스 선언(리턴 값)
		resultSet = statement.executeQuery(query); // query 문장 실행 결과를 저장 결과  선언(리턴 값)
		while ( resultSet.next() ) {
			String tId = resultSet.getString("id"); // 필드(field) 명칭
			String tPw = resultSet.getString("pw");
			String tName = resultSet.getString("name");
			String tPhone = resultSet.getString("phone");

			out.println("tId = " + tId + " tPw = " + tPw );
			out.println("tName = " + tName + " tPhone = " + tPhone );
			out.println("<br>");
		}		
	} catch (Exception ex) {
		System.out.println("Exception ==> " + ex);
	} finally {
		try {
			if (resultSet != null) resultSet.close();
			if (statement != null) statement.close();
			if (connection != null) connection.close(); // 할당된 인스턴스의 메모리를 free하게 함
		} catch (Exception e) {
			System.out.println("SQL Exception ==> " + e);
		}
	}  
%>


</body>
</html>