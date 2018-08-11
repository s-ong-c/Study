package com.koreait.controller.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.dao.BoardDAO;
import com.koreait.dto.BoardVO;

public class BoardListAction implements Action {

	//#7] 목록 보기
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("aa");
		String url = "board/boardList.jsp";
		System.out.println("리스트 불러지");
		
		//#8] dao의 db에 있는 모든 글을 가져오자!
		List<BoardVO> list = BoardDAO.getInstance().selectAllBoards();
		//#11] dao에서 list에 글을 담아서 왔다.
		
		request.setAttribute("boardList", list);
		
		//#12] boardList.jsp로 이동하자
		request.getRequestDispatcher(url).forward(request, response);
		

	}

}
