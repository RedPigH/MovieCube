package com.moviecube.screen;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.moviecube.dao.AbstractDAO;

@Repository("screenDAO")
public class ScreenDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectScreenList(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("screen.selectScreenList", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectCinemaScreen(Map<String, Object> map) throws Exception{
		return (List<Map<String, Object>>) selectList("screen.selectCinemaScreen", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> screenDetail(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("screen.selectOneScreen", map);
	}

	public void insertScreen(Map<String, Object> map) throws Exception {
		insert("screen.insertScreen", map);
	}

	public void updateScreen(Map<String, Object> map) throws Exception {
		update("screen.updateScreen", map);
	}

	public void deleteScreen(Map<String, Object> map) throws Exception {
		delete("screen.deleteScreen", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> screenSearch0(String isSearch) {
		return (List<Map<String, Object>>)selectList("screen.screenSearch0", "%"+isSearch+"%");
	}

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> screenSearch1(String isSearch) {
		return (List<Map<String, Object>>)selectList("screen.screenSearch1", "%"+isSearch+"%");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> screenSearch2(String isSearch) {
		return (List<Map<String, Object>>)selectList("screen.screenSearch2", "%"+isSearch+"%");
	}

}
