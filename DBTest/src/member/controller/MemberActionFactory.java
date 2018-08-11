package member.controller;

import member.action.Action;
import member.action.IdCheckAction;
import member.action.MainFormAction;
import member.action.MemberInsertAction;
import member.action.StartAction;


public class MemberActionFactory {
	private MemberActionFactory() {

	}
	private static MemberActionFactory factory= new MemberActionFactory();
	public static MemberActionFactory getInstance() {
		
		return factory;
	}
	
	public Action getAction(String command) {
		 Action action = null;
		 
		 if(command.equals("join_form")) {
			 action = new StartAction();
		 }else if(command.equals("member_insert")){
				action = new MemberInsertAction();
			}else if(command.equals("id_check")){
				action = new IdCheckAction();
			}else if(command.equals("main_form")){
				System.out.println("야 ");
				action = new MainFormAction();
			}
		 
		 return action;
		
	}
}
