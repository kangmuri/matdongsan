package kr.or.mat.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/adminRealtor")
public class AdminRealtorController {
	
	public String RealtorController() {
		return "mds/admin/adminRealtor";
	}
	
	
}