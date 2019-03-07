package com.moviecube.member;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.moviecube.dao.AbstractDAO;

@Repository("memberDAO")
public class MemberDAO extends AbstractDAO {
	
/*	  protected Log log = LogFactory.getLog(MemberDAO.class);*/
	  
	  @Autowired private SqlSessionTemplate sqlSession;
	  
	  // ȸ������
	  public void insertMember(Map<String, Object> map) throws Exception {
	  insert("member.insertMember", map);
	  } 
}
