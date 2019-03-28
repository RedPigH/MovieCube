package com.moviecube.screen;

import java.util.List;
import java.util.Map;

public interface ScreenService {

	List<Map<String, Object>> selectScreenList(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectCinemaScreen(Map<String, Object> map) throws Exception;

	Map<String, Object> screenDetail(Map<String, Object> map) throws Exception;

	void insertScreen(Map<String, Object> map) throws Exception;

	void updateScreen(Map<String, Object> map) throws Exception;

	void deleteScreen(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> screenSearch0(String map) throws Exception;
	
	List<Map<String, Object>> screenSearch1(String map) throws Exception;
	
	List<Map<String, Object>> screenSearch2(String map) throws Exception;
}
