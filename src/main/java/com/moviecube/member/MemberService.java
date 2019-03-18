package com.moviecube.member;

import java.util.Map;

public interface MemberService {
	
	//회원가입
	 void insertMember(Map<String, Object> map)throws Exception; 
	 int findUsedID(Map<String, Object> map) throws Exception;
	 
	//로그인
	 Map<String, Object> checkUserIdAndPassword(Map<String, Object> map)throws Exception;
	 
	 //아이디,비밀번호 찾기
	 String findId(Map<String, Object> map) throws Exception;
	 String findPasswd(Map<String, Object> map) throws Exception;
}
