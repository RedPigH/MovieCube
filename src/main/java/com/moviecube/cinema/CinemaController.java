package com.moviecube.cinema;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;

@Controller
public class CinemaController {
	
	@Resource(name="cinemaService")
	private CinemaService cinemaService;
	
	@RequestMapping(value = "/CinemaList.do")
	public ModelAndView CinemaList(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/cinemaList");
		
		List<Map<String,Object>> list = cinemaService.selectCinemaList(commandMap.getMap());
		mv.addObject("list",list);
		
		return mv;
	}

}
