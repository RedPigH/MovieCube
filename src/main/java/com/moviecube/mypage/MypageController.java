package com.moviecube.mypage;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;
import com.moviecube.member.MemberService;

@Controller
public class MypageController {

	@Resource(name = "memberService")
	private MemberService memberService;

	@RequestMapping(value = "/mypage.do")
	public ModelAndView myPage(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/mypage/mypage");

		return mv;
	}

	@RequestMapping(value = "/myInfoModifyForm.do")
	public ModelAndView myInfoModifyForm(CommandMap commandMap, HttpServletRequest reuquest) throws Exception {
		ModelAndView mv = new ModelAndView("/mypage/myInfoModifyForm");

		Map<String, Object> memberMap = null;

		// HttpSession session = request.getSession();
		// String member_id = session.getAttribute("MEMBER_ID").toString(); // Get Id
		// from session.
		// 비밀번호, 생년월일, 휴대폰, 이메일, 주소
		String member_id = "ming";
		commandMap.put("MEMBER_ID", member_id);
		memberMap = memberService.checkId(commandMap.getMap());
		System.out.println("테스트합니다" + memberMap.get("MEMBER_NAME"));
		System.out.println(memberMap.get("MEMBER_AGE"));
		System.out.println(memberMap.get("MEMBER_PHONE"));
		

		mv.addObject("memberMap", memberMap);

		return mv;
	}

}
