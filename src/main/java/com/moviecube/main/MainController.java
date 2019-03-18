package com.moviecube.main;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.moviecube.common.CommandMap;



@Controller
@EnableWebMvc
public class MainController {
	@RequestMapping(value = "/main.do")
	public ModelAndView openBoardList(CommandMap commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/main");
			String path = "=========== 현재경로확인 =============" + System.getProperty("user.dir");
			System.out.println(path);
		//List<Map<String, Object>> list = sampleService.selectBoardList(commandMap.getMap());
		//mv.addObject("list", list);

		return mv;
	}

}
