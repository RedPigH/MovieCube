package com.moviecube.cinema;

import java.util.List;
import java.util.Map;

public interface CinemaService {
	
	List<Map<String,Object>> selectCinemaList(Map<String,Object> map) throws Exception;
	
	void insertCinema(Map<String, Object> map) throws Exception;
	
	void updateCinema(Map<String, Object> map) throws Exception;
	
	void deleteCinema(Map<String, Object> map) throws Exception;
	

}
