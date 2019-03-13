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
	  
	  // 회원가입
	  public void insertMember(Map<String, Object> map) throws Exception {
		  insert("member.insertMember", map);
	  }
	  
	  //id 중복확인
	  public int findUsedID(Map<String, Object> map) throws Exception{
		  return (Integer) selectOne("member.findUsedID", map);
	  }
	  
	  //로그인
	  public Map<String, Object> findUserIdAndPassword(Map<String, Object> map) throws Exception {
		  return (Map<String, Object>)selectOne("member.findUserIdAndPassword", map);
	  }	  
 }
