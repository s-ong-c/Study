package com.koreait.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.controller.action.Action;

/**
 * Servlet implementation class BoardServlet
 */
@WebServlet("/BoardServlet")
public class BoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//디렉토리 패턴- 커맨드
				//#2] index.jsp 에서 왔다(첨.. 목록을 보여줘!) -board_list
				//#15] board_write_form들고  글쓰기 하러 왔다.
				//#26] board_write, 5개 항목을 request에 담아왔다.
				//#39] board_view, 글 한건 보기 하러 왔다.
				//#52] 자바스크립트 - 수정하러 왔다. board_check_pass_form
				//#61] 수정 - board_check_pass
				//#71] 수정 -form 하러 왔다 글번호도 들고 왔다
				//#82] 수정완료 후 db 쓰러 가자
				String command = request.getParameter("command");
				System.out.println("command : " + command);
				
				ActionFactory af = ActionFactory.getInstance();

				//#3] 서비스 클래스 만들어 오자!
				//#16] 글쓰기 서비스 만들어 오자!
				//#27] 글쓰기 db용 서비스를 불러오자
				//#40] 글 한건 보기
				//#53] 글 수정 - 서비스 만들기
				//#62] 수정 - 비번 체크하러 가기
				//#72] 수정 - 뷰페이지 보기
				//#83] 수정완료 DB 작성
				Action  action = af.getAction(command);
				
				if(action != null){
					//#6] BoardListAction의 execute하러 가자!
					//#19] BoardWriteFormAction 의 execute하러 가자
					//#30] write ,  db 하러 가자
					//#42] view,  페이지에 보러 가자
					//#56] 스크립트 창에 뷰페이지 넣어주러 가자
					action.execute(request, response);
	
				}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
