package com.moviecube.cinema;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;
import com.moviecube.common.Paging;

@RequestMapping(value = "/admin")
@Controller
public class AdminCinemaController {

	@Resource(name = "cinemaService")
	private CinemaService cinemaService;
	
	private int currentPage = 1;
	private int totalCount;
	private int blockCount = 5;
	private int blockpaging = 5;
	private String pagingHtml;
	private Paging paging;

	@RequestMapping(value = "/cinemaList.do")
	public ModelAndView cinemaList(CommandMap commandMap, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();

		List<Map<String, Object>> cinemaList = cinemaService.selectCinemaList(commandMap.getMap());
		
		if (request.getParameter("currentPage") == null || request.getParameter("currentPage").trim().isEmpty() || request.getParameter("currentPage").equals("0")) {
			currentPage = 1;
		}else{
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		totalCount = cinemaList.size();
		
		paging = new Paging(currentPage, totalCount, blockCount, blockpaging, "cinemaList");
		pagingHtml = paging.getPagingHtml().toString();
		
		int lastCount = totalCount;
		//System.out.println(paging.getEndCount());
		//System.out.println(totalCount);
		if (paging.getEndCount() < totalCount) {
			lastCount = paging.getEndCount() + 1;
		}

		cinemaList = cinemaList.subList(paging.getStartCount(), lastCount);
		
		mv.addObject("cinemaList", cinemaList);
		mv.addObject("list", cinemaList);
		mv.addObject("currentPage", currentPage);
		mv.addObject("pagingHtml", pagingHtml);
		mv.addObject("totalCount", totalCount);
		mv.setViewName("/admin/cinema/cinemaList");
		return mv;
	}

	@RequestMapping(value = "/cinemaDetail.do")
	public ModelAndView cinemaSelectOne(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/cinema/cinemaDetail");

		Map<String, Object> map = cinemaService.cinemaDetail(commandMap.getMap());

		mv.addObject("map", map);
		mv.addObject("currentPage", commandMap.get("currentPage"));

		return mv;
	}

	@RequestMapping(value = "/cinemaWriteForm.do")
	public ModelAndView cinemaWriteForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/cinema/cinemaWrite");

		return mv;
	}

	@RequestMapping(value = "/cinemaWrite.do")
	public ModelAndView cinemaWrite(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/cinemaList.do");

		cinemaService.insertCinema(commandMap.getMap());

		return mv;
	}

	@RequestMapping(value = "/cinemaModifyForm.do")
	public ModelAndView cinemaUpdateForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/cinema/cinemaModify");

		Map<String, Object> map = cinemaService.cinemaDetail(commandMap.getMap());

		mv.addObject("map", map);

		return mv;
	}

	@RequestMapping(value = "/cinemaModify.do")
	public ModelAndView cinemaUpdate(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/cinemaDetail.do");

		cinemaService.updateCinema(commandMap.getMap());

		mv.addObject("CINEMA_NO", commandMap.get("CINEMA_NO"));

		return mv;
	}

	@RequestMapping(value = "/cinemaDelete.do")
	public ModelAndView cinemaDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/admin/cinemaList.do");

		cinemaService.deleteCinema(commandMap.getMap());
		mv.addObject("currentPage", commandMap.get("currentPage"));

		return mv;
	}

}
