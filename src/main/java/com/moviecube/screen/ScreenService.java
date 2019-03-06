package com.moviecube.screen;

import java.util.List;
import java.util.Map;

public interface ScreenService {
	
	List<Map<String, Object>> selectScreenList(Map<String, Object> map) throws Exception;

}
