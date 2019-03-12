<<<<<<< HEAD
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
	  
	  // È¸¿ø°¡ÀÔ
	  public void insertMember(Map<String, Object> map) throws Exception {
		  insert("member.insertMember", map);
	  }
	  
	  //id Áßº¹È®ÀÎ
	  public int findUsedID(Map<String, Object> map) throws Exception{
		  return (Integer) selectOne("member.findUsedID", map);
	  }
}
=======
/*
 * package com.moviecube.member;
 * 
 * import java.util.Map;
 * 
 * import org.mybatis.spring.SqlSessionTemplate; import
 * org.springframework.beans.factory.annotation.Autowired;
 * 
 * import com.moviecube.dao.AbstractDAO;
 * 
 * public class MemberDAO extends AbstractDAO { protected Log log =
 * LogFactory.getLog(MemberDAO.class);
 * 
 * @Autowired private SqlSessionTemplate sqlSession;
 * 
 * // È¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ public void insertMember(Map<String, Object> map) throws Exception
 * { insert("member.insertMember", map); } }
 */
>>>>>>> 8a90b3fee56d21d1bdb6df53403fa0f1ae40b70d
