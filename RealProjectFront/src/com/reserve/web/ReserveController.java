package com.reserve.web;

import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;

@Controller
public class ReserveController {

	@RequestMapping("/Reserve/Reserve.do")
	public String goreserve() throws Exception{
		return "/WEB-INF/view/reserve/ReserveMain.jsp";
	}
}
