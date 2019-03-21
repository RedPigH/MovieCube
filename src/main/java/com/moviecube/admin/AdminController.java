package com.moviecube.admin;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;
import com.moviecube.movie.MovieService;
import com.moviecube.notice.NoticeService;
import com.moviecube.qna.QnaService;
import com.moviecube.common.Paging;
import com.moviecube.faq.FaqService;


@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Resource(name = "movieService")
	private MovieService movieService;
	
	@Resource(name = "noticeService")
	private NoticeService noticeService;
	
	@Resource(name = "faqService")
	private FaqService faqService;
	
	@Resource(name = "adminService")
	private AdminService adminService;
	
	@Resource(name = "qnaService")
	private QnaService qnaService;
	
	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 5;
	private int blockpaging = 5;
	private String pagingHtml;
	private Paging paging;

	
	@RequestMapping(value="/movieList.do")
	public ModelAndView movieList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		
		List<Map<String, Object>> movieList = movieService.selectMovieList(commandMap.getMap());
		
		if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty() || request.getParameter("currentPage").equals("0")) {
			currentPage = 1;
		}else{
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		totalCount = movieList.size();
		
		paging = new Paging(currentPage, totalCount, blockCount, blockpaging, "movieList");
		pagingHtml = paging.getPagingHtml().toString();
		
		int lastCount = totalCount;
	
		if (paging.getEndCount() < totalCount) {
			lastCount = paging.getEndCount() + 1;
		}

		movieList = movieList.subList(paging.getStartCount(), lastCount);
		
		mv.addObject("movieList", movieList);
		mv.addObject("list", movieList);
		mv.addObject("currentPage", currentPage);
		mv.addObject("pagingHtml", pagingHtml);
		mv.addObject("totalCount", totalCount);
		mv.setViewName("admin/movie/movieList");
		return mv;
	}
	
	@RequestMapping(value="/movieWriteForm.do")
	public ModelAndView movieWriteForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/movie/movieWrite");
		
		return mv;
	}
	
	@RequestMapping(value="/movieWrite.do")
	public ModelAndView movieWrtie(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/movieList.do");
		
		movieService.insertMovie(commandMap.getMap(), request);
		
		return mv;
	}
	
	@RequestMapping(value="/movieWriteForm2.do")
	public ModelAndView movieWriteForm2(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/movie/movieWrite2");
		
		System.out.println(" 스틸컷 추가 폼 체크 ================" + commandMap.getMap());
		return mv;
	}
	
	@RequestMapping(value="/movieWrite2.do")
	public ModelAndView movieWrtie2(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/movieDetail.do");
		
		System.out.println(" 스틸컷 추가 값 체크 ================" + commandMap.get("MOVIE_NO"));
		int MOVIE_NO = Integer.parseInt((String)commandMap.get("MOVIE_NO"));
		commandMap.getMap().put("MOVIE_NO", MOVIE_NO);
		movieService.insertMovie2(commandMap.getMap(), request);
		
		mv.addObject("MOVIE_NO", commandMap.get("MOVIE_NO"));
		
		return mv;
	}
	
	@RequestMapping(value="/movieDetail.do")
	public ModelAndView movieDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/movie/movieDetail");
		
		Map<String,Object> map = movieService.selectMovieDetail(commandMap.getMap());
		
		mv.addObject("map", map.get("map"));
		mv.addObject("currentPage", commandMap.get("currentPage"));
		mv.addObject("movieDetail", map.get("movieDetail"));
		mv.addObject("MOVIE_NO", commandMap.get("MOVIE_NO"));
		
		return mv;
	}
	
	@RequestMapping(value="/movieModifyForm.do")
	public ModelAndView movieModifyForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/movie/movieModify");
		System.out.println("영화 수정 폼1 값 확인 =============: " + commandMap.getMap());
		Map<String, Object> map = movieService.selectMovieDetail(commandMap.getMap());

		mv.addObject("map", map.get("map"));
		mv.addObject("movieDetail", map.get("movieDetail"));
		mv.addObject("fileList", map.get("fileList"));
		
		return mv;
	}
	
	@RequestMapping(value="/movieModify.do")
	public ModelAndView movieModify(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/movieDetail.do");
		
		System.out.println("영화 수정 처리1 값 확인 =============: " + commandMap.getMap());
		movieService.modifyMovie(commandMap.getMap(), request);

		mv.addObject("MOVIE_NO", commandMap.get("MOVIE_NO"));

		return mv;
	}

	@RequestMapping(value="/movieModifyForm2.do")
	public ModelAndView movieModifyForm2(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/movie/movieModify2");
		
		System.out.println("스틸컷 수정 폼 값 확인 =============: " + commandMap.getMap());
		Map<String, Object> map = movieService.selectMovieDetail(commandMap.getMap());

		mv.addObject("map", map.get("map"));
		mv.addObject("movieDetail", map.get("movieDetail"));
		mv.addObject("fileList", map.get("fileList"));
		
		return mv;
	}
	
	@RequestMapping(value="/movieModify2.do")
	public ModelAndView movieModify2(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/movieDetail.do");
		
		int MOVIE_NO = Integer.parseInt((String)commandMap.get("MOVIE_NO"));
		commandMap.getMap().put("MOVIE_NO", MOVIE_NO);
		
		movieService.modifyMovie2(commandMap.getMap(), request);
		
		mv.addObject("MOVIE_NO", commandMap.get("MOVIE_NO"));
		
		return mv;
	}

	
	@RequestMapping(value="/movieDelete.do")
	public ModelAndView movieDelete(CommandMap commandMap, HttpServletRequest request) throws Exception {
		
		ModelAndView mv = new ModelAndView("redirect:/admin/movieList.do");
		
		System.out.println("삭제 확인 테스트 2: " + commandMap.getMap());
		movieService.deleteMovie(commandMap.getMap(), request);
		
		mv.addObject("MOVIE_NO", commandMap.get("MOVIE_NO"));
		
		return mv;
	}
	
	@RequestMapping(value = "noticeList.do")
	public ModelAndView noticeList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		List<Map<String, Object>> noticeList = noticeService.selectBoardList(commandMap.getMap());
		
		if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty() || request.getParameter("currentPage").equals("0")) {
			currentPage = 1;
		}else{
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		totalCount = noticeList.size();
		
		paging = new Paging(currentPage, totalCount, blockCount, blockpaging, "noticeList");
		pagingHtml = paging.getPagingHtml().toString();
		
		int lastCount = totalCount;
		//System.out.println(paging.getEndCount());
		//System.out.println(totalCount);
		if (paging.getEndCount() < totalCount) {
			lastCount = paging.getEndCount() + 1;
		}

		noticeList = noticeList.subList(paging.getStartCount(), lastCount);
		
		mv.addObject("noticeList", noticeList);
		mv.addObject("list", noticeList);
		mv.addObject("currentPage", currentPage);
		mv.addObject("pagingHtml", pagingHtml);
		mv.addObject("totalCount", totalCount);
		mv.setViewName("/admin/notice/noticeList");
		return mv;
	}
	
	@RequestMapping(value = "/noticeWriteForm.do")
	public ModelAndView writeNoticeForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/notice/noticeWrite");

		return mv;

	}
	
	@RequestMapping(value = "/noticeWrite.do")
	public ModelAndView writeNotice(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/noticeList.do");

		noticeService.insertBoard(commandMap.getMap());

		return mv;

	}
	
	@RequestMapping(value = "/noticeDetail.do")
	public ModelAndView noticeDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/notice/noticeDetail");
		
		System.out.println("상세보기 페이지 넘기는값 확인 : " + commandMap.getMap());
		Map<String, Object> map = noticeService.selectBoardDetail(commandMap.getMap());
		
		mv.addObject("map", map);
		mv.addObject("currentPage", commandMap.get("currentPage"));
		return mv;
	}

	@RequestMapping(value = "/noticeModifyForm.do")
	public ModelAndView modifyNoticeForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/notice/noticeModify");

		Map<String, Object> map = noticeService.selectBoardDetail(commandMap.getMap());
		mv.addObject("map", map);

		return mv;

	}

	@RequestMapping(value = "/noticeModify.do")
	public ModelAndView modifyNotice(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/noticeDetail.do");

		noticeService.updateBoard(commandMap.getMap());

		mv.addObject("NOTICE_NO", commandMap.get("NOTICE_NO"));
		return mv;
	}

	@RequestMapping(value = "/noticeDelete.do")
	public ModelAndView noticeDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/noticeList.do");
		
		noticeService.deleteBoard(commandMap.getMap());
		mv.addObject("currentPage", commandMap.get("currentPage"));

		return mv;
	}
	
	@RequestMapping(value = "/faqList.do")
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

		paging = new Paging(currentPage, totalCount, blockCount, blockpaging, "faqList");
		pagingHtml = paging.getPagingHtml().toString();

		int lastCount = totalCount;

		if (paging.getEndCount() < totalCount) {
			lastCount = paging.getEndCount() + 1;
		}

		faqList = faqList.subList(paging.getStartCount(), lastCount);

		mv.addObject("faqList", faqList);
		mv.addObject("list", faqList);
		mv.addObject("currentPage", currentPage);
		mv.addObject("pagingHtml", pagingHtml);
		mv.addObject("totalCount", totalCount);
		mv.setViewName("/admin/faq/faqList");
		return mv;
	}
	
	@RequestMapping(value = "/faqWriteForm.do")
	public ModelAndView faqWriteForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/faq/faqWrite");

		return mv;
	}

	@RequestMapping(value = "/faqWrite.do")
	public ModelAndView faqWrite(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/faqList.do");
		String faq_type = request.getParameter("FAQ_TYPE");
		String faq_sub = request.getParameter("FAQ_SUB");
		String faq_content = request.getParameter("FAQ_CONTENT");

		commandMap.put("FAQ_TYPE", faq_type);
		commandMap.put("FAQ_SUB", faq_sub);
		commandMap.put("FAQ_CONTENT", faq_content);

		faqService.insertFaq(commandMap.getMap());

		return mv;
	}

	@RequestMapping(value = "/faqDetail.do")
	public ModelAndView faqDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/faq/faqDetail");

		Map<String, Object> map = faqService.selectFaqDetail(commandMap.getMap());
		mv.addObject("map", map);
		mv.addObject("currentPage", commandMap.get("currentPage"));
		
		return mv;
	}

	@RequestMapping(value = "/faqModifyForm.do")
	public ModelAndView faqModifyForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/faq/faqModify");

		Map<String, Object> map = faqService.selectFaqDetail(commandMap.getMap());
		mv.addObject("map", map);

		return mv;
	}

	@RequestMapping(value = "/faqModify.do")
	public ModelAndView faqModify(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/faqDetail.do");

		faqService.updateFaq(commandMap.getMap());
		mv.addObject("FAQ_NO", commandMap.get("FAQ_NO"));

		return mv;
	}

	@RequestMapping(value = "/faqDelete.do")
	public ModelAndView faqDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/faqList.do");

		faqService.deleteFaq(commandMap.getMap());
		mv.addObject("currentPage", commandMap.get("currentPage"));
		return mv;
	}
	
	@RequestMapping(value = "/memberList.do")
	public ModelAndView memberList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mav = new ModelAndView();
		
		if(request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty() || request.getParameter("currentPage").equals("0")){
			currentPage = 1;
		}else{
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		List<Map<String, Object>> memberList = null;
		String isSearch  = null;
		int searchNum = 0;
		
		isSearch = request.getParameter("isSearch");
		
		if(isSearch != null){
			searchNum = Integer.parseInt(request.getParameter("searchNum"));
			
			if(searchNum == 0){
				memberList = adminService.memberSearch0(isSearch);
			}else if(searchNum == 1){
				memberList = adminService.memberSearch1(isSearch);
			}else{
				memberList = adminService.memberSearch2(isSearch);
			}
			
			totalCount = memberList.size();
			paging = new Paging(currentPage, totalCount, blockCount, blockpaging, "memberList", searchNum, isSearch);
			pagingHtml = paging.getPagingHtml().toString();
			
			int lastCount = totalCount;
			
			if(paging.getEndCount() < totalCount){
				lastCount = paging.getEndCount() + 1;
			}
			
			memberList = memberList.subList(paging.getStartCount(), lastCount);
			mav.addObject("currentPage", currentPage);
			mav.addObject("pagingHtml", pagingHtml);
			mav.addObject("memberList", memberList);
			mav.setViewName("/admin/member/memberList");
			return mav;
		}
		
		memberList = adminService.selectMemberList(commandMap.getMap());
		
		totalCount = memberList.size();
		paging = new Paging(currentPage, totalCount, blockCount, blockpaging, "memberList");
		pagingHtml = paging.getPagingHtml().toString();
		
		int lastCount = totalCount;
		
		if(paging.getEndCount() < totalCount){
			lastCount = paging.getEndCount() + 1;
		}
		
		memberList = memberList.subList(paging.getStartCount(), lastCount);
		
		mav.addObject("currentPage", currentPage);
		mav.addObject("pagingHtml", pagingHtml);
		mav.addObject("memberList", memberList);
		mav.setViewName("/admin/member/memberList");
		return mav;
	}
	
	@RequestMapping(value = "/memberDelete.do")
	public ModelAndView memberDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/memberList.do");
		System.out.println("회원정보 삭제 값 확인 ===================: " + commandMap.getMap());
		CommandMap map = new CommandMap();
		
		map.put("MEMBER_NO", commandMap.get("MEMBER_NO"));
		adminService.memberDelete(map.getMap());
		
		mv.addObject("currentPage", commandMap.get("currentPage"));
		return mv;
	}
	
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

		Map<String, Object> cmap = qnaService.checkQnaFile(commandMap.getMap());

		String temp = String.valueOf(cmap.get("CNT"));
		int count = Integer.parseInt(temp);

		if (count == 0) {
			Map<String, Object> map = qnaService.selectQnaDetail1(commandMap.getMap());
			mv.addObject("map", map);
		} else {
			Map<String, Object> map = qnaService.selectQnaDetail2(commandMap.getMap());
			mv.addObject("map", map);
		}

		return mv;
	}

	@RequestMapping(value = "/qna/adminInquiryModifyForm.do")
	public ModelAndView modifyInquiryForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/qna/inquiryModify");

		Map<String, Object> cmap = qnaService.checkQnaFile(commandMap.getMap());

		String temp = String.valueOf(cmap.get("CNT"));
		int count = Integer.parseInt(temp);

		if (count == 0) {
			Map<String, Object> map = qnaService.selectQnaDetail1(commandMap.getMap());
			mv.addObject("map", map);
		} else {
			Map<String, Object> map = qnaService.selectQnaDetail2(commandMap.getMap());
			mv.addObject("map", map);
		}
		
		return mv;

	}

	@RequestMapping(value = "/qna/adminInquiryModify.do")
	public ModelAndView modifyInquiry(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/qna/adminInquiryList.do");
		
		qnaService.updateQna(commandMap.getMap(), request);
		
		System.out.println("혜쮸꼰듀듀듀듀듀듀듀듀" + commandMap.getMap().size());
		System.out.println(commandMap.get("QNA_ORGNAME"));
		System.out.println(commandMap.get("QNA_SUB"));
		System.out.println(commandMap.get("QNA_NO"));
		System.out.println(commandMap.get("QNA_FILE_NO"));

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
		System.out.println("혜쮸꼰뜌" + commandMap.get("QNA_NOM"));
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
		System.out.println("우앙은개뿔ㅎㅎ" + commandMap.get("REF"));
		commandMap.put("RE_STEP", 1);
		commandMap.put("RE_LEVEL", 1);
		qnaService.replyQna(commandMap.getMap());
		return mv;
	}

}