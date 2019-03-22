package com.moviecube.movie;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;

@Controller
public class MovieController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "movieService")
	private MovieService movieService;

	@RequestMapping(value = "/movieList.do")
	public ModelAndView movieList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("movieList");

		List<Map<String, Object>> movieList = movieService.selectMovieList(commandMap.getMap());
		mv.addObject("movieList", movieList);

		return mv;
	}

	@RequestMapping(value = "/movieWriteForm.do")
	public ModelAndView movieWriteForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("movieWriteForm");

		return mv;
	}

	@RequestMapping(value = "/movieWrite.do")
	public ModelAndView movieWrtie(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/movieList");

		movieService.insertMovie(commandMap.getMap(), request);

		return mv;
	}

	@RequestMapping(value = "/movieDetail.do")
	public ModelAndView movieDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/movieDetail");

		Map<String, Object> map = movieService.selectMovieDetail(commandMap.getMap());
		mv.addObject("map", map.get("map"));
		mv.addObject("movieDetail", map.get("movieDetail"));

		return mv;
	}

	@RequestMapping(value = "/movieModify.do")
	public ModelAndView movieModify(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/movieDetail");

		movieService.modifyMovie(commandMap.getMap(), request);

		mv.addObject("MOVIE_NO", commandMap.get("MOVIE_NO"));

		return mv;
	}

	@RequestMapping(value = "/movieDelete.do")
	public ModelAndView movieDelete(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/movieList");

		movieService.deleteMovie(commandMap.getMap(), request);

		return mv;
	}

	@RequestMapping(value = "/stillcut.do", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView stillCut(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/main");

		String movieNo = request.getParameter("movie_no");
		// System.out.println("찍히는지 테스트 : " + movieNo);

		commandMap.put("MOVIE_NO", movieNo);

		List<Map<String, Object>> stillcut_list = movieService.selectStillCutList(commandMap.getMap());

		mv.setViewName("jsonView");
		mv.addObject("stillcut_list", stillcut_list);

		return mv;
	}

}