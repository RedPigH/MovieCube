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
	
	@RequestMapping(value = "/seatList.do")
	public ModelAndView seatList(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("/seatList");
		
		List<Map<String, Object>> list = seatService.selectScreenSeat(commandMap.getMap());
		mv.addObject("list", list);
		
		return mv;
	}

}
