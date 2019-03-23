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
	
	

	@RequestMapping(value = "/reserve_selectSeat.do")
	   public ModelAndView reserve_seat(CommandMap commandMap, HttpServletRequest request) throws Exception {
	      ModelAndView mv = new ModelAndView("reserve/reserve_selectSeat");
	      
	      System.out.println(commandMap.get("time_no"));
	      System.out.println(commandMap.get("screen_no"));
	      
	      CommandMap timeSeatMap = new CommandMap();
	      CommandMap screenMap = new CommandMap();
	      CommandMap timeMap = new CommandMap();
	      
	      //나중에 Step1 완료해서 Map으로 변경함  -국
	      timeSeatMap.put("TIME_NO", commandMap.get("time_no"));
	      screenMap.put("SCREEN_NO", commandMap.get("screen_no"));
	      timeMap.put("TIME_NO", commandMap.get("time_no"));
	      
	      List<Map<String, Object>> unableSeatList = seatService.unableTimeSeat(timeSeatMap.getMap());
	      Map<String, Object> seatnum = seatService.ScreenSeatNum(screenMap.getMap());
	      Map<String, Object> time = timeService.timeDetail(timeMap.getMap());
	      
	      int row = Integer.parseInt(seatnum.get("ROW_NUM").toString());
	      int col = Integer.parseInt(seatnum.get("COL_NUM").toString());
	      String seats = "";
	      String unableseats = "";
	      
	      for(int i = 0; i < row; i++) {
	         
	         for(int j = 0; j < col; j++) {
	            seats +="a";
	         }
	         if(i == row-1) continue;
	         else seats += ",";
	      }
	      
	      for(int i = 0; i < unableSeatList.size(); i++) {
	    	  unableseats += unableSeatList.get(i).get("SEAT_ROW").toString() + "_" + unableSeatList.get(i).get("SEAT_COL").toString();
	    	  if(i == unableSeatList.size() -1) continue;
	    	  else unableseats += ",";
	      }
	      
	      System.out.println(seats);
	      System.out.println(unableseats);
	   
	      //시간별 좌석 리스트
	      mv.addObject("unableseats", unableseats);
	      //좌석 행 열 String
	      mv.addObject("seats", seats);
	      //상영 정보
	      mv.addObject("time", time);
	      
	      return mv;
	   }
	

	
	
	
	@RequestMapping(value = "/reserve.do")
	public ModelAndView reserveMain(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("reserve/reserve_main");
		
		List<Map<String, Object>> alltimeList = timeService.selectAllTimeList(commandMap.getMap());
		
		List<Map<String, Object>> cinemaList =  cinemaService.selectCinemaList(commandMap.getMap());
		
		List<Map<String, Object>> movieList = movieService.dupMovieList(commandMap.getMap());
	      
	    mv.addObject("movieList", movieList);
		mv.addObject("alltimeList", alltimeList);
		mv.addObject("cinemaList", cinemaList);
		
		return mv;
	}
	
	
	@RequestMapping(value = "/reserve/movieSelect.do")
	public ModelAndView movieSelect(CommandMap commandMap, HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mv = new ModelAndView("reserve/reserve_main");
		
		String selectedDate = request.getParameter("selectedDate");
		String[] var = request.getParameterValues("cinemaNo");
		String[] var2 = request.getParameterValues("movieName");
		
		CommandMap map = new CommandMap();
		
		map.put("TIME_DATE", selectedDate);
		
		for(int i = 0; i < var.length ; i++) {
			map.put("CINEMA_NO" + i, var[i]);			
		}
		
		for(int i = 0; i < var2.length ; i++) {
			map.put("MOVIE_NAME" + i, var2[i]);			
		}
		/* 데이터 확인용  */
		System.out.println(request.getParameter("selectedDate"));
		
		
		for(String arr : var) {
		System.out.println(arr);
		};
		
		
		for(String arr : var2) {
		System.out.println(arr);
		};
		
		
		List<Map<String, Object>> optionTimeList = timeService.optionTimeList(map.getMap());
		
		mv.setViewName("jsonView");
		mv.addObject("optionTimeList", optionTimeList);
		
		return mv;
	}

}
