package com.moviecube.store;

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

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;
import com.moviecube.common.Paging;

@Controller
public class StoreController {
	@Resource(name = "storeService")
	private StoreService storeService;

	@RequestMapping(value = "/storeList.do")
	public ModelAndView storeList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("store/storeList");
		
		List<Map<String, Object>> storelist = storeService.selectStoreList(commandMap.getMap());
		
		mv.addObject("storelist", storelist);

		return mv;
	}
	
	@RequestMapping(value = "/storeDetail.do")
	public ModelAndView storeDetail(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		return mv;
	}
	
	@RequestMapping(value = "/insertItem.do")
	public ModelAndView insertItem(CommandMap commandMap) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		storeService.insertItem(commandMap.getMap());
		
		return mv;
	}

}