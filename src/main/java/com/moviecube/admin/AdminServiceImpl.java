package com.moviecube.admin;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.moviecube.admin.AdminDAO;

@Service("AdminService")
public class AdminServiceImpl implements AdminService{
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="AdminDAO")
	private AdminDAO adminDAO;

}
