package com.moviecube.seat;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;

@Controller
public class AdminSeatController {
	
	@Resource(name = "seatService")
	private SeatService seatService;
	
	@RequestMapping(value = "/screenSeatList.do")
	public ModelAndView screenSeatList(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/screenSeatList");
		
		List<Map<String, Object>> list = seatService.selectScreenSeat(commandMap.getMap());
		mv.addObject("screenSeatlist", list);
		
		return mv;
	}
	
	@RequestMapping(value = "/insertSeat.do")
	public ModelAndView insertSeat(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("");
		
		seatService.insertSeat(commandMap.getMap());
		
		return mv;
	}
	
	@RequestMapping(value = "/deleteSeat.do")
	public ModelAndView deleteSeat(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("");
		
		seatService.deleteSeat(commandMap.getMap());
		
		return mv;
	}
	
	/*
	 * @RequestMapping(value = "/TimeSeatList.do") public ModelAndView
	 * TimeSeatList(CommandMap commandMap) throws Exception{ ModelAndView mv = new
	 * ModelAndView("/timeSeatList");
	 * 
	 * List<Map<String, Object>> list =
	 * seatService.selectTimeSeat(commandMap.getMap()); mv.addObject("timeSeatList",
	 * list);
	 * 
	 * return mv; }
	 */

}
