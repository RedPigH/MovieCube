package com.moviecube.movie;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.moviecube.common.AbstractDAO;

@Repository("movieDAO")
public class MovieDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public List<Map<String,Object>> selectMovieList(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>)selectList("movie.selectMovieList", map);
	}

	public void insertMovie(Map<String, Object> map) throws Exception{
		insert("movie.insertMovie", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectMoiveDetail(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("moive.selectMovieDetail", map);
	}
	
	public void modifyMovie(Map<String, Object> map) throws Exception{
		update("moive.updateMoive", map);
	}

	public void deleteMovie(Map<String, Object> map) throws Exception{
		update("moive.deleteMoive", map);
	}
}