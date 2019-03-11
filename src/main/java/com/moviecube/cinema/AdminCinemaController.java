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

	@Resource(name = "cinemaService")
	private CinemaService cinemaService;

	@RequestMapping(value = "/cinemaList.do")
	public ModelAndView cinemaList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/cinemaList");

		List<Map<String, Object>> list = cinemaService.selectCinemaList(commandMap.getMap());
		mv.addObject("list", list);

		return mv;
	}

	@RequestMapping(value = "/cinemaDetail.do")
	public ModelAndView cinemaSelectOne(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/cinemaDetail");

		Map<String, Object> map = cinemaService.cinemaDetail(commandMap.getMap());

		mv.addObject("map", map);

		return mv;
	}

	@RequestMapping(value = "/cinemaWriteForm.do")
	public ModelAndView cinemaWriteForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/cinemaWirte");

		return mv;
	}

	@RequestMapping(value = "/cinemaWrite.do")
	public ModelAndView cinemaWrite(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/cinemaList.do");

		cinemaService.insertCinema(commandMap.getMap());

		return mv;
	}

	@RequestMapping(value = "/cinemaUpdateForm.do")
	public ModelAndView cinemaUpdateForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/cinemaWirte");

		Map<String, Object> map = cinemaService.cinemaDetail(commandMap.getMap());

		mv.addObject("map", map);

		return mv;
	}

	@RequestMapping(value = "/cinemaUpdate.do")
	public ModelAndView cinemaUpdate(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/cinemaDetail.do");

		cinemaService.updateCinema(commandMap.getMap());

		mv.addObject("CINEMA_NO", commandMap.get("CINEMA_NO"));

		return mv;
	}

	@RequestMapping(value = "/cinemaDelete.do")
	public ModelAndView cinemaDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/cinemaList.do");

		cinemaService.deleteCinema(commandMap.getMap());

		return mv;
	}

}
