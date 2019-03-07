package com.moviecube.time;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.moviecube.dao.AbstractDAO;

@Repository("TimeDAO")
public class TimeDAO extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectTimeList(Map<String,Object> map) throws Exception{
		return(List<Map<String, Object>>)selectList("time.selectTimeList", map);
	}

}
