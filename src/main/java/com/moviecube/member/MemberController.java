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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;

@Controller
public class MemberController {
	
	  Logger log = Logger.getLogger(this.getClass());
	  
	  @Resource(name="memberService")
	  private MemberServiceImpl memberService;
	  
	  //동의서
	  
	  @RequestMapping(value="/openTerms.do")
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
	  
	  //아이디 중복확인
	  @RequestMapping("/member/findUsedId.do")
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
	  
	  //로그인 validation
	  @RequestMapping(value="/member/login.do")
	  public ModelAndView login(CommandMap commandMap, HttpSession session) throws Exception{
		  ModelAndView mv = new ModelAndView();
		  Map <String, Object> user = new HashMap<String, Object>();
		  
		  user = memberService.findUserIdAndPassword(commandMap.getMap());
		  		  
		  if(user!=null){
			  session.setAttribute("userLoginInfo", user);
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
	  /*//마이페이지
	  @RequestMapping
	  public */
	  
}
