package com.koreait.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.dao.BoardDAO;
import com.koreait.dto.BoardVO;

public class BoardViewAction implements Action {
	//#43] view 페이지로 이동, 보여줄 글 한건의 내용을 들고 view페이지로 가자!
	//그걸 위해서 request에는 num 파람에 값을 갖고 여기까지 왔다.
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String num = request.getParameter("num");
		
		//#44] 번호에 해당하는 글 한건 가지러 가자!
		BoardDAO dao = BoardDAO.getInstance();
		dao.updateReadCount(num);
		BoardVO vo = dao.selectOneBoard(num);
		
		//#47] 글 한건 갖고 왔다.  => boardView.jsp로 가자
		request.setAttribute("board", vo);
		request.getRequestDispatcher("board/boardView.jsp").forward(request, response);
		

	}

}
