package com.ih.ch9;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("LoginServlet : doGet...");
		String url = "member/Login.jsp";
		
		HttpSession session = request.getSession();
		System.out.println("LoginServlet : ���ǿ��� : " 
				+session.getAttribute("loginUser"));
		
		if (session.getAttribute("loginUser") != null) {// �̹� �α��� �� ������̸�
			url = "main.jsp"; // ���� �������� �̵��Ѵ�.
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("LoginServlet : doPost....");
		String url = "member/Login.jsp";
		
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		
		MemberDAO mDao = MemberDAO.getInstance();
		int result = mDao.userCheck(userid, pwd);
		System.out.println("LoginServlet : result : "+result);
		
		if (result == 1) {
			MemberVO mVo = mDao.getMember(userid);
			HttpSession session = request.getSession();
			
			session.setAttribute("loginUser", mVo);
			request.setAttribute("message", "ȸ�� ���Կ� �����߽��ϴ�.");
			url = "main.jsp";
		} else if (result == 0) {
			request.setAttribute("message", "��й�ȣ�� ���� �ʽ��ϴ�.");
		} else if (result == -1) {
			request.setAttribute("message", "�������� �ʴ� ȸ���Դϴ�.");
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

}
