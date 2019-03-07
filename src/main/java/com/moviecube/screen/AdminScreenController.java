package com.moviecube.screen;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;

@Controller
public class AdminScreenController {

	@Resource(name = "screenService")
	private ScreenService screenService;

	@RequestMapping(value = "/screenList.do")
	public ModelAndView screenList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/screenList");

		List<Map<String, Object>> list = screenService.selectScreenList(commandMap.getMap());
		mv.addObject("list", list);

		return mv;
	}

	@RequestMapping(value = "/screenDetail.do")
	public ModelAndView screenDetail(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/screenDetail");

		Map<String, Object> map = screenService.screenDetail(commandMap.getMap());

		mv.addObject("map", map);

		return mv;
	}

	@RequestMapping(value = "/screenWriteForm.do")
	public ModelAndView screenWriteForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/screenWrite");

		return mv;
	}

	@RequestMapping(value = "/screenWrite.do")
	public ModelAndView screenWrite(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/screenList.do");

		screenService.insertScreen(commandMap.getMap());

		return mv;
	}

	@RequestMapping(value = "/screenUpdateForm.do")
	public ModelAndView screenUpdateForm(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/screenWirte");

		Map<String, Object> map = screenService.screenDetail(commandMap.getMap());

		mv.addObject("map", map);

		return mv;
	}

	@RequestMapping(value = "/screenUpdate.do")
	public ModelAndView screenUpdate(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/screenDetail.do");

		screenService.updateScreen(commandMap.getMap());

		mv.addObject("SCREEN_NO", commandMap.get("SCREEN_NO"));

		return mv;
	}

	@RequestMapping(value = "/screenDelete.do")
	public ModelAndView screenDelete(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/screenList.do");

		screenService.deleteScreen(commandMap.getMap());

		return mv;
	}

}
