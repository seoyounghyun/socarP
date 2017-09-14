package notice.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {

	@RequestMapping("/Notice/Notice.do")
	public String notice() throws Exception{
		return "/notice/Notice";
	}
}
