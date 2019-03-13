package com.moviecube.time;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;
import com.moviecube.seat.SeatService;

@Controller
public class AdminTimeController {

	@Resource(name = "timeService")
	private TimeService timeService;
	
	@Resource(name = "seatService")
	private SeatService seatService;

	@RequestMapping(value = "/timeList.do")
	public ModelAndView timeList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/timeList");

		List<Map<String, Object>> list = timeService.selectTimeList(commandMap.getMap());
		mv.addObject("timelist", list);

		return mv;
	}

	@RequestMapping(value = "/timeDetail.do")
	public ModelAndView timeSelectOne(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/timeDetail");

		Map<String, Object> map = timeService.timeDetail(commandMap.getMap());
		mv.addObject("map", map);

		return mv;
	}

	@RequestMapping(value = "/timeWriteForm.do")
	public ModelAndView timeWriteForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/timeWrite");

		return mv;
	}

	@RequestMapping("value = /timeWrite.do")
	public ModelAndView timeWrite(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/timeList.do");

		timeService.insertTime(commandMap.getMap());

		return mv;
	}

	@RequestMapping("value = /timeUpdateForm.do")
	public ModelAndView timeUpdateForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/timeWrite");

		Map<String, Object> map = timeService.timeDetail(commandMap.getMap());
		mv.addObject("map", map);

		return mv;
	}

	@RequestMapping("value = /timeUpdate.do")
	public ModelAndView timeUpdate(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/timeDetail");

		timeService.updateTime(commandMap.getMap());

		mv.addObject("TIME_NO", commandMap.get("TIME_NO"));

		return mv;
	}

	@RequestMapping("value = /timeDelete.do")
	public ModelAndView timeDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/timeList.do");

		timeService.deleteTime(commandMap.getMap());

		return mv;
	}
}
