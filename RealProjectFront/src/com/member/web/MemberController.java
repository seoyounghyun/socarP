package com.member.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	
	@RequestMapping("/Member/Join.do")
	public String goJoin() throws Exception{
		return "/WEB-INF/view/member/Join.jsp";
	}
	@RequestMapping("/Member/CouponBook.do")
	public String goCouponBook() throws Exception{
		return "/WEB-INF/view/member/CouponBook.jsp";
	}


}
