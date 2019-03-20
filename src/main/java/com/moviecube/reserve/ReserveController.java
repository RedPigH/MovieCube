package com.moviecube.reserve;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.cinema.CinemaService;
import com.moviecube.common.CommandMap;
import com.moviecube.seat.SeatService;
import com.moviecube.time.TimeService;

@Controller
public class ReserveController {
	@Resource(name = "reserveService")
	private ReserveService reserveService;
	
	@Resource(name = "timeService")
	private TimeService timeService;
	
	@Resource(name = "seatService")
	private SeatService seatService;
	
	@Resource(name = "cinemaService")
	private CinemaService cinemaService;
	
	
	
	
	/*     임시용  step2       */
	@RequestMapping(value = "/reserve_seat.do")
	public ModelAndView reserve_seat(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("reserve/reserve_seat");
		
		return mv;
		
	};
	/*      임시용 step2 끝        */
	

	
	
	
	@RequestMapping(value = "/reserve.do")
	public ModelAndView reserveMain(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("reserve/reserve_main");
		
		List<Map<String, Object>> alltimeList = timeService.selectAllTimeList(commandMap.getMap());
		
		List<Map<String, Object>> cinemaList =  cinemaService.selectCinemaList(commandMap.getMap());
		
		mv.addObject("alltimeList", alltimeList);
		mv.addObject("cinemaList", cinemaList);
		
	/*	String cinemaNo = "";
		String movieNo = "";
		String selectDate = "";
		String[] selectType;
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
		
		if(request.getParameter("selectDate") != null) {
			
			selectDate = request.getParameter("selectDate");
			commandMap.put("TIME_DATE", selectDate);
			
		}
		
		if(request.getParameter("selectType") != null) {
			
			selectType = request.getParameterValues("selectType");
			
			for(int i = 0; i < selectType.length ; i++) {
				commandMap.put("MOVIE_TYPE" + i, selectType[i]);			
			}
			System.out.println(commandMap.getMap());

		}
		
		//view단에서 validation 처리 보탁 드립니다
		if(commandMap.containsKey("CINEMA_NO") && commandMap.containsKey("MOVIE_NO") && commandMap.containsKey("TIME_DATE") && commandMap.get("CINEMA_NO") != "" && commandMap.get("MOVIE_NO") != "" && commandMap.get("TIME_DATE") != "") {
		
			List<Map<String,Object>> timelist = timeService.optionTimeList(commandMap.getMap());
		
			mv.addObject("timelist", timelist);
		} */

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

	// 영화관, 영화, 영화 타입 선택 조건에 맞는 영화 상영 리스트 
	@RequestMapping(value = "/reserve_step3.do")
	public ModelAndView reserveStep3(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/reserve.do");
		
		String cinemaNo = request.getParameter("cinemaNo");
		String movieNo = request.getParameter("movieNo");
		String selectedDate = request.getParameter("selectDate");
		String[] checktype = request.getParameterValues("movie_type");
		
		mv.addObject("selectMovie", movieNo);
		mv.addObject("selectCinema", cinemaNo);
		mv.addObject("selectDate", selectedDate);
		mv.addObject("selectType", checktype);
		
		return mv;
	}

	@RequestMapping(value = "/reserve_selectSeat.do")
	public ModelAndView reserveStep4(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("reserve/reserve_selectSeat");
		
		CommandMap timeSeatMap = new CommandMap();
		CommandMap screenMap = new CommandMap();
		
		/*String time_no = request.getParameter("TIME_NO");
		String screen_no = request.getParameter("SCREEN_NO");
		*/
		
		timeSeatMap.put("TIME_NO", 1);
		screenMap.put("SCREEN_NO", 1);
		
		List<Map<String, Object>> timeSeatlist = seatService.selectTimeSeat(timeSeatMap.getMap());
		Map<String, Object> seatnum = seatService.ScreenSeatNum(screenMap.getMap());
		
		//System.out.println(seatnum.get(arg0));
		
		//시간별 좌석 리스트
		mv.addObject("seatList", timeSeatlist);
		//좌석 행 렬 값
		mv.addObject("seatnum", seatnum);
		
		return mv;
	}
}
