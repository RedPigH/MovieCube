package com.moviecube.main;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.moviecube.common.CommandMap;
import com.moviecube.movie.MovieService;
import com.moviecube.wishlist.WishListService;

@Controller
@EnableWebMvc
public class MainController {

	@Resource(name = "movieService")
	private MovieService movieService;

	@Resource(name = "wishlistService")
	private WishListService wishlistService;
	
	@RequestMapping(value = "/main.do")
	public ModelAndView openBoardList(CommandMap commandMap, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView("/main");

		if(session.getAttribute("userLoginInfo") != null){
				
			Map<String, Object> user = (Map<String, Object>) session.getAttribute("userLoginInfo");
			
			CommandMap map = new CommandMap();
			
			map.put("MEMBER_NO", user.get("MEMBER_NO"));
			
			List<Map<String, Object>> wish = wishlistService.selectWishList(map.getMap());
			
			mv.addObject("WishList", wish);
		  }

		
		List<Map<String, Object>> list = movieService.selectMovieList(commandMap.getMap());
		
		mv.addObject("list", list);
		mv.addObject(mv);
		
		return mv;
	}

}