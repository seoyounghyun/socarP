package zone.service;

import java.util.List;


public interface ZoneService {
	
	public int insert(ZoneDTO dto) throws Exception;
	public List selectList() throws Exception;
	public ZoneDTO selectOne(String soz_code) throws Exception;
	public int edit(ZoneDTO dto) throws Exception;
	public int delete(String soz_code) throws Exception;
	public void close() throws Exception;
	
	//존 검색 메소드
	public List<ZoneDTO> searchZoneList(String val , String where) throws Exception;
}
