package reservation.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.Vector;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContext;
import javax.sql.DataSource;

import reservation.service.ReserveDto;
import reservation.service.ReserveService;

public class ReserveDao implements ReserveService{

	Connection conn;
	ResultSet rs;
	PreparedStatement psmt;
	
	public ReserveDao(ServletContext context) {
		
		try {
			InitialContext ctx = new InitialContext();
			
			DataSource source = (DataSource)ctx.lookup(context.getInitParameter("TOMCAT_JNDI_ROOT")+"/jdbc/socar");
			
			conn = source.getConnection();
		
		}
		catch (Exception e) {e.printStackTrace();}
		
		
	
	}
	
	@Override
	public List<ReserveDto> selectReserveList() throws Exception {
		
		List<ReserveDto> list = new Vector<>();
		
		String sql = "SELECT * FROM RESERVE WHERE RES_DATE_START < SYSDATE ORDER BY RES_DATE_START DESC";
		
		psmt = conn.prepareStatement(sql);
		
		rs = psmt.executeQuery();
		
		while(rs.next()) {
			ReserveDto dto = new ReserveDto();
			
			dto.setRes_code(rs.getString(1));
			dto.setSmem_id(rs.getString(2));
			dto.setCar_i_code(rs.getString(3));
			dto.setCard_code(rs.getString(4));
			dto.setRes_price(rs.getString(5));
			dto.setRes_date_start(rs.getDate(6));
			dto.setRes_date_end(rs.getDate(7));
			dto.setRes_type(rs.getString(8));
			dto.setRes_date(rs.getDate(9));
			dto.setRes_instype(rs.getString(10));
			dto.setRes_sale_type(rs.getString(11));
			dto.setRes_cardkey(rs.getString(12));
			dto.setRes_article(rs.getString(13));
			list.add(dto);
		}
		
		return list;
	}

	@Override
	public void close() throws Exception {
		if(rs!=null)rs.close();
		if(psmt!=null)psmt.close();	
		if(conn!=null)conn.close();
	}

	
}
