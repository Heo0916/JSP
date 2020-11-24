package com.ih.servelt;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class FormEx
 */
@WebServlet("/FormExUser2")
public class FormEx extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormEx() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		System.out.println("Init #############");
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		System.out.println("destroy #############");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	// request   : Web서버(apache-tomcat) ===> WAS(apache-tomcat)
	// response : Web서버                       <===  WAS
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost #############");
		
		request.setCharacterEncoding("utf-8"); // request 인코딩 설정
		
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println("name="+name+ "   id="+id+ "  pw="+ pw);
		
		String[] hobbys = request.getParameterValues("hobby"); // checkbox에 대한  데이터 입력 방식은 배열 사용
		System.out.println("hobbys= ");
		for(int i=0; i<hobbys.length; i++) {
			System.out.print(hobbys[i]+ "  ");
		}
		System.out.println();
		String major = request.getParameter("major");
		String protocol = request.getParameter("protocol");
		System.out.println("major="+major+ "   protocol="+protocol);
		
		// response 인코딩 설정
		response.setContentType( "text/html;  charset=utf-8" );
		PrintWriter writer = response.getWriter();
		writer.println("<html><head></head><body>");
		writer.println("이름 : "+ name + "<br>");
		writer.println("아이디 : "+ id + "<br>");
		
		// import java.util.Arrays;
		writer.println("취미 : "+ Arrays.toString(hobbys) + "<br>");
		writer.println("전공 : "+ major + "<br>");
		writer.println("프로토콜 : "+ protocol + "<br>");
		writer.println("</body></html>");
		
	}

}
