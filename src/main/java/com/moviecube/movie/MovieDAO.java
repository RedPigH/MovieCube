package com.moviecube.movie;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.moviecube.dao.AbstractDAO;

@Repository("movieDAO")
public class MovieDAO extends AbstractDAO {
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectMovieList(Map<String,Object> map) throws Exception{
		return (List<Map<String,Object>>) selectList("movie.selectMovieList", map);
	}

}
