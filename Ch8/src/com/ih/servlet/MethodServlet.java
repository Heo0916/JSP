// MethodServlet.java
package com.ih.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MethodServlet
 */
@WebServlet("/MethodServlet")
public class MethodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MethodServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=euc-kr");
		PrintWriter out = response.getWriter();
		out.print("<h1> get 방식으로 처리 </h1>");
		
		// 웹 프로그래밍 언어 대표적인 4가지
		// HTML : Hyper Text Markup(태그) Lang 
		// 태그에는 반드시  변수=값   (HTML에서는 = 사용)
		// (CSS 는 : 을 사용)
		// JS(HTML 코드에서 : 을 사용)
		// J(ava script) query : JS 라이브러리(API의 묶음, *.jar)   
		out.println("<br><br><br><br>"
				+ "<a href='javascript:history.go(-1)'> 이전으로 </a>"
				+ "<br><br><br><br>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("<h1> post 방식으로 처리 </h1>");
		out.close();
	}

}
