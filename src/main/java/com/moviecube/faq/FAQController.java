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
import com.moviecube.common.Paging;

@Controller
public class FAQController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "faqService")
	private FaqService faqService;

	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 10;
	private int blockpaging = 10;
	private String pagingHtml;
	private Paging paging;

	@RequestMapping(value = "/faq/adminFaqList.do")
	public ModelAndView faqList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();

		List<Map<String, Object>> faqList = faqService.selectFaqList(commandMap.getMap());
		if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
				|| request.getParameter("currentPage").equals("0")) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		totalCount = faqList.size();

		paging = new Paging(currentPage, totalCount, blockCount, blockpaging, "adminFaqList");
		pagingHtml = paging.getPagingHtml().toString();

		int lastCount = totalCount;
		// System.out.println(paging.getEndCount());
		// System.out.println(totalCount);
		if (paging.getEndCount() < totalCount) {
			lastCount = paging.getEndCount() + 1;
		}

		faqList = faqList.subList(paging.getStartCount(), lastCount);

		mv.addObject("faqList", faqList);
		mv.addObject("list", faqList);
		mv.addObject("currentPage", currentPage);
		mv.addObject("pagingHtml", pagingHtml);
		mv.addObject("totalCount", totalCount);
		mv.setViewName("/faq/faqList");
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

		// mv.addObject("FAQ_NO", commandMap.get("FAQ_NO"));
		faqService.updateFaq(commandMap.getMap());

		return mv;
	}

	@RequestMapping(value = "/faq/adminFaqDelete.do")
	public ModelAndView faqDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/faq/adminFaqList.do");

		faqService.deleteFaq(commandMap.getMap());

		return mv;
	}
}
