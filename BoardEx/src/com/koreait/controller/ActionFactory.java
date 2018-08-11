package com.koreait.controller;
import com.koreait.controller.action.Action;
import com.koreait.controller.action.BoardCheckPassAction;
import com.koreait.controller.action.BoardCheckPassFormAction;
import com.koreait.controller.action.BoardDeleteAction;
import com.koreait.controller.action.BoardListAction;
import com.koreait.controller.action.BoardUpdateAction;
import com.koreait.controller.action.BoardUpdateFormAction;
import com.koreait.controller.action.BoardViewAction;
import com.koreait.controller.action.BoardWriteAction;
import com.koreait.controller.action.BoardWriteFormAction;

public class ActionFactory {
private ActionFactory(){}
	
	private static ActionFactory factory = new ActionFactory();
	
	public static ActionFactory getInstance(){
		return factory;
	}
	
	//서비스를 생산하다
	//#4] board_list 를 갖고 왔다.
	//#17] board_write_form 글쓰러 왔다.
	//#28] board_write 글쓰기 db 하러 왔다
	//#54] board_check_pass_form 수정하기 위해 비번 넣는 뷰페이지 부르자!
	//#63] 수정 - 비번 체크
	//#73] 수정 - 원글 보기
	//#84] 수정완료 - db쓰기
	public Action getAction(String command){
		
		System.out.println("ActionFactory : "+command);
		
		Action action=null;
		
		if(command.equals("board_list")){
			//#5] 목록보기
			action = new BoardListAction();
		}else if(command.equals("board_write_form")){

			//#18] 글쓰기.jsp로 가자
			action = new BoardWriteFormAction();

		}else if(command.equals("board_write")){
			//#29] 글쓰기 db 하러 가자
			action = new BoardWriteAction();

		}else if(command.equals("board_view")){
			//#41] 글 한건 보기 
			action = new BoardViewAction();

		}else if(command.equals("board_check_pass_form")){
			//#55] 글 수정 - 비번넣는 디자인 호출 -  클래스 
			action = new BoardCheckPassFormAction();

		}else if(command.equals("board_check_pass")){
			//#64] 글 수정 - 비번체크==>execute로 바로 가자! 
			action = new BoardCheckPassAction();

		}else if(command.equals("board_update_form")){
			//#74] 글 수정 - 원글 보기==>execute로 바로 가자! 
			action = new BoardUpdateFormAction();

		}else if(command.equals("board_update")){
			//#85] 글 수정 db에 update하러 가기==>execute로 바로 가자! 
			action = new BoardUpdateAction();

		}else if(command.equals("board_delete")){
			//#] 글  db에 update하러 가기==>execute로 바로 가자! 
			action = new BoardDeleteAction();
			}
 	//BoardServlet 으로 가자
		return action;
	}
	
	
}


