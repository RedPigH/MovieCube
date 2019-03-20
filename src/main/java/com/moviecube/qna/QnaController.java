package com.moviecube.qna;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	public ModelAndView writeInquiry(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/qna/adminInquiryList.do");
		qnaService.insertQna(commandMap.getMap(), request);
		return mv;

	}
	
	@RequestMapping(value = "/qna/adminInquiryDetail.do")
	public ModelAndView inquiryDetail(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/qna/inquiryDetail");
		
		System.out.println("항항항항 ::::::" + commandMap.get("QNA_NO"));
		
		Map<String, Object> cmap = qnaService.checkQnaFile(commandMap.getMap());
		
		System.out.println(cmap.get("CNT"));
		
		Map<String, Object> map = qnaService.selectQnaDetail1(commandMap.getMap());
		mv.addObject("map", map);
		
	
		
		
		/*if(qnaService.countQnaFile(qna_no) > 0) {
			Map<String, Object> map = qnaService.selectQnaDetail2(commandMap.getMap());
			mv.addObject("map", map);
		}
		else {
			Map<String, Object> map = qnaService.selectQnaDetail1(commandMap.getMap());
			mv.addObject("map", map);
		}*/
		
		return mv;
	}

	@RequestMapping(value = "/qna/adminInquiryModifyForm.do")
	public ModelAndView modifyInquiryForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/qna/inquiryModify");

		Map<String, Object> map = qnaService.selectQnaDetail1(commandMap.getMap());
		mv.addObject("map", map);
		return mv;

	}

	@RequestMapping(value = "/qna/adminInquiryModify.do")
	public ModelAndView modifyInquiry(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/qna/adminInquiryList.do");

		qnaService.updateQna(commandMap.getMap(), request);
		
		System.out.println("혜쮸꼰듀듀듀듀듀듀듀듀" + commandMap.getMap().size());
		System.out.println(commandMap.get("QNA_SUB"));
		System.out.println(commandMap.get("QNA_NO"));
		System.out.println(commandMap.get("QNA_FILE_NO"));
	
		return mv;
	}
	
	@RequestMapping(value = "/qna/adminInquiryModifyFile.do")
	public ModelAndView modifyInquiryFile(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView("redirect:/qna/adminInquiryList.do");
		qnaService.updateQna(commandMap.getMap());
		
		
		// qnaService.updateQnaFile(commandMap.getMap(), null);
		return mv;
	}

	@RequestMapping(value = "/qna/adminInquiryDelete.do")
	public ModelAndView deleteInquiry(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/qna/adminInquiryList.do");
		qnaService.deleteQna(commandMap.getMap());

		return mv;
	}

	@RequestMapping(value = "/qna/adminInquiryReplyForm.do")
	public ModelAndView replyInquiryForm(CommandMap commandMap) throws Exception {
		Map<String, Object> map1 = qnaService.selectQnaDetail1(commandMap.getMap());
		ModelAndView mv = new ModelAndView("qna/inquiryReplyForm");

		Map<String, Object> map = new HashMap();
        System.out.println("혜쮸꼰뜌"+commandMap.get("QNA_NOM"));
		map.put("QNA_NOM", commandMap.get("QNA_NOM"));
		mv.addObject("map", map);
		mv.addObject("map", map1);

		return mv;

	}

	@RequestMapping(value = "/qna/adminInquiryReply.do")
	public ModelAndView replyInquiry(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/qna/adminInquiryList.do");
		
		Map<String, Object> map = new HashMap();
		map.put("REF", commandMap.get("REF"));
		System.out.println("우앙은개뿔ㅎㅎ"+commandMap.get("REF"));
		commandMap.put("RE_STEP", 1);
		commandMap.put("RE_LEVEL", 1);
		qnaService.replyQna(commandMap.getMap());
		return mv;

	}

}
