package com.moviecube.main;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Controller
@EnableWebMvc
public class MainController {
	
	ModelAndView mav = new ModelAndView();
	
	@RequestMapping("/main.do")
	public ModelAndView mainForm(HttpServletRequest request) throws Exception{		
		
		mav.setViewName("main");
		
		return mav;
	}

}
