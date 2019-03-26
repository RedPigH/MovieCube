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

	@RequestMapping(value = "/eventList.do")
	public ModelAndView eventList(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("event/eventList");

		List<Map<String, Object>> eventList = eventService.selectEventList(commandMap);
		mv.addObject("eventList", eventList);

		return mv;
	}

	@RequestMapping(value = "/eventWriteForm.do")
	public ModelAndView eventWriteForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("event/eventWriteForm");

		return mv;
	}

	@RequestMapping(value = "/eventWrite.do")
	public ModelAndView eventWrite(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/eventList.do");
		eventService.insertEvent(commandMap.getMap(), request);

		return mv;
	}

	@RequestMapping(value = "/eventDetail.do")
	public ModelAndView eventDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("event/eventDetail");

		Map<String, Object> map = eventService.selectEventDetail(commandMap.getMap());
		mv.addObject("map", map.get("map"));
		mv.addObject("eventDetail", map.get("eventDetail"));
System.out.println("혜쮸꼰뜌님:"+commandMap.get("EVENT_NO"));
		return mv;
	}

	/*
	 * @RequestMapping(value="/eventModifyForm.do") public ModelAndView
	 * modifyEvent(CommandMap commandMap) throws Exception{ ModelAndView mv = new
	 * ModelAndView("event/eventModify");
	 * 
	 * Map<String,Object> cmap = eventService.checkEventFile(commandMap.getMap());
	 * 
	 * String temp = String.valueOf(cmap.get("CNT")); int count =
	 * Integer.parseInt(temp);
	 * 
	 * if(count == 0) { Map<String,Object> map =
	 * eventService.selectEventDetail2(commandMap.getMap());
	 * mv.addObject("map",map); }else { Map<String,Object> map =
	 * eventService.selectEventDetail(commandMap.getMap()); mv.addObject("map",map);
	 * } System.out.println("혜쮸는공듀님이얍"+commandMap.get("EVENT_NAME")); return mv;
	 * 
	 * }
	 */

	@RequestMapping(value = "/eventModifyForm.do")
	public ModelAndView movieModifyForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("event/eventModify");
		System.out.println("영화 수정 폼1 값 확인 =============: " + commandMap.getMap());
		Map<String, Object> map = eventService.selectEventDetail(commandMap.getMap());

		mv.addObject("map", map.get("map"));
		mv.addObject("eventDetail", map.get("eventDetail"));
		mv.addObject("fileList", map.get("fileList"));
		System.out.println("혜쮸꼰뜌님1:"+commandMap.get("EVENT_NO"));
		System.out.println("혜쮸꼰뜌님2:"+commandMap.get("EVENT_TYPE"));
		System.out.println("혜쮸꼰뜌님3:"+commandMap.get("EVENT_OPENDATE"));
		System.out.println("혜쮸꼰뜌님4:"+commandMap.get("EVENT_CLOSEDATE"));
		System.out.println("혜쮸꼰뜌님5:"+commandMap.get("EVENT_URL"));
		
		return mv;
	}

	@RequestMapping(value = "/eventModify.do")
	public ModelAndView modifyEvent(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("event/eventList");

		/*
		 * String EVENT_NO = (String)commandMap.get("EVENT_NO");
		 * commandMap.getMap().put("EVENT_NO", EVENT_NO);
		 */
		/*
		 * int EVENT_NO = Integer.parseInt((String)commandMap.get("EVENT_NO"));
		 * commandMap.getMap().put("EVENT_NO", EVENT_NO);
		 */
		eventService.modifyEvent(commandMap.getMap(), request);
		System.out.println("혜쮸꼰뜌님힝:"+commandMap.get("EVENT_NO"));
		mv.addObject("EVENT_NO", commandMap.get("EVENT_NO"));
	

		return mv;
	}

	@RequestMapping(value = "/eventDelete.do")
	public ModelAndView eventDelete(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("event/eventList");

		eventService.deleteEvent(commandMap.getMap(), request);

		return mv;
	}

}
