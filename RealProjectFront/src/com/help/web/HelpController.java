package com.help.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelpController {

	@RequestMapping("/Help/Notice.do")
	public String gonotice() throws Exception{
		
		return "/WEB-INF/view/help/Notice.jsp";
	}
 	
	@RequestMapping("/Help/Faq.do")
	public String gofaq() throws Exception{
		
		return "/WEB-INF/view/help/Faq.jsp";
	}
 	@RequestMapping("/Help/Inquiry.do")
 	public String goInquiry() throws Exception{
 		return "/WEB-INF/view/help/Inquiry.jsp";
 	}
	
}
