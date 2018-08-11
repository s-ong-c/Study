package admin.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import answer.dao.AnswerDAO;

public class AdminFAQAnswerDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		int fr_num = Integer.parseInt(request.getParameter("fr_num"));
		AnswerDAO.getInstance().deleteAnswer(num);
		request.getRequestDispatcher("/AdminServlet?command=admin_faq_view&num="+fr_num).forward(request, response);
	}

}
