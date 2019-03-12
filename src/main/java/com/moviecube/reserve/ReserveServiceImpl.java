package com.moviecube.reserve;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.moviecube.cinema.CinemaDAO;
import com.moviecube.movie.MovieDAO;


@Service("reserveService")
public class ReserveServiceImpl implements ReserveService{
	@Resource(name = "cinemaDAO")
	private CinemaDAO cinemaDAO;
	
	@Resource(name = "movieDAO")
	private MovieDAO movieDAO;
	

	@Override
	public List<Map<String, Object>> selectCinemaList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return cinemaDAO.selectCinemaList(map);
	}
	
	@Override
	public List<Map<String, Object>> selectMovieList(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return movieDAO.selectMovieList(map);
	}

	@Override
<<<<<<< HEAD
	public Map<String, Object> selectOneMovie(Map<String, Object> map) throws Exception {
		Map<String, Object> resultMap = movieDAO.selectMovieDetail(map);
		return resultMap;
	}
	
	public List<Map<String, Object>> testTimeList(Map<String, Object> map) throws Exception{
		
		return timeDAO.optionTimeList(map);
=======
	public Map<String, Object> selectOneCinema(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return null;
>>>>>>> 8a90b3fee56d21d1bdb6df53403fa0f1ae40b70d
	}

	@Override
	public Map<String, Object> selectOneMovie(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
}
