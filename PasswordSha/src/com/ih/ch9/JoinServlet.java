package com.ih.ch9;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import SHA256Util.SHA256Util;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/join.do")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("JoinServlet : doGet ...");
		String url = "member/Join.jsp";
		HttpSession session = request.getSession();
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
		System.out.println("JoinServlet : doPost ...");		
	
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String admin = request.getParameter("admin");
		
	//	String salt = SHA256Util.generateSalt();
		// ��ȣȭ�� �н���ũ
		String newPassword = SHA256Util.getEncrypt(pwd, userid);
	
		MemberVO mVo = new MemberVO(); // ���ڿ� data ����
		mVo.setUserid(userid);
		mVo.setPwd(newPassword);
		mVo.setName(name);
		mVo.setEmail(email);
		mVo.setPhone(phone);
		mVo.setAdmin(Integer.parseInt(admin));
		
		MemberDAO mDao = MemberDAO.getInstance(); // dao ȹ�� �� ȣ��
		int result = mDao.insertMember(mVo); // data �߰� 		
		
		HttpSession session = request.getSession();
		if (result == 1) {
			session.setAttribute("userid", mVo.getUserid());
			request.setAttribute("message", "ȸ�� ���Կ� �����߽��ϴ�.");
		} else {
			request.setAttribute("message", "ȸ�� ���Կ� �����߽��ϴ�.");
		}
		RequestDispatcher disp 
			= request.getRequestDispatcher("member/Login.jsp");
		disp.forward(request, response);
	}

}
