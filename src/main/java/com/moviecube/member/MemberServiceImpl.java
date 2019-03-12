<<<<<<< HEAD
package com.moviecube.member;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	  @Resource(name = "memberDAO")
	  private MemberDAO memberDAO;
	  
	  @Override
	  public void insertMember(Map<String, Object> map) throws Exception{
	  
	  memberDAO.insertMember(map);
	  }
	  
	  @Override
	  public int findUsedID(Map<String, Object> map) throws Exception{
		  return memberDAO.findUsedID(map);
	  }
}
=======
/*
 * package com.moviecube.member;
 * 
 * import java.util.Map;
 * 
 * import javax.annotation.Resource;
 * 
 * import org.springframework.stereotype.Service;
 * 
 * @Service("memberService") public class MemberServiceImpl implements
 * MemberService {
 * 
 * @Resource(name = "memberDAO") private MemberDAO memberDAO;
 * 
 * @Override public void insertMember(Map<String, Object> map) throws Exception
 * {
 * 
 * memberDAO.insertMember(map); } }
 */
>>>>>>> 8a90b3fee56d21d1bdb6df53403fa0f1ae40b70d
