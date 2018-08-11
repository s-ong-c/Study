package com.koreait.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.dao.BoardDAO;
import com.koreait.dto.BoardVO;

public class BoardCheckPassAction implements Action {
	//#65] 수정- 비번 체크   num, pass
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "";
		String num = request.getParameter("num");
		String pass = request.getParameter("pass");
		
		//BoardVO vo = BoardDAO.getInstance().selectOneBoard(num);
		//#66] 글번호 패스워드 체크해서 한건 글 정보 가져오자  
		BoardVO vo = BoardDAO.getInstance().checkPassword(num, pass);
		
		if(vo.getPass().equals(pass)){
			//url="성공했을 때 페이지";
			url="board/checkSuccess.jsp";  //update or  delete
		}else{
			url="board/boardCheckPass.jsp";
			request.setAttribute("message", "비밀번호가 틀렸습니다");
			
		}
		//#69] checkSuccess로 가자
		request.getRequestDispatcher(url).forward(request, response);
		
		

	}

}
