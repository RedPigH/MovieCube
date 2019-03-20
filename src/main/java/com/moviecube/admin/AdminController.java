package com.moviecube.admin;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
	
	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 5;
	private int blockpaging = 5;
	private String pagingHtml;
	private Paging paging;
	
/*	
	@RequestMapping(value="/movieList.do")
	public ModelAndView movieList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/movieList");
		
		List<Map<String, Object>> movieList = movieService.selectMovieList(commandMap.getMap());
		mv.addObject("movieList", movieList);
		
		return mv;
	}
*/
	
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
		//System.out.println(paging.getEndCount());
		//System.out.println(totalCount);
		if (paging.getEndCount() < totalCount) {
			lastCount = paging.getEndCount() + 1;
		}

		movieList = movieList.subList(paging.getStartCount(), lastCount);
		
		mv.addObject("movieList", movieList);
		mv.addObject("list", movieList);
		mv.addObject("currentPage", currentPage);
		mv.addObject("pagingHtml", pagingHtml);
		mv.addObject("totalCount", totalCount);
		mv.setViewName("admin/movieList");
		return mv;
	}
	
	
	@RequestMapping(value="/movieWriteForm.do")
	public ModelAndView movieWriteForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/movieWrite");
		
		return mv;
	}
	
	@RequestMapping(value="/movieWrite.do")
	public ModelAndView movieWrtie(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/movieList.do");
		
		movieService.insertMovie(commandMap.getMap(), request);
		
		return mv;
	}
	
	@RequestMapping(value="/movieDetail.do")
	public ModelAndView movieDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/movieDetail");
		
		Map<String,Object> map = movieService.selectMovieDetail(commandMap.getMap());
		
		mv.addObject("map", map.get("map"));
		mv.addObject("currentPage", commandMap.get("currentPage"));
		mv.addObject("movieDetail", map.get("movieDetail"));
		
		
		return mv;
	}
	
	@RequestMapping(value="/movieModifyForm.do")
	public ModelAndView movieModifyForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/movieModify");
		System.out.println("영화 수정 폼 값 확인 =============: " + commandMap.getMap());
		Map<String, Object> map = movieService.selectMovieDetail(commandMap.getMap());

		mv.addObject("map", map.get("map"));
		mv.addObject("movieDetail", map.get("movieDetail"));
		mv.addObject("fileList", map.get("fileList"));
		
		return mv;
	}
	
	@RequestMapping(value="/movieModify.do")
	public ModelAndView movieModify(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/movieDetail.do");
		System.out.println("영화 수정 처리 값 확인 =============: " + commandMap.getMap());
		movieService.modifyMovie(commandMap.getMap(), request);

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

/*
	@RequestMapping(value = "/notice/adminNoticeList.do")
	public ModelAndView noticeList(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("noticeList");

		List<Map<String, Object>> list = noticeService.selectBoardList(commandMap);
		mv.addObject("list", list);

		return mv;
	}
*/
	
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
		mv.setViewName("/admin/noticeList");
		return mv;
	}
	
	@RequestMapping(value = "/noticeWriteForm.do")
	public ModelAndView writeNoticeForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/noticeWrite");

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
		ModelAndView mv = new ModelAndView("/admin/noticeDetail");
		
		System.out.println("상세보기 페이지 넘기는값 확인 : " + commandMap.getMap());
		Map<String, Object> map = noticeService.selectBoardDetail(commandMap.getMap());
		
		mv.addObject("map", map);
		mv.addObject("currentPage", commandMap.get("currentPage"));
		return mv;
	}

	@RequestMapping(value = "/noticeModifyForm.do")
	public ModelAndView modifyNoticeForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/noticeModify");

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
		mv.setViewName("/admin/faqList");
		return mv;
	}
	
	@RequestMapping(value = "/faqWriteForm.do")
	public ModelAndView faqWriteForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/faqWrite");

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
		ModelAndView mv = new ModelAndView("/admin/faqDetail");

		Map<String, Object> map = faqService.selectFaqDetail(commandMap.getMap());
		mv.addObject("map", map);
		mv.addObject("currentPage", commandMap.get("currentPage"));
		
		return mv;
	}

	@RequestMapping(value = "/faqModifyForm.do")
	public ModelAndView faqModifyForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/faqModify");

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
			mav.setViewName("/admin/memberList");
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
		mav.setViewName("/admin/memberList");
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
	
}