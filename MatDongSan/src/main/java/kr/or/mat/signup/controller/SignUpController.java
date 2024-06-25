package kr.or.mat.signup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.mat.signup.service.ServiceResult;
import kr.or.mat.signup.service.SignupService;
import kr.or.mat.signup.vo.SignupVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/**
 *  파일명 : SignUpController.java
 *  설 명 : 회원가입을 위한 controller클래스
 *  작성자 : 한요한
 *  작성일 : 2024. 05. 10
 *  최종 수정일 : 2024. 05. 15
 *  수정내용 : createUser 수정(model삭제, error삭제)
 */
@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/signup")
public class SignUpController {
	
	private final SignupService service;
	
	@GetMapping
	public String doGet() {
		return "mds/signup/signUp";
	}
	
	@ResponseBody
	@PostMapping("idcheck")
	public String idCheck(@RequestBody SignupVO userId) {
		log.info("넘어온 id값 ===>{}",userId.getUserId());
		int cnt = service.checkId(userId.getUserId());
		log.info("넘어온 중복체크 값 ===>{}",cnt);
		String result = "";
		if(cnt > 0) {
			result = "fail";
		}else {
			result = "ok";
		}
		return result;
	}
	
	@ResponseBody
	@PostMapping
	public String createUser(@RequestBody SignupVO signup) {
		String viewName = null;
	    log.info("체크: {}",signup);
	    ServiceResult result = service.createUser(signup);
	    switch (result) {
		case OK:
			viewName = "success";
			break;
		case PKDUPLICATED:
			viewName = "PKDUPLICATED";
			break;
		default:
			viewName = "fail";
			break;
		}
	    return viewName; 
	}
	
}