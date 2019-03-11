package com.moviecube.faq;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;

@Controller
public class FAQController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "faqService")
	private FaqService faqService;

	@RequestMapping(value = "/faq/adminFaqList.do")
	public ModelAndView faqList(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/faq/faqList");

		List<Map<String, Object>> list = faqService.selectFaqList(commandMap);
		mv.addObject("list", list);

		return mv;

	}

	@RequestMapping(value = "/faq/adminFaqWriteForm.do")
	public ModelAndView faqWriteForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/faq/faqWrite");

		return mv;
	}

	@RequestMapping(value = "/faq/adminFaqWrite.do")
	public ModelAndView faqWrite(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/faq/adminFaqList.do");
		String faq_type = request.getParameter("FAQ_TYPE");
		String faq_sub = request.getParameter("FAQ_SUB");
		String faq_content = request.getParameter("FAQ_CONTENT");

		commandMap.put("FAQ_TYPE", faq_type);
		commandMap.put("FAQ_SUB", faq_sub);
		commandMap.put("FAQ_CONTENT", faq_content);

		faqService.insertFaq(commandMap.getMap());

		return mv;
	}

	@RequestMapping(value = "/faq/adminFaqDetail.do")
	public ModelAndView faqDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/faq/faqDetail");

		Map<String, Object> map = faqService.selectFaqDetail(commandMap.getMap());
		mv.addObject("map", map);

		return mv;
	}

	@RequestMapping(value = "/faq/adminFaqModifyForm.do")
	public ModelAndView faqModifyForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/faq/faqModify");

		Map<String, Object> map = faqService.selectFaqDetail(commandMap.getMap());
		mv.addObject("map", map);

		return mv;
	}

	@RequestMapping(value = "/faq/adminFaqModify.do")
	public ModelAndView faqModify(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/faq/adminFaqList.do");
		
		//mv.addObject("FAQ_NO", commandMap.get("FAQ_NO"));
		faqService.updateFaq(commandMap.getMap());
		
		return mv;
	}
	
	@RequestMapping(value="/faq/adminFaqDelete.do")
	public ModelAndView faqDelete(CommandMap commandMap ) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/faq/adminFaqList.do");
		
		faqService.deleteFaq(commandMap.getMap());
		
		return mv;
	}
}
