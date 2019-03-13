package com.moviecube.member;

import java.util.Map;

public interface MemberService {
	
	//회원가입
	 void insertMember(Map<String, Object> map)throws Exception; 
	 int findUsedID(Map<String, Object> map) throws Exception;
	 
	//로그인
	 Map<String, Object> findUserIdAndPassword(Map<String, Object> map)throws Exception;
	 int login(Map<String, Object> map) throws Exception;
}
