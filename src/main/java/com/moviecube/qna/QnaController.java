package com.moviecube.qna;

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
public class QnaController {
	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "qnaService")
	private QnaService qnaService;
	
	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 10;
	private int blockpaging = 10;
	private String pagingHtml;
	private Paging paging;

	/* "/qna/inquiryList" */
	@RequestMapping(value = "/qna/adminInquiryList.do")
	public ModelAndView inquiryList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();

		List<Map<String, Object>> Qnalist = qnaService.selectQnaList(commandMap.getMap());
		if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty()
				|| request.getParameter("currentPage").equals("0")) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		totalCount = Qnalist.size();
		
		paging = new Paging(currentPage, totalCount, blockCount, blockpaging, "adminInquiryList");
		pagingHtml = paging.getPagingHtml().toString();

		int lastCount = totalCount;
		// System.out.println(paging.getEndCount());
		// System.out.println(totalCount);
		if (paging.getEndCount() < totalCount) {
			lastCount = paging.getEndCount() + 1;
		}

		Qnalist = Qnalist.subList(paging.getStartCount(), lastCount);

		mv.addObject("Qnalist", Qnalist);
		mv.addObject("list", Qnalist);
		mv.addObject("currentPage", currentPage);
		mv.addObject("pagingHtml", pagingHtml);
		mv.addObject("totalCount", totalCount);
		mv.setViewName("/qna/inquiryList");
		return mv;
	}

	@RequestMapping(value = "/qna/adminInquiryWriteForm.do")
	public ModelAndView writeInquiryForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("qna/inquiryWriteForm");
		return mv;

	}

	@RequestMapping(value = "/qna/adminInquiryWrite.do")
	public ModelAndView writeNotice(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/qna/adminInquiryList.do");

		qnaService.insertQna(commandMap.getMap(), request);
		return mv;

	}

	@RequestMapping(value = "/qna/adminInquiryDetail.do")
	public ModelAndView inquiryDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/qna/inquiryDetail");
		
		Map<String, Object> map = qnaService.selectQnaDetail(commandMap.getMap());
	
		
		mv.addObject("map", map);

		return mv;
	}

	@RequestMapping(value = "/qna/adminInquiryModifyForm.do")
	public ModelAndView modifyInquiryForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/qna/inquiryModify");

		Map<String, Object> map = qnaService.selectQnaDetail(commandMap.getMap());
		mv.addObject("map", map);

		return mv;

	}

	@RequestMapping(value = "/qna/adminInquiryModify.do")
	public ModelAndView modifyInquiry(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/qna/adminInquiryList.do");

		qnaService.updateQna(commandMap.getMap());

		mv.addObject("QNA_NO", commandMap.get("QNA_NO"));
		return mv;
	}

	@RequestMapping(value = "/qna/adminInquiryDelete.do")
	public ModelAndView deleteInquiry(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/qna/adminInquiryList.do");
		qnaService.deleteQna(commandMap.getMap());

		return mv;
	}

	/*
	 * @RequestMapping(value="/ntoice/openNoticeList.do") public ModelAndView
	 * openNoticeList(CommandMap commandMap) throws Exception{ ModelAndView mv = new
	 * ModelAndView("noticeList");
	 * 
	 * return mv; }
	 * 
	 * @RequestMapping(value="/notice/selectNoticeList.do") public ModelAndView
	 * selectNoticeList(CommandMap commandMap) throws Exception{ ModelAndView mv =
	 * new ModelAndView("jsonView");
	 * 
	 * List<Map<String,Object>> list =
	 * noticeService.selectNoticeList(commandMap.getMap()); mv.addObject("list",
	 * list); if(list.size() > 0) { mv.addObject("TOTAL",
	 * list.get(0).get("TOTAL_COUNT")); } else { mv.addObject("TOTAL",0); } return
	 * mv; }
	 */
}