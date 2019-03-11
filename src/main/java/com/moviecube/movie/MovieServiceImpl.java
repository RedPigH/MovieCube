package com.moviecube.movie;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.moviecube.movie.MovieDAO;

@Service("movieService")
public class MovieServiceImpl implements MovieService{
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="movieDAO")
	private MovieDAO MovieDAO;

	@Override
	public List<Map<String, Object>> selectMovieList(Map<String, Object> map) throws Exception {
		return MovieDAO.selectMovieList(map);
	}

	@Override
	public void insertMovie(Map<String, Object> map) throws Exception {
		MovieDAO.insertMovie(map);
		
	}

	@Override
	public Map<String, Object> selectMovieDetail(Map<String, Object> map) throws Exception {
<<<<<<< HEAD
		Map<String, Object> resultMap = MovieDAO.selectMoiveDetail(map);
=======
		Map<String, Object> resultMap = MovieDAO.selectMovieDetail(map);
>>>>>>> e7db5cf19f4f82a67c374708f72f078636c482bd
		return resultMap;
	}

	@Override
	public void modifyMovie(Map<String, Object> map) throws Exception {
		MovieDAO.modifyMovie(map);
		
	}

	@Override
<<<<<<< HEAD
	public void deleteMoive(Map<String, Object> map) throws Exception {
=======
	public void deleteMovie(Map<String, Object> map) throws Exception {
>>>>>>> e7db5cf19f4f82a67c374708f72f078636c482bd
		MovieDAO.deleteMovie(map);
		
	}
}
