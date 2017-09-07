package member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.MembershipDto;
import member.service.impl.MemberDao;

public class MembershipListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			MemberDao dao = new MemberDao(req.getServletContext());
			List<MembershipDto> list = null;
			
			try {
				list = dao.selectMembershipList();
			} catch (Exception e) {e.printStackTrace();}
			
			req.setAttribute("list", list);
			req.getRequestDispatcher("/admin/member/MembershipList.jsp").forward(req, resp);
			
	}
}
