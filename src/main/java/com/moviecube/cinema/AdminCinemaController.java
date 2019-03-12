package com.moviecube.cinema;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;

@RequestMapping(value = "/admin")
@Controller
public class AdminCinemaController {

	@Resource(name = "cinemaService")
	private CinemaService cinemaService;

	@RequestMapping(value = "/cinemaList.do")
	public ModelAndView cinemaList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/cinemaList");

		List<Map<String, Object>> cinemaList = cinemaService.selectCinemaList(commandMap.getMap());
		mv.addObject("cinemaList", cinemaList);
		System.out.println("시네마 리스트 확인: " + commandMap.getMap());
		return mv;
	}

	@RequestMapping(value = "/cinemaDetail.do")
	public ModelAndView cinemaSelectOne(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/cinemaDetail");

		Map<String, Object> map = cinemaService.cinemaDetail(commandMap.getMap());

		mv.addObject("map", map);

		return mv;
	}

	@RequestMapping(value = "/cinemaWriteForm.do")
	public ModelAndView cinemaWriteForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/cinemaWrite");

		return mv;
	}

	@RequestMapping(value = "/cinemaWrite.do")
	public ModelAndView cinemaWrite(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/cinemaList.do");

		cinemaService.insertCinema(commandMap.getMap());

		return mv;
	}

	@RequestMapping(value = "/cinemaModifyForm.do")
	public ModelAndView cinemaUpdateForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/cinemaModify");

		Map<String, Object> map = cinemaService.cinemaDetail(commandMap.getMap());

		mv.addObject("map", map);

		return mv;
	}

	@RequestMapping(value = "/cinemaModify.do")
	public ModelAndView cinemaUpdate(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/cinemaDetail.do");

		cinemaService.updateCinema(commandMap.getMap());

		mv.addObject("CINEMA_NO", commandMap.get("CINEMA_NO"));

		return mv;
	}

	@RequestMapping(value = "/cinemaDelete.do")
	public ModelAndView cinemaDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/cinemaList.do");

		cinemaService.deleteCinema(commandMap.getMap());

		return mv;
	}

}
