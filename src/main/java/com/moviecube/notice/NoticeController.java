package com.moviecube.notice;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;



import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.moviecube.common.CommandMap;

@Controller
public class NoticeController {
Logger log = Logger.getLogger(this.getClass());

@Resource(name="noticeService")
private NoticeService noticeService;

@RequestMapping(value="/notice/adminNoticeList.do")
public ModelAndView noticeList(Map<String,Object>commandMap) throws Exception{
	ModelAndView mv = new ModelAndView("admin/noticeList");
	
	List<Map<String,Object>>list = noticeService.selectBoardList(commandMap);
	mv.addObject("list",list);
	
	return mv;
}

@RequestMapping(value="/notice/adminNoticeWriteFrom.do")
public ModelAndView writeNoticeForm(CommandMap commandMap) throws Exception{
	ModelAndView mv = new ModelAndView("admin/noticeWriteForm");
	
	return mv;
	
}

@RequestMapping(value="/notice/adminNoticeWrite.do")
public ModelAndView writeNotice(CommandMap commandMap) throws Exception{
	ModelAndView mv = new ModelAndView("redirect:/notice/adminNoticeList.do");
	
	noticeService.insertBoard(commandMap.getMap());
	
	return mv;
	
}
}
