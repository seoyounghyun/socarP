package zone.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bbs.service.PagingUtil;
import zone.service.ZoneDTO;
import zone.service.impl.ZoneDAO;

public class ListController extends HttpServlet{
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ZoneDAO dao = new ZoneDAO(req.getServletContext());
		
		//페이징을 위한 로직 시작
		//전체 레코드 수
				int totalRecordCount=dao.getTotalRecordCount();
				//페이지 사이즈
				int pageSize  =Integer.parseInt(req.getServletContext().getInitParameter("PAGE_SIZE"));
				//블락페이지
				int blockPage =Integer.parseInt(req.getServletContext().getInitParameter("BLOCK_PAGE"));
				//전체 페이지수]
				int totalPage = (int)Math.ceil((double)totalRecordCount/pageSize);		
				//현재 페이지를 파라미터로 받기]
				int nowPage=req.getParameter("nowPage")==null ? 1 :	Integer.parseInt(req.getParameter("nowPage"));		
				//시작 및 끝 ROWNUM구하기]
				int start= (nowPage-1)*pageSize+1;
				int end = nowPage*pageSize;	
		
		List<ZoneDTO> list = dao.selectList(start,end);
		
		//페이지용 문자열 생성]
				String pagingString=PagingUtil.pagingText(totalRecordCount, pageSize, blockPage, nowPage,req.getServletContext().getContextPath()+"/ZONE/List.do?");
				
				
				//라]결과값이 있으면 리퀘스트 영역에 저장
				req.setAttribute("list", list);
				req.setAttribute("pagingString", pagingString);
				req.setAttribute("nowPage", nowPage);
				req.setAttribute("totalPage", totalPage);
				req.setAttribute("totalRecordCount", totalRecordCount);
				req.setAttribute("pageSize", pageSize);
				//마]결과값을 뿌려주거나 이동할 뷰(JSP페이지) 선택후 포워딩
		
				req.getRequestDispatcher("/admin/zone/ZoneList.jsp").forward(req, resp);
	
	}
	
	
	
	/*@Override
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
*/
	}
