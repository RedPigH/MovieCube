package com.moviecube.cinema;

import java.util.List;
import java.util.Map;

public interface CinemaService {
	
	List<Map<String,Object>> selectCinemaList(Map<String,Object> map) throws Exception;

}
