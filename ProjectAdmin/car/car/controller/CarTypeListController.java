package car.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import car.service.Car_ModelDto;
import car.service.impl.CarDAO;

public class CarTypeListController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		CarDAO dao = new CarDAO(req.getServletContext());
		
		try {
			List<Car_ModelDto> list = dao.selectCar_TypeList();
			req.setAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		req.getRequestDispatcher("/admin/car/CarTypeList.jsp").forward(req, resp);
		
	}
}
