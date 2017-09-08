package member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.smartcardio.Card;

import member.service.CardDto;
import member.service.MemDto;
import member.service.impl.MemberDao;

public class FindMemberController extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		MemberDao dao = new MemberDao(req.getServletContext());
		List<MemDto> list = null;
		
		try {
			list = dao.selectMemList();
		} catch (Exception e) {e.printStackTrace();}
		
		req.setAttribute("list", list);
		req.getRequestDispatcher("/admin/member/IdFind.jsp").forward(req, resp);	
	}///////////////////
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		MemberDao dao = new MemberDao(req.getServletContext());
		List<CardDto> list = null;
		String op = "";
		
		try {list = dao.selectCardList(req.getParameter("smem_id"));
		} catch (Exception e) {e.printStackTrace();
		e.getMessage();
		}
		op += "opener.document.getElementById(\"smem_id\").value ='"+req.getParameter("smem_id")+"';" 
			+ "opener.document.getElementById(\"smem\").value ='"+req.getParameter("smem_name")+"';"
			+ "opener.document.getElementById('card_code').innerHTML='";
		
		
		for(CardDto dto : list) {
			op += "<option value="+dto.getCard_code()+">"+dto.getCard_code()+"</option>";
		}
		
		
		op += "';";
		
		req.setAttribute("MSG", op);
		req.setAttribute("WHERE", "FIND_MEM");
		req.setAttribute("SUC_FAIL", 1);
		
		req.getRequestDispatcher("/admin/util/PopMessage.jsp").forward(req,resp);
	
	}///////////////////
	
}
