package kr.or.mat.lessor.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.mat.lessor.service.MailSendService;

@Controller
@RequestMapping("/lessor")
public class LessorController {
	@Autowired
	private MailSendService mailService;
	
	@GetMapping("/mailCheck/{email}")
	@ResponseBody
	public String mailCheck(@PathVariable String email) {
		System.out.println("이메일 인증 요청이 들어옴!");
		System.out.println("이메일 인증 이메일 : " + email);
		return mailService.joinEmail(email);
	}
	
//	협력업체 메인
	@RequestMapping("ccpy")
	public String ccpy(){
		return "mdshub/lessor/ccpy";
	}
	
//	전표관리 메인
	@RequestMapping("chit")
	public String chit() {
		return "mdshub/lessor/chit";
	}
	
//	가상계좌 메인
	@RequestMapping("virtualAccount")
	public String virtualAccount(){
		return "mdshub/lessor/virtualAccount";
	}
	
//	수납계좌 메인
	@RequestMapping("recptAccount")
	public String recptAccount(){
		return "mdshub/lessor/recptAccount";
	}
	
//	증빙관리 메인
	@RequestMapping("bplcInfo")
	public String bplcInfo(){
		return "mdshub/lessor/bplcInfo";
	}
	
	
//	일정관리 메인
	@RequestMapping("schedule")
	public String schedule(){
		return "mdshub/lessor/schedule";
	}
	
	
	
}
