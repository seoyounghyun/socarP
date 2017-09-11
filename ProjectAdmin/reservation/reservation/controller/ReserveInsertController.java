package reservation.controller;

import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
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
		req.getRequestDispatcher("/admin/reservation/ReserveInsert.jsp").forward(req, resp);
	}/////////////////get
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
			String smem_id = req.getParameter("smem_id");
			String soz_code = req.getParameter("soz_code");
			String car_i_code = req.getParameter("car_i_code");
			String card_code = req.getParameter("card_code");
			Calendar res_date_start = Calendar.getInstance();
			res_date_start.set(Integer.parseInt(req.getParameter("rs_year")),
								Integer.parseInt(req.getParameter("rs_month")),
								Integer.parseInt(req.getParameter("rs_date")),
							    Integer.parseInt(req.getParameter("rs_time").split(":")[0]),
							    Integer.parseInt(req.getParameter("rs_time").split(":")[1]),
							    0);
			
			Calendar res_date_end = Calendar.getInstance();
			res_date_end.set(Integer.parseInt(req.getParameter("re_year")),
								Integer.parseInt(req.getParameter("re_month")),
								Integer.parseInt(req.getParameter("re_date")),
							    Integer.parseInt(req.getParameter("re_time").split(":")[0]),
							    Integer.parseInt(req.getParameter("re_time").split(":")[1]),
							    0);
			String res_instype = req.getParameter("res_instype");
			
			String res_price = req.getParameter("res_price");
			String res_cardkey = req.getParameter("res_cardkey");
			String pay_article = req.getParameter("pay_article");
			String ms_code = req.getParameter("ms_code");
			String cou_c_code = req.getParameter("cou_c_code");
			
			
	}/////////////////////////post
	
	
}////////////컨트롤러
