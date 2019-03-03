package com.moviecube.main;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;



@Controller
public class MainController {
	@RequestMapping(value = "/main.do")
	public ModelAndView openBoardList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/main");

		//List<Map<String, Object>> list = sampleService.selectBoardList(commandMap.getMap());
		//mv.addObject("list", list);

		return mv;
	}

}
