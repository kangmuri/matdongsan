package kr.or.mat.info;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class infomationController {
	
	@GetMapping("/guide")
	public String retrieveGuide() {
		return "mds/info/guide";
	}
}
