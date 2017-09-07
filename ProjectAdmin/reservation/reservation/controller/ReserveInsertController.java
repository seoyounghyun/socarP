package reservation.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import car.service.Car_IssueDTO;
import car.service.impl.CarDAO;
import member.service.MemDto;
import member.service.impl.MemberDao;
import zone.service.ZoneDTO;
import zone.service.impl.ZoneDAO;

public class ReserveInsertController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MemberDao memdao = new MemberDao(req.getServletContext());
		ZoneDAO zonedao = new ZoneDAO(req.getServletContext());
		
		List<MemDto> memlist = null;		
		List<ZoneDTO> zonelist = null;
		
		try {
			memlist = memdao.selectMemList();
			zonelist = zonedao.selectList(); 
		} catch (Exception e) {e.printStackTrace();
		}
		
		req.setAttribute("memlist", memlist);
		req.setAttribute("zonelist", zonelist);
		
		req.getRequestDispatcher("/admin/reservation/ReserveInsert.jsp").forward(req, resp);
	
	}
}
