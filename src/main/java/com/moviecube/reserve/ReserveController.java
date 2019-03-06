package com.moviecube.reserve;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;

@Controller
public class ReserveController {
	@Resource(name = "reserveService")
	private ReserveService reserveService;

	
	@RequestMapping(value = "/reserve.do")
	public ModelAndView reserveMain(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("reserve_main");

		System.out.println("워우워1 : ");
		String temp = request.getParameter("selectCinema");
		System.out.println("이에오에오아어이나 : " + temp);

		return mv;
	}

	@RequestMapping(value = "/reserve_step1.do")
	public ModelAndView reserveStep1(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("reserve_step1");

		/* 극장 관련 */
		List<Map<String, Object>> cinemaList = reserveService.selectCinemaList(commandMap.getMap());
		mv.addObject("cinemaList", cinemaList);

		return mv;
	}

	@RequestMapping(value = "/reserve_step2.do") // 극장선택화면
	public ModelAndView reserveStep2(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("reserve_step2");

		/* 영화 관련 */
		List<Map<String, Object>> movieList = reserveService.selectMovieList(commandMap.getMap());
		mv.addObject("movieList", movieList);

		return mv;
	}

	@RequestMapping(value = "/reserve_step3.do")
	public ModelAndView reserveStep3(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("reserve_step3");
		return mv;
	}

	@RequestMapping(value = "/reserve_step4.do")
	public ModelAndView reserveStep4(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("reserve_step4");
		return mv;
	}
}
