package com.guide.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GuideController {

	
	@RequestMapping("/Guide/Guide.do")
	public String goGuide() throws Exception{
		return "/WEB-INF/view/guide/Guide.jsp";
	}
}
