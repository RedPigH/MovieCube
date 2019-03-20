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

	@RequestMapping(value = "/reserve_selectSeat.do")
	public ModelAndView reserveStep4(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("reserve/reserve_selectSeat");
		
		CommandMap timeSeatMap = new CommandMap();
		CommandMap screenMap = new CommandMap();
		
		//나중에 Step1 완료시 Map으로 변경
		timeSeatMap.put("TIME_NO", 21);
		screenMap.put("SCREEN_NO", 2);
		
		List<Map<String, Object>> timeSeatlist = seatService.selectTimeSeat(timeSeatMap.getMap());
		Map<String, Object> seatnum = seatService.ScreenSeatNum(screenMap.getMap());
		
		int row = Integer.parseInt(seatnum.get("ROW_NUM").toString());
		int col = Integer.parseInt(seatnum.get("COL_NUM").toString());
		String seats = "";
		
		for(int i = 0; i < row; i++) {
			
			for(int j = 0; j < col; j++) {
				seats +="a";
			}
			if(i == row-1) continue;
			else seats += ",";
		}
	
		//시간별 좌석 리스트
		mv.addObject("seatList", timeSeatlist);
		//좌석 행 열 String
		mv.addObject("seats", seats);
		
		return mv;
	}
}
