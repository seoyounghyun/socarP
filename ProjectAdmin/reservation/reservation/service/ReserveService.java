package reservation.service;

import java.util.List;

public interface ReserveService {

	
	//예약 리스트 출력
	public List<ReserveDto> selectReserveList() throws Exception;
	
	//예약 입력
	public int insertReserve(ReserveDto dto) throws Exception;
	
	//클로즈
	public void close() throws Exception;
}
