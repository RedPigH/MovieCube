package com.moviecube.member;

import java.util.Map;

public interface MemberService {
	
	//ȸ������
	 void insertMember(Map<String, Object> map)throws Exception; 
	 int findUsedID(Map<String, Object> map) throws Exception;
	 
	//�α���
	 Map<String, Object> findUserIdAndPassword(Map<String, Object> map)throws Exception;
	 int login(Map<String, Object> map) throws Exception;
}
