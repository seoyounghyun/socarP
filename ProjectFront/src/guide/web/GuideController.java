package guide.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GuideController {

	
	@RequestMapping("/Guide/Guide.do")
	public String guide() throws Exception{
		return "/guide/Guide";
	}
	@RequestMapping("/Guide/Fare.do")
	public String fair() throws Exception{
		return "/guide/Fare";
	}
}
