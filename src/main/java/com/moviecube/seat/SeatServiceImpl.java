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
}
