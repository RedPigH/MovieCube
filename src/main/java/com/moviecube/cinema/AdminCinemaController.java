package com.moviecube.cinema;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;

@Controller
public class AdminCinemaController {
	
	@Resource(name="cinemaService")
	private CinemaService cinemaService;
	
	@RequestMapping(value = "/cinemaList.do")
	public ModelAndView cinemaList(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/cinemaList");
		
		List<Map<String,Object>> list = cinemaService.selectCinemaList(commandMap.getMap());
		mv.addObject("list",list);
		
		return mv;
	}
	
	@RequestMapping(value = "/cinemaWriteForm.do")
	public ModelAndView cinemaWriteForm(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/cinemaWirte.jsp");
		
		return mv;
	}
	
	@RequestMapping(value = "/cinemaWrite.do")
	public ModelAndView cinemaWrite(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/cinemaList");
		
		cinemaService.insertCinema(commandMap.getMap());
		
		return mv;
	}
	
	@RequestMapping(value = "/cinemaUpdateForm.do")
	public ModelAndView cinemaUpdate(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/cinemaWirte.jsp");
		/* mv.addObject("map", map); */
		
		return mv;
	}

}
