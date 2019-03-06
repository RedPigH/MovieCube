package com.moviecube.reserve;

import java.util.List;
import java.util.Map;

public interface ReserveService {
	
	/* About cinema  */
	List<Map<String,Object>> selectCinemaList(Map<String,Object> map) throws Exception;
	
	/* About something */
	// List <..
}
