package admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.service.DeptDto;
import admin.service.impl.AdminDao;

public class DeptListController extends HttpServlet {

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AdminDao dao = new AdminDao(req.getServletContext());
		List<DeptDto> list = null;
		
		try {
			list = dao.selectDeptList();
		} catch (Exception e) {e.printStackTrace();}
		
		req.setAttribute("list", list);
		
		req.getRequestDispatcher("/admin/admin/DeptList.jsp").forward(req, resp);
	
	}
}
