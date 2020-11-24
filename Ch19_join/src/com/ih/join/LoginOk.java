package com.ih.join;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
// LoginOk
/**
 * Servlet implementation class LoginOk
 */
@WebServlet("/LoginOk")
public class LoginOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	// java.sql lib 사용
	Connection connection;  // 1.DB 접속
    Statement statement;     // 2.SQL 실행
    ResultSet resultSet;        // 3.SQL 실행 결과
    String name, id, pw;
    String phone1, phone2, phone3, gender;

    // oracle driver
    String driver = "oracle.jdbc.driver.OracleDriver";   	// 1. DB 접속을 위한 드라이버 명칭
    String url = "jdbc:oracle:thin:@localhost:1521:xe";  // 1. DB 접속을 위한 시스템 명칭    
    String uid ="system"; // 1. DB 접속을 위한 계정
    String upw="oracle"; 
    String query = "select * from membership2"; // 2.SQL 실행을 위한 쿼리문  

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginOk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		
		request.setCharacterEncoding("utf-8");
		
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		
		System.out.println("doPost ########  id="+id+"  pw="+pw);
		
		try {        
			// 1. DB 접속을 위한 준비단계
			System.out.println("driver : " + driver); // JDBC(Java DataBase Controller) driver : ojdbc6_g.jar
			Class.forName(driver); // ojdbc6_g.jar 파일을 클래스로 JAVA VM에 등록 
			connection = DriverManager.getConnection(url, uid, upw); // 실질적인 DB연결		
			System.out.println("connection url : " + url  +"  uid="+uid );
			System.out.println("query : " + query);

			
			// 2.SQL 실행을 위한 쿼리문  적용을 위한 준비 단계
			statement = connection.createStatement(); // query 문장을 위한 객체의 인스턴스 선언(리턴 값)
			//3. SQL 실행 결과를 위한 준비 단계
			
			// #방법2.
			System.out.println("id = " + id + " pw = " + pw );
			query = "select * from membership2 "
					+ " where id = '" +id + "' and  pw = '" + pw + "' ";					
			resultSet = statement.executeQuery(query); // query 문장 실행 결과를 저장 결과  선언(리턴 값)
			while ( resultSet.next() ) {
				String tId = resultSet.getString("id"); // 필드(field) 명칭
				String tPw = resultSet.getString("pw");
				String tName = resultSet.getString("name");				
				System.out.println("id = " + id + " pw = " + pw );
				System.out.println("tId = " + tId + " tPw = " + pw );
				 //# 방법2
				HttpSession httpSession = request.getSession();
				httpSession.setAttribute("name", tName);
				httpSession.setAttribute("id", id);
				httpSession.setAttribute("pw", pw);	
				System.out.println("sucess!!!" );
				response.sendRedirect("loginResult.jsp");	
				
				// # 방법1
		/*	if ( id.equals(tId) && pw.equals(tPw)  ) {		
					HttpSession httpSession = request.getSession();
					httpSession.setAttribute("name", tName);
					httpSession.setAttribute("id", id);
					httpSession.setAttribute("pw", pw);	
					System.out.println("sucess!!!" );
					response.sendRedirect("loginResult.jsp");					
				} else {
					System.out.println("fail!!!" );						
				}	*/	
//				PrintWriter prn = response.getWriter();
//				prn.println("id = " + id + "pw = " + pw +  " <br>");			
			}		
			response.sendRedirect("login.html");	 
		} catch (Exception e) {
			System.out.println("Exception ==> " + e);
		} finally {
			try {
				if (resultSet != null) resultSet.close();
				if (statement != null) statement.close();
				if (connection != null) connection.close(); // 할당된 인스턴스의 메모리를 free하게 함
			} catch (Exception e) {
				System.out.println("SQL Exception ==> " + e);
			}
		}  
	}

}
