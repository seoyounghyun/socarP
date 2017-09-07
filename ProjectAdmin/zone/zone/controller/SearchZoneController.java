package zone.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import zone.service.ZoneDTO;
import zone.service.impl.ZoneDAO;

public class SearchZoneController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		
		ZoneDTO dto = new ZoneDTO();
		List<ZoneDTO> list = null;
		ZoneDAO dao = new ZoneDAO(req.getServletContext());
		try {
			list = dao.searchZoneList(req.getParameter("val"), req.getParameter("where"));
		} catch (Exception e) {	e.printStackTrace();}
		
		req.setAttribute("list", list);
		
		req.getRequestDispatcher("/admin/member/IdFind.jsp").forward(req, resp);
			
	
	}
}
