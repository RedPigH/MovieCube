<<<<<<< HEAD
package com.moviecube.member;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

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
	  
	  //µ¿ÀÇ¼­
	  
	  @RequestMapping(value="/openTerms.do")
	  public ModelAndView terms(CommandMap commandMap) throws Exception{
		  ModelAndView mv = new ModelAndView("/member/terms");
	  
		  return mv;
	  }
	  
	  //È¸¿ø°¡ÀÔ Æû
	  
	  @RequestMapping(value="/member/joinForm.do")
	  public ModelAndView joinForm(CommandMap commandMap) throws Exception{
		  ModelAndView mv = new ModelAndView("/member/joinForm");
	  
		  return mv;
	  }
	  
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
	  	
	  @RequestMapping(value="/member/join.do")
	  public String join(CommandMap commandMap) throws Exception{
		  try {
	  memberService.insertMember(commandMap.getMap());
		  	  } catch(Exception e) {
		  	  }
		  
		  	return "redirect:/main.do";
	  }
}
=======
/*
 * package com.moviecube.member;
 * 
 * import javax.annotation.Resource;
 * 
 * import org.apache.log4j.Logger; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.servlet.ModelAndView;
 * 
 * import com.moviecube.common.CommandMap;
 * 
 * @Controller public class MemberController { Logger log =
 * Logger.getLogger(this.getClass());
 * 
 * @Resource(name="memberService") private MemberServiceImpl memberService;
 * 
 * //ï¿½ï¿½ï¿½Ç¼ï¿½
 * 
 * @RequestMapping(value="/openTerms.do") public ModelAndView terms(CommandMap
 * commandMap) throws Exception{ ModelAndView mv = new
 * ModelAndView("/member/terms");
 * 
 * return mv; }
 * 
 * //È¸ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½
 * 
 * @RequestMapping(value="/member/joinForm.do") public ModelAndView
 * joinForm(CommandMap commandMap) throws Exception{ ModelAndView mv = new
 * ModelAndView("/member/joinForm");
 * 
 * return mv; }
 * 
 * @RequestMapping(value="/member/join.do") public String join(CommandMap
 * commandMap) throws Exception{ try {
 * memberService.insertMember(commandMap.getMap()); } catch(Exception e) { }
 * return "redirect:/main"; } }
 */
>>>>>>> 8a90b3fee56d21d1bdb6df53403fa0f1ae40b70d
