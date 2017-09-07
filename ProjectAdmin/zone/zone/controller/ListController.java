package zone.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import zone.service.impl.ZoneDAO;

public class ListController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ZoneDAO dao = new ZoneDAO(req.getServletContext());
		
		//DAO로 전체 리스트 받아오기
		List list = null;
		try {list = dao.selectList();
		} catch (Exception e) {e.printStackTrace();}
		req.setAttribute("list", list);
		
		//뷰 선택해서 뿌려주기
		req.getRequestDispatcher("/admin/zone/ZoneList.jsp").forward(req, resp);
	}/////////////////////doGet()
}
