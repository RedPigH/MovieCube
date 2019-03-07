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

@Controller
public class ReserveController {
	@Resource(name = "reserveService")
	private ReserveService reserveService;

	@SuppressWarnings("null")
	@RequestMapping(value = "/reserve.do")
	public ModelAndView reserveMain(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("reserve_main");
		String cinemaNo = "";
		String movieNo = "";
		Map<String, Object> cinemaMap = null;
		Map<String, Object> movieMap = null;

		// 선택한 영화관 예매 홈 화면으로 불러오는 부분
		if (request.getParameter("selectCinema") != null) {

			cinemaNo = request.getParameter("selectCinema");
			commandMap.put("CINEMA_NO", cinemaNo); // key, value
			cinemaMap = reserveService.selectOneCinema(commandMap.getMap());
			mv.addObject("cinemaMap", cinemaMap);
			mv.addObject("cinemaNo", cinemaNo); // 이 값을 영화선택 할 때도 줘서 값 유지시켜야됨.

		}

		// 선택한 영화를 홈 화면으로 불러오는 부분
		if (request.getParameter("selectMovie") != null) {

			movieNo = request.getParameter("selectMovie");
			commandMap.put("MOVIE_NO", movieNo); // key, value
			movieMap = reserveService.selectOneMovie(commandMap.getMap());
			mv.addObject("movieMap", movieMap);
			mv.addObject("movieNo", movieNo); // 이 값을 영화관선택할 때도 줘서 값 유지시켜야됨.

		}

		return mv;
	}

	// 극장 리스트 전체
	@RequestMapping(value = "/reserve_step1.do")
	public ModelAndView reserveStep1(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("reserve_step1");

		/* 극장 관련 */
		List<Map<String, Object>> cinemaList = reserveService.selectCinemaList(commandMap.getMap());
		mv.addObject("cinemaList", cinemaList);

		if (request.getParameter("movieNo") != null) {
			String movieNo = request.getParameter("movieNo");
			mv.addObject("selectMovie", movieNo);
		}

		return mv;
	}

	// 영화  리스트 전체
	@RequestMapping(value = "/reserve_step2.do")
	public ModelAndView reserveStep2(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("reserve_step2");

		/* 영화 관련 */
		List<Map<String, Object>> movieList = reserveService.selectMovieList(commandMap.getMap());
		mv.addObject("movieList", movieList);

		if (request.getParameter("cinemaNo") != null) {
			String cinemaNo = request.getParameter("cinemaNo");
			mv.addObject("selectCinema", cinemaNo);
		}

		return mv;
	}

	// 선택한 극장, 선택한 영화에 맞는 시간표를 쫘라라라락 띄워줌.
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
