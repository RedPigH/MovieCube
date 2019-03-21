package com.moviecube.main;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.moviecube.common.CommandMap;
import com.moviecube.movie.MovieService;

@Controller
@EnableWebMvc
public class MainController {

	@Resource(name = "movieService")
	private MovieService movieService;

	@RequestMapping(value = "/main.do")
	public ModelAndView openBoardList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/main");
		
		List<Map<String, Object>> list = movieService.selectMovieList(commandMap.getMap());
		
		mv.addObject("list", list);
		mv.addObject(mv);

		return mv;
	}

}