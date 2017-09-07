package member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.CardDto;
import member.service.impl.MemberDao;

public class CardListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			MemberDao dao = new MemberDao(req.getServletContext());
			List<CardDto> list = null;
			try {
				list = dao.selectCardList(null);
			} catch (Exception e) {e.printStackTrace();}
			
			req.setAttribute("list", list);
			
			req.getRequestDispatcher("/admin/member/CardList.jsp").forward(req, resp);
			
			
	}
}
