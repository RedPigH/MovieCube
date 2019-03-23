package com.moviecube.reserve;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;
import com.moviecube.time.TimeService;

@Controller
public class ReserveController {
	@Resource(name = "reserveService")
	private ReserveService reserveService;
	
	@Resource(name = "timeService")
	private TimeService timeService;

	@SuppressWarnings("null")
	@RequestMapping(value = "/reserve.do")
	public ModelAndView reserveMain(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("reserve/reserve_main");
		String cinemaNo = "";
		String movieNo = "";
		String selectDate = "";
		Map<String, Object> cinemaMap = null;
		Map<String, Object> movieMap = null;

		// �꽑�깮�븳 �쁺�솕愿� �삁留� �솃 �솕硫댁쑝濡� 遺덈윭�삤�뒗 遺�遺�
		if (request.getParameter("selectCinema") != null) {

			cinemaNo = request.getParameter("selectCinema");
			commandMap.put("CINEMA_NO", cinemaNo); // key, value
			cinemaMap = reserveService.selectOneCinema(commandMap.getMap());
			mv.addObject("cinemaMap", cinemaMap);
			mv.addObject("cinemaNo", cinemaNo); // �씠 媛믪쓣 �쁺�솕�꽑�깮 �븷 �븣�룄 以섏꽌 媛� �쑀吏��떆耳쒖빞�맖.

		}

		// �꽑�깮�븳 �쁺�솕瑜� �솃 �솕硫댁쑝濡� 遺덈윭�삤�뒗 遺�遺�
		if (request.getParameter("selectMovie") != null) {

			movieNo = request.getParameter("selectMovie");
			commandMap.put("MOVIE_NO", movieNo); // key, value
			movieMap = reserveService.selectOneMovie(commandMap.getMap());
			mv.addObject("movieMap", movieMap);
			mv.addObject("movieNo", movieNo); // �씠 媛믪쓣 �쁺�솕愿��꽑�깮�븷 �븣�룄 以섏꽌 媛� �쑀吏��떆耳쒖빞�맖.

		}
		
		if(request.getParameter("selectdate") != null) {
			
			selectDate = request.getParameter("selectdate");
			commandMap.put("TIME_DATE", selectDate);
			
		}
		
		if(commandMap.containsKey("CINEMA_NO") && commandMap.containsKey("MOVIE_NO") && commandMap.containsKey("TIME_DATE") && commandMap.get("CINEMA_NO") != "" && commandMap.get("MOVIE_NO") != "" && commandMap.get("TIME_DATE") != "") {
		
			List<Map<String,Object>> timelist = timeService.testList(commandMap.getMap());
		
			mv.addObject("timelist", timelist);
		}

		return mv;
	}

	// 洹뱀옣 由ъ뒪�듃 �쟾泥�
	@RequestMapping(value = "/reserve_step1.do")
	public ModelAndView reserveStep1(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("reserve_step1");

		/* 洹뱀옣 愿��젴 */
		List<Map<String, Object>> cinemaList = reserveService.selectCinemaList(commandMap.getMap());
		mv.addObject("cinemaList", cinemaList);

		if (request.getParameter("movieNo") != null) {
			String movieNo = request.getParameter("movieNo");
			mv.addObject("selectMovie", movieNo);
		}

		return mv;
	}

	// �쁺�솕  由ъ뒪�듃 �쟾泥�
	@RequestMapping(value = "/reserve_step2.do")
	public ModelAndView reserveStep2(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("reserve_step2");

		/* �쁺�솕 愿��젴 */
		List<Map<String, Object>> movieList = reserveService.selectMovieList(commandMap.getMap());
		mv.addObject("movieList", movieList);

		if (request.getParameter("cinemaNo") != null) {
			String cinemaNo = request.getParameter("cinemaNo");
			mv.addObject("selectCinema", cinemaNo);
		}

		return mv;
	}

	// �꽑�깮�븳 洹뱀옣, �꽑�깮�븳 �쁺�솕�뿉 留욌뒗 �떆媛꾪몴瑜� 已섎씪�씪�씪�씫 �쓣�썙以�.
	@RequestMapping(value = "/reserve_step3.do")
	public ModelAndView reserveStep3(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/reserve.do");
		
		String cinemaNo = request.getParameter("cinemaNo");
		String movieNo = request.getParameter("movieNo");
		String selectedDate = request.getParameter("selectDate");
		
		mv.addObject("selectMovie", movieNo);
		mv.addObject("selectCinema", cinemaNo);
		mv.addObject("selectdate", selectedDate);
		
		return mv;
	}

	@RequestMapping(value = "/reserve_step4.do")
	public ModelAndView reserveStep4(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("reserve_step4");
		return mv;
	}
}
