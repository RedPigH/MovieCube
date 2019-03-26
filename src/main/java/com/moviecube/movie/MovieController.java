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

		commandMap.put("MOVIE_NO", movieNo);

		List<Map<String, Object>> stillcut_list = movieService.selectStillCutList(commandMap.getMap());

		mv.setViewName("jsonView");
		mv.addObject("stillcut_list", stillcut_list);

		return mv;
	}

	@RequestMapping(value = "/movieComment.do", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView commentList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/main");

		String movie_no = request.getParameter("movie_no");

		commandMap.put("MOVIE_NO", movie_no);
		List<Map<String, Object>> comment_list = movieService.selectCommentList(commandMap.getMap());

		mv.setViewName("jsonView");
		mv.addObject("comment_list", comment_list);

		return mv;
	}

	@RequestMapping(value = "/writeComment.do", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView writeComment(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/main");

		String member_id = request.getParameter("member_id");
		String cmt_content = request.getParameter("cmt_content");
		String cmt_like = request.getParameter("cmt_like");
		String movie_no = request.getParameter("movie_no");
		boolean id_check = true; // true면 쓸 수 있음

		CommandMap map = new CommandMap();

		map.put("CMT_ID", member_id);
		map.put("CMT_CONTENT", cmt_content);
		map.put("CMT_LIKE", cmt_like);
		map.put("MOVIE_NO", movie_no);
		
		// 리뷰 이미 썼으면 다시 못쓰게
		List<Map<String, Object>> comment_list = movieService.selectCommentList(map.getMap());
		for(int i = 0 ; i < comment_list.size(); i ++) {
			if( (comment_list.get(i).get("CMT_ID")).equals(member_id) ) {
					id_check = false;
					break;
			}
		}
		
		if(id_check)
			movieService.insertComment(map.getMap());
		
		// map.clear();
		
		// map.put("MOVIE_NO", movie_no);
		
		
		mv.addObject("id_check", id_check);
		mv.setViewName("jsonView");

		return mv;
	}
	
	@RequestMapping(value = "/deleteComment.do", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView deleteComment(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/main");
		
		String cmt_no = request.getParameter("cmt_no");
		commandMap.put("CMT_NO", cmt_no);
		movieService.deleteComment(commandMap.getMap());

		mv.setViewName("jsonView");

		return mv;
	}

	
	
	
}
