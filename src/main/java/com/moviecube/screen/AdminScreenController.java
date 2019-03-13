package com.moviecube.screen;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;
import com.moviecube.cinema.CinemaService;

@RequestMapping(value = "/admin")
@Controller
public class AdminScreenController {

	@Resource(name = "screenService")
	private ScreenService screenService;
	
	@Resource(name = "cinemaService")
	private CinemaService cinemaService;

	@RequestMapping(value = "/screenList.do")
	public ModelAndView screenList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/screenList");

		List<Map<String, Object>> screenList = screenService.selectScreenList(commandMap.getMap());
		Map<String, Object> map = cinemaService.cinemaDetail(commandMap.getMap());
		
		mv.addObject("screenList", screenList);
		mv.addObject("map", map);
		return mv;
	}

	@RequestMapping(value = "/screenDetail.do")
	public ModelAndView screenDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/screenDetail");

		Map<String, Object> map = screenService.screenDetail(commandMap.getMap());

		mv.addObject("map", map);

		return mv;
	}

	@RequestMapping(value = "/screenWriteForm.do")
	public ModelAndView screenWriteForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/screenWrite");

		return mv;
	}

	@RequestMapping(value = "/screenWrite.do")
	public ModelAndView screenWrite(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/screenList.do");

		screenService.insertScreen(commandMap.getMap());

		return mv;
	}

	@RequestMapping(value = "/screenModifyForm.do")
	public ModelAndView screenUpdateForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/screenModify");

		Map<String, Object> map = screenService.screenDetail(commandMap.getMap());

		mv.addObject("map", map);

		return mv;
	}

	@RequestMapping(value = "/screenModify.do")
	public ModelAndView screenUpdate(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/screenDetail.do");

		screenService.updateScreen(commandMap.getMap());

		mv.addObject("SCREEN_NO", commandMap.get("SCREEN_NO"));

		return mv;
	}

	@RequestMapping(value = "/screenDelete.do")
	public ModelAndView screenDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/screenList.do");

		screenService.deleteScreen(commandMap.getMap());

		return mv;
	}

}
