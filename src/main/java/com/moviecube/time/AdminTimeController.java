package com.moviecube.time;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;
import com.moviecube.movie.MovieService;
import com.moviecube.screen.ScreenService;
import com.moviecube.seat.SeatService;
import com.moviecube.cinema.CinemaService;

@Controller
public class AdminTimeController {

	@Resource(name = "timeService")
	private TimeService timeService;

	@Resource(name = "seatService")
	private SeatService seatService;

	@Resource(name = "screenService")
	private ScreenService screenService;

	@Resource(name = "movieService")
	private MovieService movieService;

	@Resource(name = "cinemaService")
	private CinemaService cinemaService;

	@RequestMapping(value = "/timeList.do")
	public ModelAndView timeList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/timeList");

		List<Map<String, Object>> list = timeService.selectTimeList(commandMap.getMap());
		mv.addObject("timelist", list);

		return mv;
	}

	@RequestMapping(value = "/timeDetail.do")
	public ModelAndView timeSelectOne(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/timeDetail");

		Map<String, Object> map = timeService.timeDetail(commandMap.getMap());
		mv.addObject("map", map);

		return mv;
	}

	@RequestMapping(value = "/timeWriteForm.do")
	public ModelAndView timeWriteForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/timeWrite");

		List<Map<String, Object>> movielist = movieService.selectMovieList(commandMap.getMap());
		List<Map<String, Object>> screenlist = screenService.selectScreenList(commandMap.getMap());
		List<Map<String, Object>> cinemalist = cinemaService.selectCinemaList(commandMap.getMap());

		mv.addObject("movielist", movielist);
		mv.addObject("screenlist", screenlist);
		mv.addObject("cinemalist", cinemalist);

		return mv;
	}

	@RequestMapping(value = "/timeWrite.do")
	public ModelAndView timeWrite(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/main.do");

		commandMap.put("MOVIE_NO", request.getParameter("selectMovie"));
		commandMap.put("CINEMA_NO", request.getParameter("selectCinema"));
		commandMap.put("SCREEN_NO", request.getParameter("selectScreen"));

		// 상영 시간표 생성
		timeService.insertTime(commandMap.getMap());

		// 생성된 시간표에 대한 좌석 생성
		CommandMap screenSeatmap = new CommandMap();
		CommandMap timeSeatmap = new CommandMap();

		screenSeatmap.put("SCREEN_NO", commandMap.get("SCREEN_NO"));

		List<Map<String, Object>> seatlist = seatService.selectScreenSeat(screenSeatmap.getMap());

		for (int i = 0; i < seatlist.size(); i++) {
			timeSeatmap.put("SEAT_NO", seatlist.get(i).get("SEAT_NO"));
			seatService.insertTimeSeat(timeSeatmap.getMap());
		}

		return mv;
	}
	
	@RequestMapping("/selectscreenList.do")
	@ResponseBody
	public ResponseEntity<List<Map<String, Object>>> selectscreenList(String cinema_no) throws Exception{
		ResponseEntity<List<Map<String, Object>>> entity = null;
		CommandMap smap = new CommandMap();
		smap.put("CINEMA_NO", cinema_no);
		try {
			List<Map<String, Object>> screenlist = cinemaService.selectCinemaScreen(smap.getMap());
			entity = new ResponseEntity<List<Map<String, Object>>>(screenlist, HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return entity;
	}

	@RequestMapping("value = /timeUpdateForm.do")
	public ModelAndView timeUpdateForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/timeWrite");

		Map<String, Object> map = timeService.timeDetail(commandMap.getMap());
		mv.addObject("map", map);

		return mv;
	}

	@RequestMapping("value = /timeUpdate.do")
	public ModelAndView timeUpdate(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/timeDetail");

		timeService.updateTime(commandMap.getMap());

		mv.addObject("TIME_NO", commandMap.get("TIME_NO"));

		return mv;
	}

	@RequestMapping("value = /timeDelete.do")
	public ModelAndView timeDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/timeList.do");

		timeService.deleteTime(commandMap.getMap());

		return mv;
	}
}
