package reservation.controller;

import java.io.IOException;
import java.util.List;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import car.service.Car_IssueDTO;
import car.service.impl.CarDAO;
import member.service.MemDto;
import member.service.impl.MemberDao;
import reservation.service.ReserveDto;
import reservation.service.impl.ReserveDao;

public class ReserveListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ReserveDao dao = new ReserveDao(req.getServletContext());
		List<ReserveDto> list = null;
		try {
			list = dao.selectReserveList();
		} catch (Exception e) {e.printStackTrace();}
		
		req.setAttribute("list", list);
		
		req.getRequestDispatcher("/admin/reservation/Reserve.jsp").forward(req, resp);
	}
	
}
