package com.moviecube.seat;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

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
	
	@RequestMapping(value = "/insertSeatForm.do")
	public ModelAndView insertSeatForm(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("insertSeatForm");
		
		return mv;
	}
	
	@RequestMapping(value = "/insertSeat.do")
	public ModelAndView insertSeat(CommandMap commandMap, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/insertSeatForm.do");
		
		// 행,열 값을 받아옴
		int row = Integer.parseInt(request.getParameter("row"));
		int col = Integer.parseInt(request.getParameter("col"));
		
		// 받아온 행열 값을 통하여 좌석 생성 행(A~H) 열(10~15) 정도로 예상중
		for(int i = 65; i <= row + 65; i++) {
			for(int j = 1; j <= col; j++) {
				commandMap.put("SEAT_ROW", Character.toString((char)i));
				commandMap.put("SEAT_COL", j);
				
				seatService.insertSeat(commandMap.getMap());
				
				commandMap.remove("SEAT_ROW");
				commandMap.remove("SEAT_COL");
			}
			
		}
		
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
