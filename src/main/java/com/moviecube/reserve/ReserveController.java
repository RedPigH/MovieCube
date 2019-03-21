package com.moviecube.reserve;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.cinema.CinemaService;
import com.moviecube.common.CommandMap;
import com.moviecube.movie.MovieService;
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
	
	@Resource(name = "movieService")
	private MovieService movieService;
	
	
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
		
		List<Map<String, Object>> movieList = movieService.dupMovieList(commandMap.getMap());
		
		List<Map<String, Object>> cinemaList =  cinemaService.selectCinemaList(commandMap.getMap());
		
		mv.addObject("alltimeList", alltimeList);
		mv.addObject("movieList", movieList);
		mv.addObject("cinemaList", cinemaList);
		
		return mv;
	}
	
	
	@RequestMapping(value = "/reserve/movieSelect.do")
	public ModelAndView movieSelect(CommandMap commandMap, HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mv = new ModelAndView("reserve/reserve_main");
		
		
		/* 데이터 확인용  */
		System.out.println(request.getParameter("selectedDate"));
		
		String[] var = request.getParameterValues("cinemaNo");
		for(String arr : var) {
		System.out.println(arr);
		};
		
		
		List<Map<String, Object>> alltimeList = timeService.selectAllTimeList(commandMap.getMap());
		
		mv.addObject("alltimeList", alltimeList);
		
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
