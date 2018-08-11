package member.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import member.dao.MemberDAO;
import member.dto.MemberVO;


public class MainFormAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			String url = "login.jsp";
		
		MemberVO vo = new MemberVO();
		vo.setId(request.getParameter("id"));
		vo.setPwd(request.getParameter("pw"));
		
		
		MemberDAO dao = MemberDAO.getInstance();
		int result = dao.memberCheck(vo);
		
		if(result == 1){
			
			vo = dao.getMember(vo.getId()); 
			
			HttpSession session = request.getSession();
			session.setAttribute("member", vo);
			url="instar_main.jsp";
		
			
		}else if(result == 0){
			request.setAttribute("message1", "가 틀렸어요.");
		}else if(result == -1){
			request.setAttribute("message2", "가 존재하지 않습니다.");
		}
		
		request.getRequestDispatcher(url).forward(request, response);
		
	}
	

}
