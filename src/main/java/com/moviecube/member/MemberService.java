package com.moviecube.member;

import java.util.Map;

public interface MemberService {
	
	//ȸ������
	 void insertMember(Map<String, Object> map)throws Exception; 
	 
	 int findUsedID(Map<String, Object> map) throws Exception;
	 
	//�α���
	 Map<String, Object> checkUserIdAndPassword(Map<String, Object> map)throws Exception;
	 
	 //���̵�,��й�ȣ ã��
	 String findId(Map<String, Object> map) throws Exception;
	 
	 String findPasswd(Map<String, Object> map) throws Exception;
	 
	 void updateMile(Map<String, Object> map) throws Exception;
}
