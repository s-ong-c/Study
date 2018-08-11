package com.koreait.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.dao.BoardDAO;
import com.koreait.dto.BoardVO;

//#75] 팩토리에서 업데이트 하러 왔다(글번호 있음!!!)
public class BoardUpdateFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num = request.getParameter("num");
		
		BoardDAO dao = BoardDAO.getInstance();

		//#76] - 수정할 때:글 조회수를 1 증가시키자
		dao.updateReadCount(num);
		
		//#79] - 조회수가 1증가된 db내용을 가져오자
		BoardVO vo = dao.selectOneBoard(num);
		
		request.setAttribute("board", vo);
		
		request.getRequestDispatcher("/board/boardUpdate.jsp").forward(request, response);
		
		

	}

}
