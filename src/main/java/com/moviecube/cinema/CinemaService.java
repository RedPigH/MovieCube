package com.moviecube.cinema;

import java.util.List;
import java.util.Map;

public interface CinemaService {

	List<Map<String, Object>> selectCinemaList(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectCinemaScreen(Map<String, Object> map) throws Exception;

	Map<String, Object> cinemaDetail(Map<String, Object> map) throws Exception;

	void insertCinema(Map<String, Object> map) throws Exception;

	void updateCinema(Map<String, Object> map) throws Exception;

	void deleteCinema(Map<String, Object> map) throws Exception;

	Map<String, Object> selectOneCinema(Map<String, Object> map) throws Exception;

	List<Map<String, Object>> cinemaSearch0(String map) throws Exception;
	
	List<Map<String, Object>> cinemaSearch1(String map) throws Exception;
	
	List<Map<String, Object>> cinemaSearch2(String map) throws Exception;
}
