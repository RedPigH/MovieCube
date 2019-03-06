package com.moviecube.cinema;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("cinemaService")
public class CinemaServiceImpl implements CinemaService{
	
	@Resource(name = "cinemaDAO")
	private CinemaDAO cinemaDAO;

	@Override
	public List<Map<String, Object>> selectCinemaList(Map<String, Object> map) throws Exception {

		return cinemaDAO.selectCinemaList(map);
	}
	
	

}
