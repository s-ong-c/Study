package com.sms;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RadioServlet
 */
@WebServlet("/RadioServlet")
public class RadioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RadioServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");  //MIME 타입
		
		//페이지 만들기 전에 미리 데이터를 모아놓자
		String gender = request.getParameter("gender");
		String mail= request.getParameter("mail");
		String content = request.getParameter("content");
		
		//out객체 <-- 브라우저에서 사용할 태그만들기 하는 객체다.
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>");
		out.print("가입인사");
		out.print("</title></head>");
		out.println("<body>");
		out.println("<h3>입력하신 정보 입니다</h3>");
		out.print("성별 : "+ gender );
		out.print("메일 수신 여부 : "+ (mail.equals("yes")?"수신합니다.":"수신 거부") +"<br>");
		out.print("**가입 인사**<br>");
		out.print("<pre>"+content+"</pre>");
		
		//<pre> 태그는 입력한 정보를 그대로 표시하는 태그이다.
		
		out.println("</body></html>");
	}

}
