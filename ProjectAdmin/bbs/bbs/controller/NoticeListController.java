package bbs.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bbs.service.NoticeDto;
import bbs.service.impl.BbsDao;

public class NoticeListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		BbsDao dao = new BbsDao(req.getServletContext());
		
		List<NoticeDto> list = null;
		try {
			list = dao.selectNoticeList();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		req.setAttribute("list", list);
		req.getRequestDispatcher("/admin/bbs/Notice.jsp").forward(req, resp);
	
	}

	
}
