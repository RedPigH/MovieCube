package com.moviecube.member;

import java.util.Map;

public interface MemberService {
	
	//회원가입
	 void insertMember(Map<String, Object> map)throws Exception; 
	 int findUsedID(Map<String, Object> map) throws Exception;
	 
	//로그인
	 Map<String, Object> findUserIdAndPassword(Map<String, Object> map)throws Exception;
	 int login(Map<String, Object> map) throws Exception;
	 
	//CheckID . 아이디값으로 멤버정보 가져오기
	 Map<String, Object> checkId(Map<String, Object> map) throws Exception;
	 
	 // 멤버정보 수정
	void updateMember(Map<String, Object> map) throws Exception;
}