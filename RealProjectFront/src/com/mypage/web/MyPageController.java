package com.mypage.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyPageController {

	@RequestMapping("/MyPage/MyPage.do")
	public String goMyPage() throws Exception{
		return "/WEB-INF/view/mypage/MyPage.jsp";
	}
	@RequestMapping("/MyPage/ReserveView.do")
	public String goReserveView() throws Exception{
		return "/WEB-INF/view/mypage/ReserveView.jsp";
	}
	
	
}
