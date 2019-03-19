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
	  
	  @Override
	  public Map<String, Object> checkUserIdAndPassword(Map<String, Object> map) throws Exception{
		  return memberDAO.checkUserIdAndPassword(map);
	  }
	  
	  @Override
	  public String findId(Map<String, Object> map) throws Exception{
		  return memberDAO.findId(map);
	  }
	  
	  @Override
	  public String findPasswd(Map<String, Object> map) throws Exception{
		  return memberDAO.findPasswd(map);
	  }
	  
	/*
	 * @Override public Map<String, Object> checkId(Map<String, Object> map) throws
	 * Exception { return memberDAO.checkId(map); }
	 * 
	 * // 개인정보 수정
	 * 
	 * @Override public void updateMember(Map<String, Object> map) throws Exception
	 * { memberDAO.updateMember(map); }
	 */
}
