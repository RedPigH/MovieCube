package com.moviecube.reserve;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.moviecube.cinema.CinemaDAO;


@Service("reserveService")
public class ReserveServiceImpl implements ReserveService{
	@Resource(name = "cinemaDAO")
	private CinemaDAO cinemaDAO;

	@Override
	public List<Map<String, Object>> selectCinemaList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return cinemaDAO.selectCinemaList(map);
	}
}
