package com.moviecube.admin;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.moviecube.admin.AdminDAO;
import com.moviecube.member.MemberDAO;

@Service("adminService")
public class AdminServiceImpl implements AdminService{
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="AdminDAO")
	private AdminDAO adminDAO;
	
	@Resource(name = "memberDAO")
	  private MemberDAO memberDAO;
	
	@Override
	public List<Map<String, Object>> selectMemberList(Map<String, Object> map) throws Exception {
		return adminDAO.selectMemberList(map);
	}

	@Override
	public List<Map<String, Object>> memberSearch0(String map) throws Exception {
		return adminDAO.memberSearch1(map);
	}

	@Override
	public List<Map<String, Object>> memberSearch1(String map) throws Exception {
		return adminDAO.memberSearch2(map);
	}

	@Override
	public List<Map<String, Object>> memberSearch2(String map) throws Exception {
		return adminDAO.memberSearch3(map);
	}

	@Override
	public void memberDelete(Map<String, Object> map) throws Exception {
		adminDAO.memberDelete(map);
		
	}

}
