package com.moviecube.member;

import java.util.Map;

public interface MemberService {
	
	//ȸ������
	 void insertMember(Map<String, Object> map)throws Exception; 
	 int findUsedID(Map<String, Object> map) throws Exception;
}
