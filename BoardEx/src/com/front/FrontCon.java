package com.front;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class FrontCon
 */
@WebServlet("*.do")
public class FrontCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FrontCon() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	private void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("--doAction()--");
		String uri = request.getRequestURI();
		System.out.println("uri : " + uri);

		String conPath = request.getContextPath();
		System.out.println("conPath : "+conPath);

		//분석
		String command = uri.substring(conPath.length());
		System.out.println("분석한 명령문 : "+command);


		if(command.equals("/insert.do")){
			System.out.println("삽입하기 위한 클래스를 만들자!");

		}else if(command.equals("/select.do")){
			System.out.println("리스트를 보기 위한 클래스를 만들자!");
		}else if(command.equals("/delete.do")){
			System.out.println("삭제를 위한 클래스를 만들자!");
		}else if(command.equals("/update.do")){
			System.out.println("수정 위한 클래스를 만들자!");
		}






	}

}