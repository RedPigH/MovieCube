package com.moviecube.notice;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.moviecube.dao.AbstractDAO;


@Repository("noticeDAO")
public class NoticeDAO extends AbstractDAO{

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception{
		
		// TODO Auto-generated method stub
		return (List<Map<String,Object>>)selectList("notice.selectBoardList", map);
	};
	
	public void insertBoard(Map<String, Object> map) throws Exception{
		insert("notice.insertBoard", map);
	}

}
