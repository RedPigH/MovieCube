package com.moviecube.seat;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

@Service("seatService")
public class SeatServiceImpl implements SeatService {
	
	@Resource(name = "seatDAO")
	private SeatDAO seatDAO;

	@Override
	public List<Map<String, Object>> selectScreenSeat(Map<String, Object> map) throws Exception {
		return seatDAO.selectScreenSeat(map);
	}

	@Override
	public Map<String, Object> ScreenSeatNum(Map<String, Object> map) throws Exception {
		return seatDAO.ScreenSeatNum(map);
	}
	
	@Override
	public List<Map<String, Object>> selectTimeSeat(Map<String, Object> map) throws Exception{
		return seatDAO.selectTimeSeat(map);
	}
	
	@Override
	public Map<String, Object> selectSeat(Map<String,Object> map) throws Exception{
		return seatDAO.selectSeat(map);
	}

	@Override
	public void insertSeat(Map<String, Object> map) throws Exception {
		seatDAO.insertSeat(map);
	}

	@Override
	public void insertTimeSeat(Map<String, Object> map) throws Exception {
		seatDAO.insertTimeSeat(map);
	}

	@Override
	public void updateSeatStatus(Map<String, Object> map) throws Exception {
		seatDAO.updateSeatStatus(map);
	}

	@Override
	public void deleteSeat(Map<String, Object> map) throws Exception {
		seatDAO.deleteSeat(map);
	}
}
