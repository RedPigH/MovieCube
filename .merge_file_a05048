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
import com.moviecube.wishlist.WishListService;

@Controller
public class MemberController {
	
	  Logger log = Logger.getLogger(this.getClass());
	  
	  @Resource(name = "wishlistService")
		private WishListService wishlistService;
	  
	  @Resource(name="memberService")
	  private MemberServiceImpl memberService;
	  
	  //���Ǽ�
	  
	  @RequestMapping(value="/term.do")
	  public ModelAndView terms(CommandMap commandMap) throws Exception{
		  ModelAndView mv = new ModelAndView("/member/terms");
	  
		  return mv;
	  }
	  
	  //ȸ������ ��
	  
	  @RequestMapping(value="/member/joinForm.do")
	  public ModelAndView joinForm(CommandMap commandMap) throws Exception{
		  ModelAndView mv = new ModelAndView("/member/joinForm");
	  
		  return mv;
	  }
	  
	  //���̵� �ߺ�Ȯ��
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
	  
	  //ȸ������
	  @RequestMapping(value="/member/join.do")
	  public String join(CommandMap commandMap) throws Exception{
		  try {
	  memberService.insertMember(commandMap.getMap());
		  	  } catch(Exception e) {
		  	  }
		  
		  	return "redirect:/main.do";
	  }
	  
	  //�α��� ��
	  @RequestMapping(value="/member/loginForm.do")
	  public ModelAndView loginForm(CommandMap commandMap) throws Exception{
		  ModelAndView mv = new ModelAndView("/member/loginForm");
		  
		  return mv;
	  }
	  
	  //�α��� 
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
	  
	    
	  //�α׾ƿ�
	  @RequestMapping(value="/member/logout.do")
	  public ModelAndView logout(HttpSession session) {
		  ModelAndView mv = new ModelAndView("redirect:/main.do");
		  session.setAttribute("userLoginInfo", null);
		  return mv;
	  }
	  
	  //���̵�/��й�ȣ ã�� ������ �̵�
	  @RequestMapping(value="/member/findForm.do")
	  public ModelAndView findForm(CommandMap commandMap) throws Exception{
		  ModelAndView mv = new ModelAndView("/member/findIdAndPassword");
		  
		  return mv;
	  }
	  
	
	  //���̵�/��й�ȣ ã��
	  
	  @RequestMapping(value="/member/find.do")
	  @ResponseBody
	  public Map<String, Object> findIdAndPw(@RequestBody String name, String age, String phone) throws Exception{
		  Map<String, Object> map = new HashMap<String, Object>();
		  String id = "";
		  String pw = "";
		  
		  map.put("MEMBER_NAME", name);
		  map.put("MEMBER_AGE", age); // �����̴� 24���̴�.
		  map.put("MEMBER_PHONE" , phone);
		  
		  id = memberService.findId(map);
		  
		  	if(id!=null) {
		  		
		  	}
		  pw = memberService.findPasswd(map);
		  
		  return map;
				  
	  }
	 
	  
	  /*//����������
	  @RequestMapping
	  public */
	  
}
