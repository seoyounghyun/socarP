package com.price.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MenuController {

	@RequestMapping("/Price/Price.do")
	public String gomain() throws Exception{
		return "/WEB-INF/view/price/Price.jsp";
	}
	
	
	
}
