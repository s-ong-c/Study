package com.codechobo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("utf-8");
		
		System.out.println("dasd");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
//		int cookresult=0;
//		Cookie[] cook =  request.getCookies();
//		if(cook!=null){
//			for(int i = 0 ; i<cook.length ; i++)
//				if(cook[i].getName().equals("asdf")){
//					String LoginId = cook[i].getValue();
//					request.setAttribute("id", LoginId);
//					cookresult=1;
//				}
//		}
//		if(cookresult==0)
//			request.setAttribute("id", "LoginId");
//		System.out.println(cookresult+"cookresultcookresult");
		
		if((id.equals("asdf")&&pw.equals("1234")) || (id.equals("aaa")&&pw.equals("1111"))) {
			response.sendRedirect("instar_main.jsp");
		}else {
			request.setAttribute("msg", "id 또는 비번이 틀렸습니다.");
			
			RequestDispatcher reqDis = request.getRequestDispatcher("/login.jsp");
			reqDis.forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
