package member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.MemDto;
import member.service.impl.MemberDao;

public class FindMemberController extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		MemberDao dao = new MemberDao(req.getServletContext());
		List<MemDto> list = null;
		
		try {
			list = dao.selectMemList();
		} catch (Exception e) {e.printStackTrace();}
		
		req.setAttribute("list", list);
		req.getRequestDispatcher("/admin/member/IdFind.jsp").forward(req, resp);	
	}
	
}
