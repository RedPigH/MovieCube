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


@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Resource(name = "movieService")
	private MovieService movieService;
	
	@Resource(name = "noticeService")
	private NoticeService noticeService;
	
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
		
		System.out.println("쓰기확인 : " + commandMap.getMap());
		movieService.insertMovie(commandMap.getMap(), request);
		return mv;
	}
	
	@RequestMapping(value="/movieDetail.do")
	public ModelAndView movieDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/movieDetail");
		
		Map<String, Object> map = movieService.selectMovieDetail(commandMap.getMap());
		
		mv.addObject("map", map);
		
		return mv;
	}
	
	@RequestMapping(value="/movieModifyForm.do")
	public ModelAndView movieModifyForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/movieModify");
		System.out.println("수정확인테스트 1: " + commandMap.getMap());
		Map<String, Object> map = movieService.selectMovieDetail(commandMap.getMap());
		mv.addObject("map", map);
		System.out.println("수정확인테스트 2: " + commandMap.getMap());
		return mv;
	}
	
	@RequestMapping(value="/movieModify.do")
	public ModelAndView movieModify(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/movieDetail.do");
		
		System.out.println("수정확인테스트 3: " + commandMap.getMap());
		movieService.modifyMovie(commandMap.getMap());
		
		mv.addObject("MOVIE_NO", commandMap.get("MOVIE_NO"));
		System.out.println("수정확인테스트 4: " + commandMap.getMap());
		
		return mv;
	}
	
	@RequestMapping(value="/movieDelete.do")
	public ModelAndView movieDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/movieList.do");
		
		movieService.deleteMovie(commandMap.getMap());
		
		return mv;
	}
	
	@RequestMapping(value = "/imgView.do", method = RequestMethod.GET)
	public ModelAndView imgView(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		
		
		mav.setViewName("/admin/imgView");
		return mav;
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

		return mv;
	}
}