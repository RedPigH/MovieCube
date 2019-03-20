package com.moviecube.admin;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface AdminService {

	List<Map<String, Object>> selectMemberList(Map<String, Object> map) throws Exception;

	List<Map<String, Object>> memberSearch0(String map) throws Exception;
	
	List<Map<String, Object>> memberSearch1(String map) throws Exception;
	
	List<Map<String, Object>> memberSearch2(String map) throws Exception;

	void memberDelete(Map<String, Object> map) throws Exception;

/*	
	List<Map<String, Object>> memberSearch0(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> memberSearch1(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> memberSearch2(Map<String, Object> map) throws Exception;
*/	
}

