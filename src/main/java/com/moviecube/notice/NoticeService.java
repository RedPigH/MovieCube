package com.moviecube.notice;

import java.util.List;
import java.util.Map;

public interface NoticeService {

	 List<Map<String,Object>> selectBoardList(Map<String,Object> map) throws Exception;

	void insertBoard(Map<String, Object> map) throws Exception;
}
