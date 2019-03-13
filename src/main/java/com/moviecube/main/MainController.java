package com.moviecube.main;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.moviecube.common.CommandMap;

@Controller
@EnableWebMvc
public class MainController {
	@RequestMapping(value = "/main.do")
	public ModelAndView openBoardList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/main");

		return mv;
	}
	
	@RequestMapping(value = "/jquery.do")
	public ModelAndView jquery(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/ajax");

		return mv;
	}

}
