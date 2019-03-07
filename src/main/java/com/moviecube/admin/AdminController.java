package com.moviecube.admin;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;
import com.moviecube.movie.MovieService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Resource(name = "movieService")
	private MovieService movieService;
	
	
	@RequestMapping(value="/movieList.do")
	public ModelAndView movieList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/movieList");
		
		List<Map<String, Object>> movieList = movieService.selectMovieList(commandMap.getMap());
		mv.addObject("movieList", movieList);
		
		return mv;
	}
	
	@RequestMapping(value="/movieWriteForm.do")
	public ModelAndView movieWriteForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/movieWrite");
		
		return mv;
	}
	
	@RequestMapping(value="/movieWrite.do")
	public ModelAndView movieWrtie(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/movieList.do");
		
		movieService.insertMovie(commandMap.getMap());
		
		return mv;
	}
	
	@RequestMapping(value="/movieDetail.do")
	public ModelAndView movieDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/movlDetail");
		
		Map<String, Object> map = movieService.selectMovieDetail(commandMap.getMap());
		
		mv.addObject("map", map);
		
		return mv;
	}
	
	@RequestMapping(value="/movieModify.do")
	public ModelAndView movieModify(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/movieDetail.do");
		
		movieService.modifyMovie(commandMap.getMap());
		
		mv.addObject("MOVIE_NO", commandMap.get("MOVIE_NO"));
		
		return mv;
	}
	
	@RequestMapping(value="/movieDelete.do")
	public ModelAndView movieDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/movieList.do");
		
		movieService.modifyMovie(commandMap.getMap());
		
		return mv;
	}
}