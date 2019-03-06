package com.moviecube.movie;

import java.util.List;
import java.util.Map;

public interface MovieService {
	
	List<Map<String, Object>> selectMovieList(Map<String, Object> map) throws Exception;
	
	
}
