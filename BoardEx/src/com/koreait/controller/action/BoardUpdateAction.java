package com.koreait.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.dao.BoardDAO;
import com.koreait.dto.BoardVO;

//#86] 수정글 db에 쓰기
public class BoardUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//수정 내용은 request에 들어 있다.
		//vo에 담아서 updateBoard()에 넣어주자

		BoardVO vo = new BoardVO();
		vo.setNum(Integer.parseInt(request.getParameter("num")));
		vo.setName(request.getParameter("name"));
		vo.setPass(request.getParameter("pass"));
		vo.setEmail(request.getParameter("email"));
		vo.setTitle(request.getParameter("title"));
		vo.setContent(request.getParameter("content"));
		
		//#87] db에 쓰러 가자
		BoardDAO.getInstance().updateBoard(vo);
		
		
		//수정이 완료되면.. 프론트를 거쳐서 리스트를 보지 말고
		//바로 리스트 서비스를 불러보자!
		//#90] boardList.jsp  
		new BoardListAction().execute(request, response);
		

	}

}
