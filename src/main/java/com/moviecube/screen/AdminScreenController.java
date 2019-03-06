package com.moviecube.screen;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;

@Controller
public class AdminScreenController {
	
	@Resource(name="screenService")
	private ScreenService screenService;
	
	@RequestMapping(value = "/screenList.do")
	public ModelAndView screenList(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/screenList");
		
		List<Map<String, Object>> list = screenService.selectScreenList(commandMap.getMap());
		mv.addObject("list",list);		
		
		return mv;
	}

}
