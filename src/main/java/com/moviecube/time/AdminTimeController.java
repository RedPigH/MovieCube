package com.moviecube.time;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.moviecube.cinema.CinemaService;
import com.moviecube.common.Paging;

@RequestMapping(value = "/admin")
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

	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 5;
	private int blockpaging = 5;
	private String pagingHtml;
	private Paging paging;

	@RequestMapping(value = "/timeList.do")
	public ModelAndView timeList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/timeList");

		List<Map<String, Object>> timeList = timeService.selectTimeList(commandMap.getMap());

		if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
				|| request.getParameter("currentPage").equals("0")) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		totalCount = timeList.size();

		paging = new Paging(currentPage, totalCount, blockCount, blockpaging, "movieList");
		pagingHtml = paging.getPagingHtml().toString();

		int lastCount = totalCount;
		// System.out.println(paging.getEndCount());
		// System.out.println(totalCount);
		if (paging.getEndCount() < totalCount) {
			lastCount = paging.getEndCount() + 1;
		}

		timeList = timeList.subList(paging.getStartCount(), lastCount);

		mv.addObject("timeList", timeList);
		mv.addObject("list", timeList);
		mv.addObject("currentPage", currentPage);
		mv.addObject("pagingHtml", pagingHtml);
		mv.addObject("totalCount", totalCount);
		return mv;
	}

	@RequestMapping(value = "/timeDetail.do")
	public ModelAndView timeSelectOne(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/timeDetail");

		Map<String, Object> map = timeService.timeDetail(commandMap.getMap());
		mv.addObject("map", map);

		return mv;
	}

	@RequestMapping(value = "/timeWriteForm.do")
	public ModelAndView timeWriteForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/timeWrite");

		List<Map<String, Object>> movieList = movieService.selectMovieList(commandMap.getMap());
		List<Map<String, Object>> screenList = screenService.selectScreenList(commandMap.getMap());
		List<Map<String, Object>> cinemaList = cinemaService.selectCinemaList(commandMap.getMap());

		mv.addObject("movieList", movieList);
		mv.addObject("screenList", screenList);
		mv.addObject("cinemaList", cinemaList);

		return mv;
	}

	@RequestMapping(value = "/timeWrite.do")
	public ModelAndView timeWrite(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/timeList.do");

		commandMap.put("MOVIE_NO", request.getParameter("selectMovie"));
		commandMap.put("CINEMA_NO", request.getParameter("selectCinema"));
		commandMap.put("SCREEN_NO", request.getParameter("selectScreen"));

		// 상영 시간표 생성
		timeService.insertTime(commandMap.getMap());

		// 생성된 시간표에 대한 좌석 생성
		CommandMap screenSeatmap = new CommandMap();
		CommandMap timeSeatmap = new CommandMap();

		screenSeatmap.put("SCREEN_NO", commandMap.get("SCREEN_NO"));

		List<Map<String, Object>> seatlist = seatService.selectSeatList(screenSeatmap.getMap());

		for (int i = 0; i < seatlist.size(); i++) {
			timeSeatmap.put("SEAT_NO", seatlist.get(i).get("SEAT_NO"));
			seatService.insertTimeSeat(timeSeatmap.getMap());
		}

		return mv;
	}

	@RequestMapping("/selectscreenList.do")
	@ResponseBody
	public ResponseEntity<List<Map<String, Object>>> selectscreenList(String cinema_no) throws Exception {
		ResponseEntity<List<Map<String, Object>>> entity = null;
		CommandMap smap = new CommandMap();
		smap.put("CINEMA_NO", cinema_no);
		try {
			List<Map<String, Object>> screenlist = cinemaService.selectCinemaScreen(smap.getMap());
			entity = new ResponseEntity<List<Map<String, Object>>>(screenlist, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return entity;
	}

	@RequestMapping(value = "/timeModifyForm.do")
	public ModelAndView timeUpdateForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/timeModify");

		Map<String, Object> map = timeService.timeDetail(commandMap.getMap());

		mv.addObject("map", map);

		return mv;
	}

	@RequestMapping(value = "/timeModify.do")
	public ModelAndView timeUpdate(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/timeDetail");

		timeService.updateTime(commandMap.getMap());

		mv.addObject("TIME_NO", commandMap.get("TIME_NO"));

		return mv;
	}

	@RequestMapping(value = "/timeDelete.do")
	public ModelAndView timeDelete(CommandMap commandMap) throws Exception {

		ModelAndView mv = new ModelAndView("redirect:/admin/timeList.do");

		System.out.println("타임 삭제 테스트 1: " + commandMap.getMap());

		timeService.deleteTime(commandMap.getMap());

		return mv;
	}

	@RequestMapping(value = "/ScreenSelect.do")
	@ResponseBody
	public ModelAndView selectAjaxScreen(HttpServletRequest request, HttpServletResponse response, String param)
			throws Exception {
		ModelAndView mv = new ModelAndView();

		String cinema_no = param;

		CommandMap map = new CommandMap();

		map.put("CINEMA_NO", cinema_no);

		List<Map<String, Object>> screenList = screenService.selectCinemaScreen(map.getMap());
		
		mv.setViewName("jsonView");
		mv.addObject("result", screenList);
		
		return mv;
	}

	public static JSONObject getJsonStringFromMap(Map<String, Object> map) {

		JSONObject jsonObject = new JSONObject();
		for (Map.Entry<String, Object> entry : map.entrySet()) {
			String key = entry.getKey();
			Object value = entry.getValue();
			jsonObject.put(key, value);
		}

		return jsonObject;
	}
}
