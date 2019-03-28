package com.moviecube.movie;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface MovieService {

	List<Map<String, Object>> selectMovieList(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> HotMovieList(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> LatelyMovieList(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> ExpectedMovieList(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> dupMovieList(Map<String, Object> map) throws Exception;
	
	void insertMovie(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	void insertComment(Map<String, Object> map) throws Exception;
	
	Map<String,Object> selectMovieDetail(Map<String,Object> map) throws Exception;
	
	public void modifyMovie(Map<String, Object> map,  HttpServletRequest request) throws Exception;
	
	public void deleteMovie(Map<String, Object> map, HttpServletRequest request) throws Exception;
	
	public void deleteComment(Map<String, Object> map) throws Exception;

	void insertMovie2(Map<String, Object> map, HttpServletRequest request) throws Exception;

	public void modifyMovie2(Map<String, Object> map,  HttpServletRequest request) throws Exception;
	
	public List<Map<String, Object>> selectStillCutList(Map<String, Object> map) throws Exception;
	
	public List<Map<String, Object>> selectCommentList(Map<String, Object> map) throws Exception;
	
	public List<Map<String, Object>> selectCommentPaingList(Map<String, Object> map) throws Exception;
	
	public Map<String, Object> selectCommentCount(Map<String, Object> map) throws Exception;

	List<Map<String, Object>> selectHotWishList(Map<String, Object> map) throws Exception;
		
}