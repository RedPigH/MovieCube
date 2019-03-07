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
	ModelAndView mv = new ModelAndView("noticeList");
	
	List<Map<String,Object>>list = noticeService.selectBoardList(commandMap);
	mv.addObject("list",list);
	
	return mv;
}

@RequestMapping(value="/notice/adminNoticeWriteForm.do")
public ModelAndView writeNoticeForm(CommandMap commandMap) throws Exception{
	ModelAndView mv = new ModelAndView("noticeWriteForm");
	
	return mv;
	
}

@RequestMapping(value="/notice/adminNoticeWrite.do")
public ModelAndView writeNotice(CommandMap commandMap) throws Exception{
	ModelAndView mv = new ModelAndView("redirect:/notice/adminNoticeList.do");
	
	noticeService.insertBoard(commandMap.getMap());
	
	return mv;
	
}

@RequestMapping(value="/notice/adminNoticeDetail.do")
public ModelAndView noticeDetail(CommandMap commandMap ) throws Exception{
	ModelAndView mv = new ModelAndView("noticeDetail");
	
	Map<String,Object> map = noticeService.selectBoardDetail(commandMap.getMap());
	System.out.println(commandMap.getMap());
	mv.addObject("map",map);
	
	return mv;
}

@RequestMapping(value="/notice/adminNoticeModifyForm.do")
public ModelAndView modifyNoticeForm(CommandMap commandMap) throws Exception{
	ModelAndView mv = new ModelAndView("noticeModify");
	
	Map<String,Object> map = noticeService.selectBoardDetail(commandMap.getMap());
	mv.addObject("map", map);
	
	return mv;
	
}

@RequestMapping(value="/notice/adminNoticeModify.do")
public ModelAndView modifyNotice(CommandMap commandMap) throws Exception{
	ModelAndView mv = new ModelAndView("redirect:/notice/adminNoticeList.do");
	
	noticeService.updateBoard(commandMap.getMap());
	
	mv.addObject("NOTICE_NO", commandMap.get("NOTICE_NO"));
	return mv;
}

@RequestMapping(value="/notice/adminNoticeDelete.do")
public ModelAndView noticeDelete(CommandMap commandMap) throws Exception{
	ModelAndView mv = new ModelAndView("redirect:/notice/adminNoticeList.do");
    System.out.println("�����ٺ�:"+commandMap.getMap());
	noticeService.deleteBoard(commandMap.getMap());
	
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

