package com.koreait.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardCheckPassFormAction implements Action {

	//#57] 서블릿에서  스크립트에 넣을 뷰페이지 호출하자
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//#58] 뷰페이지로 가자
		request.getRequestDispatcher("board/boardCheckPass.jsp").forward(request, response);

	}

}
