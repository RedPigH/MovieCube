package com.moviecube.cinema;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.moviecube.dao.AbstractDAO;

@Repository("cinemaDAO")
public class CinemaDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectCinemaList(Map<String,Object> map) throws Exception{
		return (List<Map<String,Object>>) selectList("cinema.selectCinemaList", map);
	}

}
