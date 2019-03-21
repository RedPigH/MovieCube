package com.moviecube.movie;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface MovieService {

	List<Map<String, Object>> selectMovieList(Map<String, Object> map) throws Exception;
	
	void insertMovie(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	Map<String,Object> selectMovieDetail(Map<String,Object> map) throws Exception;
	
	public void modifyMovie(Map<String, Object> map,  HttpServletRequest request) throws Exception;
	
	public void deleteMovie(Map<String, Object> map, HttpServletRequest request) throws Exception;

	void insertMovie2(Map<String, Object> map, HttpServletRequest request) throws Exception;

	public void modifyMovie2(Map<String, Object> map,  HttpServletRequest request) throws Exception;
		
}