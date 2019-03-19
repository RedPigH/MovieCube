package com.moviecube.event;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;

@Controller
public class EventController {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "eventService")
	private EventService eventService;
	
	@RequestMapping(value="/eventList.do")
	public ModelAndView eventList(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("event/eventList");
		
		List<Map<String,Object>> eventList = eventService.selectEventList(commandMap.getMap());
		mv.addObject("eventList", eventList);
		
		return mv;
	}
	
	@RequestMapping(value = "/eventWriteForm.do")
	public ModelAndView eventWriteForm(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("event/eventWriteForm");
		
		return mv;
	}
	
	@RequestMapping(value="/eventWrite.do")
	public ModelAndView eventWrite(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/event/eventList");
		
		eventService.insertEvent(commandMap.getMap(), request);
		
		return mv;
	}

}
