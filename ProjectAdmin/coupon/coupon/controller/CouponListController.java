package coupon.controller;

import java.io.IOException;
import java.util.List;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import coupon.service.CouponDto;
import coupon.service.impl.CouponDao;

public class CouponListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		CouponDao dao = new CouponDao(req.getServletContext());
		List<CouponDto> list = new Vector<CouponDto>();
		int createCount = 0 ;
		try {list = dao.couponList();
			}
		catch (Exception e) {e.printStackTrace();}
		
		req.setAttribute("list", list);
		
		req.getRequestDispatcher("/admin/coupon/CouponList.jsp").forward(req, resp);
	
	}
	
	
}
