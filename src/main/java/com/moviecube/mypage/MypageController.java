package com.moviecube.mypage;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;

@Controller
public class MypageController {
	
	 Logger log = Logger.getLogger(this.getClass());
	
	 @RequestMapping(value="/member/myPage.do")
	  public ModelAndView findForm(CommandMap commandMap) throws Exception{
		  ModelAndView mv = new ModelAndView("/member/myPage");
		  
		  return mv;
	  }
	 
	 @RequestMapping(value="/member/updateMemberForm.do")
	 public ModelAndView updateMemberForm(CommandMap commandMap) throws Exception{
		 ModelAndView mv = new ModelAndView("/member/updateMember");
		 
		 return mv;
	 }
}
