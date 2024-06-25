package kr.or.mat.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminAcoountController {
	
	@RequestMapping("/adminAcount")
	public String acoount() {
		return "mds/admin/adminAccount";
	}
}