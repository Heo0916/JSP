package com.ih.init;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletInitParam
 */
@WebServlet("/ServletInitParam2")	// Url mapping 주소
public class ServletInitParam extends HttpServlet { 	// 서블릿(클래스)명
	private static final long serialVersionUID = 1L;
           /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletInitParam() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("### doGet #############");
		String id = getInitParameter("id");
		System.out.println("id="+id);
		String ip = getInitParameter("ip");
		String port = getInitParameter("port");
		System.out.println("ip="+ip+ " port="+port);
		// response 인코딩 설정
		response.setContentType( "text/html;  charset=utf-8" );
		PrintWriter writer = response.getWriter();
		writer.println("<html><head></head><body>");
		writer.println("아이디 : "+ id + "<br>");
		writer.println("ip : "+ ip + "<br>");
		writer.println("port : "+ port + "<br>");
		writer.println("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
