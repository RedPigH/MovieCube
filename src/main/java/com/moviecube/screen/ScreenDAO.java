package com.moviecube.screen;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.moviecube.dao.AbstractDAO;

@Repository("screenDAO")
public class ScreenDAO extends AbstractDAO {
	
	public List<Map<String,Object>> selectScreenList(Map<String,Object> map) throws Exception{
		return (List<Map<String,Object>>) selectList("screen.selectScreenList", map);
	}

}
