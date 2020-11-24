package com.ih.hello;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloWorld
 */
// JAVA comment : ctl + /
@WebServlet(description = "HelloWorld Ex", 
urlPatterns = { "/HelloWorld" })
//@WebServlet(description = "HelloWorld Ex", urlPatterns = { "/WORLD" })
public class HelloWorld extends HttpServlet {
	private static final long serialVersionUID = 1L; 	//일련번호 (serial number)
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloWorld() { // 기본 생성자
        super();
    }
	/**  
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("### doGet   hello world *******");
		// ctl+z (이전, prev)  ctl+shift+z(이전 취음, next) 
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("### doPost   hello world!!!!!!!!!!!!!!!"); // 콘솔에 출력
		
		response.setContentType( "text/html;  charset=utf-8" );
		//response.setContentType( "text/html;  charset=euc-kr" ); 
		PrintWriter writer = response.getWriter();	// 브라우저 화면 출력
		writer.println("<html>");
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1> POST가 응답합니다........</h1>");
		// h1~h6 (h4는 16px)
		writer.println("</body>");
		writer.println("</html>");
	}

}
