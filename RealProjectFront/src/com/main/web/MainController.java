package com.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("/Main/Main.do")
	public String goMain() throws Exception{
		
		return "/WEB-INF/view/main/Main.jsp";
	}
}
