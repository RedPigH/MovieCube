package com.moviecube.seat;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface SeatService {
	
	List<Map<String, Object>> selectScreenSeat(Map<String,Object> map) throws Exception;

}
