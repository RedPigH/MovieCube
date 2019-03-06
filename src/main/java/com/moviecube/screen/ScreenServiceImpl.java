package com.moviecube.screen;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("screenService")
public class ScreenServiceImpl implements ScreenService {
	
	@Resource(name = "screenDAO")
	private ScreenDAO screenDAO;

	@Override
	public List<Map<String, Object>> selectScreenList(Map<String, Object> map) throws Exception {

		return screenDAO.selectScreenList(map);
	}
	
	

}
