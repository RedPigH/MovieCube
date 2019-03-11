package com.moviecube.reserve;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.moviecube.cinema.CinemaDAO;
import com.moviecube.movie.MovieDAO;
import com.moviecube.time.TimeDAO;

@Service("reserveService")
public class ReserveServiceImpl implements ReserveService {
	@Resource(name = "cinemaDAO")
	private CinemaDAO cinemaDAO;

	@Resource(name = "movieDAO")
	private MovieDAO movieDAO;
	
	@Resource(name = "timeDAO")
	private TimeDAO timeDAO;

	@Override
	public List<Map<String, Object>> selectCinemaList(Map<String, Object> map) throws Exception {

		return cinemaDAO.selectCinemaList(map);
	}

	@Override
	public Map<String, Object> selectOneCinema(Map<String, Object> map) throws Exception {

		Map<String, Object> resultMap = cinemaDAO.cinemaDetail(map);
		
		return resultMap;
	}
	
	@Override
	public List<Map<String, Object>> selectMovieList(Map<String, Object> map) throws Exception {

		return movieDAO.selectMovieList(map);
	}

	@Override
	public Map<String, Object> selectOneMovie(Map<String, Object> map) throws Exception {
		Map<String, Object> resultMap = movieDAO.selectMovieDetail(map);
		return resultMap;
	}
	
	public List<Map<String, Object>> testTimeList(Map<String, Object> map) throws Exception{
		
		return timeDAO.testList(map);
	}


}
