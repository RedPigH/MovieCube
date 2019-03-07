package com.moviecube.seat;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Repository;

import com.moviecube.dao.AbstractDAO;

@Repository("seatDAO")
public class SeatDAO extends AbstractDAO {
	
	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectScreenSeat(Map<String,Object> map) throws Exception{
		return (List<Map<String,Object>>) selectList("selectScreenSeat", map);
	}
	
}
