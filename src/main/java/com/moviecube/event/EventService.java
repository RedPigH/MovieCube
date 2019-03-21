package com.moviecube.event;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public interface EventService {

	public List<Map<String, Object>> selectEventList(Map<String, Object> Map) throws Exception;

	public void insertEvent(Map<String, Object> map, HttpServletRequest request) throws Exception;

	public Map<String, Object> selectEventDetail(Map<String, Object> map) throws Exception;

	public void modifyEvent(Map<String, Object> map, HttpServletRequest request) throws Exception;

	public Map<String, Object> checkEventFile(Map<String, Object> map) throws Exception;

	public Map<String, Object> selectEventDetail2(Map<String, Object> map) throws Exception;

	public void deleteEvent(Map<String, Object> map, HttpServletRequest request) throws Exception;

}
