package member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.SimpleMemDto;
import member.service.impl.MemberDao;

public class SimpleMemberListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		SimpleMemDto dto = new SimpleMemDto();
		List list = null;
		MemberDao dao = new MemberDao(req.getServletContext());
		try {
			list = dao.selectSimpleMemlist();
		} catch (Exception e) {	e.printStackTrace();}
		
		req.setAttribute("list", list);
		
		req.getRequestDispatcher("/admin/member/SMemberList.jsp").forward(req, resp);
			
	}
	
}
