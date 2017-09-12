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
	int affected;
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
		
		String sql = "SELECT * FROM RESERVE ORDER BY RES_DATE DESC";
		
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
			dto.setReserve_type(rs.getString(8));
			dto.setRes_date(rs.getDate(9));
			dto.setRes_instype(rs.getString(10));
			dto.setRes_inscost(rs.getString(11));
			dto.setRes_cardkey(rs.getString(12));
			dto.setRes_article(rs.getString(13));
			dto.setMs_code(rs.getString(14));
			dto.setCou_c_code(rs.getString(15));
			dto.setSale_price(rs.getString(16));
			
			list.add(dto);
		}
		
		
		return list;
	}//////////////////////////////////////////////////////////////

	@Override
	public void close() throws Exception {
		if(rs!=null)rs.close();
		if(psmt!=null)psmt.close();	
		if(conn!=null)conn.close();
	}///////////////////////////////////////////////////////////////

	@Override
	public int insertReserve(ReserveDto dto) throws Exception {
		affected = 0;
		conn.setAutoCommit(false);
		if(dto.getMs_code()!=null) {
			String sql="INSERT INTO MEMBERSHIP VALUES(MS_CODE_SEQ.NEXTVAL,?,?,sysdate)";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getSmem_id());
			psmt.setString(2, "-"+dto.getSale_price());
			
			affected = psmt.executeUpdate();
			
				if(affected == 1) {
					sql="SELECT LAST_NUMBER-1 FROM USER_SEQUENCES WHERE SEQUENCE_NAME='MS_CODE_SEQ'";
					
					psmt = conn.prepareStatement(sql);
					rs = psmt.executeQuery();
					rs.next();
					System.out.println(rs.getString(1));
					dto.setMs_code(rs.getString(1));
					affected = 0;
				}
		}
		
		String sql="INSERT INTO RESERVE VALUES('RES_'||LPAD(RES_CODE_SEQ.NEXTVAL,10,'0'),?,?,?,?,?,?,?,SYSDATE,?,?,?,?,?,?,?)";
		
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, dto.getSmem_id());
		psmt.setString(2, dto.getCar_i_code());
		psmt.setString(3, dto.getCard_code());
		psmt.setString(4, dto.getRes_price());
		psmt.setDate(5, new java.sql.Date(dto.getRes_date_start().getTime()));
		psmt.setDate(6, new java.sql.Date(dto.getRes_date_end().getTime()));
		psmt.setString(7, dto.getReserve_type());
		psmt.setString(8, dto.getRes_instype());
		psmt.setString(9, dto.getRes_inscost());
		psmt.setString(10, dto.getRes_cardkey());
		psmt.setString(11, dto.getRes_article());
		psmt.setString(12, dto.getMs_code());
		psmt.setString(13, dto.getCou_c_code());
		psmt.setString(14, dto.getSale_price());
		affected = psmt.executeUpdate();
		
		conn.commit();
		return affected;
	}///////////////////////////////////////////////////////////////

	
}
