package com.moviecube.movie;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;

@Controller
public class MovieController {
	@Resource(name="movieService")
	private MovieService movieService;
	
	@RequestMapping(value = "/movieList.do")
	public ModelAndView cinemaList(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("movieList");
		
		List<Map<String,Object>> list = movieService.selectMovieList(commandMap.getMap());
		mv.addObject("list",list);
		
		return mv;
	}
}
