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

<<<<<<< HEAD
		System.out.println("ï¿½ï¿½ï¿½ï¿½ï¿½1 : ");
		//int temp = (Integer)request.getAttribute("cinema_no");
=======
		System.out.println("¿ö¿ì¿ö1 : ");
		String temp = request.getParameter("selectCinema");
		System.out.println("ÀÌ¿¡¿À¿¡¿À¾Æ¾îÀÌ³ª : " + temp);
>>>>>>> 85ff0a8380ff4d24ef3d755dbe972bcee75b4a01

		return mv;
	}

	@RequestMapping(value = "/reserve_step1.do")
	public ModelAndView reserveStep1(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("reserve_step1");

		/* ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ */
		List<Map<String, Object>> cinemaList = reserveService.selectCinemaList(commandMap.getMap());
		mv.addObject("cinemaList", cinemaList);

		return mv;
	}

	@RequestMapping(value = "/reserve_step2.do") // ï¿½ï¿½ï¿½å¼±ï¿½ï¿½È­ï¿½ï¿½
	public ModelAndView reserveStep2(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("reserve_step2");

		/* ï¿½ï¿½È­ ï¿½ï¿½ï¿½ï¿½ */
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
