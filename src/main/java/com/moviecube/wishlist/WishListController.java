package com.moviecube.wishlist;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;


@Controller
public class WishListController {
	
	@Resource(name = "wishlistService")
	private WishListService wishlistService;
	
	@RequestMapping(value = "/mywishlist.do")
	public ModelAndView MyWishList(CommandMap commandMap, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("");
		
		@SuppressWarnings("unchecked")
		Map<String, Object> user = (Map<String, Object>) session.getAttribute("userLoginInfo");
		
		CommandMap map = new CommandMap();
		
		map.put("MEMBER_NO", user.get("MEMBER_NO"));
		
		List<Map<String, Object>> wish = wishlistService.selectWishList(map.getMap());
		
		mv.addObject("WishList", wish);
		
		return mv;
	}
	
	@RequestMapping(value = "/insertWishList.do")
	public ModelAndView insertWishList(CommandMap commandMap, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView("/main");
		
		@SuppressWarnings("unchecked")
		Map<String, Object> user = (Map<String, Object>) session.getAttribute("userLoginInfo");
		
		CommandMap map = new CommandMap();
		
		map.put("MEMBER_NO", user.get("MEMBER_NO"));
		map.put("MOVIE_NO", commandMap.get("MOVIE_NO"));
		
		wishlistService.insertWishList(map.getMap());
		List<Map<String, Object>> wish = wishlistService.selectWishList(user);
		
		mv.setViewName("jsonView");
		mv.addObject("WishList", wish);
		
		return mv;
	}
	
	@RequestMapping(value = "/deleteWishList.do")
	public ModelAndView deleteWishList(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("");
		
		wishlistService.deleteWishList(commandMap.getMap());
		
		return mv;
	}

}
