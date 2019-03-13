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
	  public Map<String, Object> findUserIdAndPassword(Map<String, Object> map) throws Exception{
		  return memberDAO.findUserIdAndPassword(map);
	  }
	  
	  @Override
	  public int login(Map<String, Object> map) throws Exception{
		  return memberDAO.login(map);
	  }
}
