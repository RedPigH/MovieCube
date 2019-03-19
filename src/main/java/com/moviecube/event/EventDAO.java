package com.moviecube.event;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.moviecube.common.AbstractDAO;

@Repository("eventDAO")
public class EventDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectEventList(Map<String, Object> map) throws Exception {
		return (List<Map<String,Object>>)selectList("event.selectEventList",map );
		
	}
	
	public void insertEvent(Map<String, Object> map) throws Exception{
		insert("event.insertMovie", map);
	}

		
	}


