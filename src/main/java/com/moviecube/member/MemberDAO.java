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
	  
	  //id �ߺ�Ȯ��
	  public int findUsedID(Map<String, Object> map) throws Exception{
		  return (Integer) selectOne("member.findUsedID", map);
	  }
	  
	  //�α���
	  public Map<String, Object> checkUserIdAndPassword(Map<String, Object> map) throws Exception {
		  return (Map<String, Object>)selectOne("member.findUserIdAndPassword", map);
	  }
	  
	  //id,pw ã��
	  public String findId(Map<String, Object> map) throws Exception{
		  return (String) selectOne("member.findId", map);
	  }
	  
	  public String findPasswd(Map<String, Object> map) throws Exception{
		  return (String) selectOne("member.findPasswd", map);
	  }
	  
	  public void updateMile(Map<String, Object> map) throws Exception{
		  update("member.updateMile", map);
	  }
 }
