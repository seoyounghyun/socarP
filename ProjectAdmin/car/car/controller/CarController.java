package car.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import car.service.impl.CarDAO;

public class CarController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CarDAO dao = new CarDAO(req.getServletContext());
		
		//DAO로 리스트 받아오기]
		List list = null;
		try {list = dao.selectList();
		} catch (Exception e) {e.printStackTrace();}
		req.setAttribute("list", list);
		req.getRequestDispatcher("/admin/car/CarList.jsp").forward(req, resp);
	}
}
