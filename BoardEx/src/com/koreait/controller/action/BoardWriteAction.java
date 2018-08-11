package com.koreait.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.dao.BoardDAO;
import com.koreait.dto.BoardVO;

public class BoardWriteAction implements Action {
	//#31] request에 담긴 내용을 꺼내서 db에 쓰자!
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		BoardVO vo = new BoardVO();
		vo.setName(request.getParameter("name"));
		vo.setPass(request.getParameter("pass"));
		vo.setEmail(request.getParameter("email"));
		vo.setTitle(request.getParameter("title"));
		vo.setContent(request.getParameter("content"));
		
						//#32] 글 삽입 하러 가자
		BoardDAO.getInstance().insertBoard(vo);
		
		
		//#35] db에 insert하고 왔다 --> 글 목록으로 가보자!
		//목록으로 가자!-프론트를 거치지 않고 바로 직행하는 방법으로 갈거다!
		//request.getRequestDispatcher("BoardServlet?command=board_list").forward(), arg1);
		
		//#36] 목록보기로 넘어가자 --> boardList.jsp
		new BoardListAction().execute(request, response);
		
		
		
	}

}
