package member.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.dao.MemberDAO;
import member.dto.MemberVO;

public class MemberInsertAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MemberVO vo = new MemberVO();
		vo.setId(request.getParameter("id"));
		vo.setPwd(request.getParameter("pwd"));
		vo.setName(request.getParameter("name"));
		vo.setEmail(request.getParameter("email"));
		
	
		MemberDAO dao = MemberDAO.getInstance();
		dao.insertMember(vo);
		
		request.setAttribute("vo", vo);
		request.getRequestDispatcher("instar_main.jsp").forward(request, response);
	}

}
