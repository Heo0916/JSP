package com.ih.join;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class joinOk
 */
@WebServlet(description = "회원가입", urlPatterns = { "/joinOk" })
public class joinOk extends HttpServlet {
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
    /**
     * Default constructor. 
     */
    public joinOk() {
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
		System.out.println("doPost ########");
		request.setCharacterEncoding("utf-8");
		name = request.getParameter("name");
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		phone1 = request.getParameter("phone1");
		phone2 = request.getParameter("phone2");
		phone3 = request.getParameter("phone3");
		gender = request.getParameter("gender");		
		System.out.println("name = "+ name);		
		String query = " insert  into membership2 (id, pw, name, phone1,phone2, phone3)        "
				+ "    values ( '"+id+"',   '"+pw+"', '"   +name+"',  '"
				+	phone1+"' ,  '"+phone2+" ' ,  ' "+phone3+"'  ) "; 
		/*
		  insert  into membership2 (id, pw, name, phone1,phone2, phone3) 
      				values ('abcd', '1234', '가나다', '010', '1234', '5678')  ;
		 */
		try {
			Class.forName(driver);
			connection = DriverManager.getConnection(url, uid, upw);
			statement = connection.createStatement();
			int i  = statement.executeUpdate(query);
			if (i==1) {
				System.out.println("insert sucess!!!");
				response.sendRedirect("joinResult.jsp");
			} else {
				System.out.println("insert fail!!!");
				response.sendRedirect("join.html");
			}
		} catch (Exception e) {
			System.out.println("Exception :: " + e.toString()); // e 또는 e.toString()
		} finally {
			try {
				if (statement != null) statement.close();
				if (connection != null) connection.close(); // 할당된 인스턴스의 메모리를 free하게 함
			} catch (SQLException e) {
				System.out.println("SQLException :: " + e.toString()); // e 또는 e.toString()
			}
		}
		
		
		
	}

}
