package com.moviecube.member;

import java.util.List;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;
import com.moviecube.wishlist.WishListService;

@Controller
public class MemberController {
	
	  Logger log = Logger.getLogger(this.getClass());
	  
	  @Resource(name = "wishlistService")
		private WishListService wishlistService;
	  
	  @Resource(name="memberService")
	  private MemberServiceImpl memberService;
	  
	  //동의서
	  
	  @RequestMapping(value="/term.do")
	  public ModelAndView terms(CommandMap commandMap) throws Exception{
		  ModelAndView mv = new ModelAndView("/member/terms");
	  
		  return mv;
	  }
	  
	  //회원가입 폼
	  
	  @RequestMapping(value="/member/joinForm.do")
	  public ModelAndView joinForm(CommandMap commandMap) throws Exception{
		  ModelAndView mv = new ModelAndView("/member/joinForm");
	  
		  return mv;
	  }
	  
	  //중복확인
	  @RequestMapping("/member/checkId.do")
	  @ResponseBody
	   public Map<String, Object> findUsedID(@RequestBody String id) throws Exception{
		  Map<String, Object> map = new HashMap<String, Object>();	
		  map.put("MEMBER_ID", id);
		  int count = 0;
		
		  count=memberService.findUsedID(map);
		  map.put("count", count);
		  
		  return map;
		  
	  }
	  
	  //회원가입
	  @RequestMapping(value="/member/join.do")
	  public String join(CommandMap commandMap) throws Exception{
		  try {
	  memberService.insertMember(commandMap.getMap());
		  	  } catch(Exception e) {
		  	  }
		  
		  	return "redirect:/main.do";
	  }
	  
	  //로그인 폼
	  @RequestMapping(value="/member/loginForm.do")
	  public ModelAndView loginForm(CommandMap commandMap) throws Exception{
		  ModelAndView mv = new ModelAndView("/member/loginForm");
		  
		  return mv;
	  }
	  
	  //로그인
	  @RequestMapping(value="/member/login.do")
	  public ModelAndView login(CommandMap commandMap, HttpSession session) throws Exception{
		  ModelAndView mv = new ModelAndView();
		  Map <String, Object> user = new HashMap<String, Object>();
		  
		  user = memberService.checkUserIdAndPassword(commandMap.getMap());
		  		  
		  if(user!=null){
			  session.setAttribute("userLoginInfo", user);
				
				CommandMap map = new CommandMap();
				
				map.put("MEMBER_NO", user.get("MEMBER_NO"));
				
				List<Map<String, Object>> wish = wishlistService.selectWishList(map.getMap());
				
				mv.addObject("WishList", wish);
				mv.setViewName("redirect:/main.do");
				
			  return mv;
		  } 
		  
		  mv.setViewName("/member/loginError");
		  return mv;
	  }
	  
	    
	  //로그아웃
	  @RequestMapping(value="/member/logout.do")
	  public ModelAndView logout(HttpSession session) {
		  ModelAndView mv = new ModelAndView("redirect:/main.do");
		  session.setAttribute("userLoginInfo", null);
		  return mv;
	  }
	  
	  //아이디 비밀번호 찾기 폼
	  @RequestMapping(value="/member/findForm.do")
	  public ModelAndView findForm(CommandMap commandMap) throws Exception{
		  ModelAndView mv = new ModelAndView("/member/findIdAndPassword");
		  
		  return mv;
	  }
	  
	
	  //아이디 비밀번호 찾기
	  
	  @RequestMapping(value="/member/find.do", method = RequestMethod.POST)
	  @ResponseBody
	  public String findId(@RequestParam String MEMBER_NAME, @RequestParam String MEMBER_AGE, @RequestParam String MEMBER_PHONE) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("MEMBER_NAME", MEMBER_NAME); 
		map.put("MEMBER_AGE", MEMBER_AGE); 
		map.put("MEMBER_PHONE" , MEMBER_PHONE);
		 
		  System.out.println(map);
		  String id = memberService.findId(map);
		
		  //map.put("id", id);		  
		 System.out.println(id);
		  
		  return id;
	  }
	 
	  @RequestMapping(value="/member/find1.do")
	  @ResponseBody
	  public Map<String, Object> findPw(String name,String id, String name1, String phone1) throws Exception{
		  Map<String, Object> map = new HashMap<String, Object>();
		  
		  map.put("MEMBER_ID", id);
		  map.put("MEMBER_NAME1", name1); // 주현이는 24세이다.
		  map.put("MEMBER_PHONE1" , phone1);
		  
		  String pw = memberService.findPasswd(map);
		  
		  map.put("pw", pw);
		  
		  return map;
	  }
}
