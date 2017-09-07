package bbs.service.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.Vector;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContext;
import javax.sql.DataSource;

import bbs.service.Not_imgDto;
import bbs.service.NoticeDto;
import bbs.service.NoticeService;

public class BbsDao implements NoticeService {

	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	
	public BbsDao(ServletContext context){
		
		try {
		InitialContext ctx = new InitialContext();
		DataSource source = (DataSource) ctx.lookup(context.getInitParameter("TOMCAT_JNDI_ROOT")+"/jdbc/socar");
		conn = source.getConnection();
		} catch (Exception e) {e.printStackTrace();}	
	}
	
	
	
	
	@Override
	public List<NoticeDto> selectNoticeList() throws Exception {
		
		String sql="SELECT * FROM NOTICE ORDER BY NOT_NO DESC" ;
		List<NoticeDto> list = new Vector<NoticeDto>();
		
		psmt = conn.prepareStatement(sql);
		
		rs = psmt.executeQuery();
	
		while(rs.next()){
			NoticeDto dto = new NoticeDto();
			dto.setNot_no(rs.getString(1));
			dto.setAd_id(rs.getString(2));
			dto.setNot_title(rs.getString(3));
			dto.setNot_content(rs.getString(4));
			dto.setNot_postdate(rs.getDate(5));
			
			list.add(dto);
		}
		close();
		return list;
	}




	@Override
	public void close() throws Exception {
		if(rs != null){
			rs.close();
		}
		if(psmt !=null){
			psmt.close();
		}
		if(conn != null){
			conn.close();
		}
		
	}




	@Override
	public int insertNotice(NoticeDto dto, String[] srcs) throws Exception {
		conn.setAutoCommit(false);
		String sql = "INSERT INTO NOTICE VALUES(NOT_NO_SEQ.NEXTVAL,?,?,?,SYSDATE)";
		int affected = 0 ;
		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, dto.getAd_id() );
		psmt.setString(2, dto.getNot_title());
		psmt.setString(3, dto.getNot_content() );
		
		affected = psmt.executeUpdate();
		
		if(affected == 1 && srcs != null) {
				sql = "INSERT INTO NOTICE_IMG VALUES(NOT_IMG_CODE_SEQ.NEXTVAL,NOT_NO_SEQ.CURRVAL,?)";
				psmt = conn.prepareStatement(sql);
			for(String src :srcs) {
				psmt.setString(1, src);
				
				affected = psmt.executeUpdate();
				
				if(affected == 0) {
					return 0;
				}
			}
		}
		conn.commit();
		close();
		return affected;
	}



	@Override
	public NoticeDto selectNoticeOne(String not_no) throws Exception {

		String sql="SELECT * FROM NOTICE WHERE NOT_NO=?";
		NoticeDto dto = new NoticeDto();
		
		psmt = conn.prepareStatement(sql);
		
		psmt.setString(1, not_no);
		
		rs = psmt.executeQuery();
		rs.next();
		
		dto.setNot_no(rs.getString(1));
		dto.setAd_id(rs.getString(2));
		dto.setNot_title(rs.getString(3));
		dto.setNot_content(rs.getString(4).replace("\r\n", "<br/>"));
		dto.setNot_postdate(rs.getDate(5));
		close();
		return dto;
	}

	
}
