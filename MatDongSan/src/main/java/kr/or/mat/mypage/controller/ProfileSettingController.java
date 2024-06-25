package kr.or.mat.mypage.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.mat.login.vo.AuthUserVO;
import kr.or.mat.login.vo.UserVOWrapper;
import kr.or.mat.mypage.service.ProfileService;
import kr.or.mat.mypage.vo.MyProfileVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
/**
 *  파일명 : ProfileSettingController.java
 *  설 명 : 마이 페이지의 내정보 조회,수정을 위한 Controller클래스
 *  작성자 : 한요한
 *  작성일 : 2024. 05. 10
 *  최종 수정일 : 2024. 05. 17
 *  수정내용 : 
 */
@Slf4j
@RequiredArgsConstructor
@Controller
@RequestMapping("/profile")
public class ProfileSettingController {
	
	private final ProfileService service;
	
	@GetMapping
	public String myPage() {
		return "mds/mypage/profileSetting";
	}
	
	@ResponseBody
	@PostMapping
	public String modifyProfile(
			@RequestBody MyProfileVO myprofilevo
			,Authentication authentication
	) {
		log.info("입력받아 넘어온 개인 정보==>{}", myprofilevo);
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		myprofilevo.setUserNo(vo.getUserNo());
		log.info("pincipal을 통해 받은 userNo==>{}",vo.getUserNo());
		log.info("pincipal을 통해 받은 userNo가 들어간 myprofilevo==>{}",myprofilevo);
		
		int cnt = service.modifyProfile(myprofilevo);
		if(cnt > 0) {
			return "ok";
		}
		return "fail";
	}
	
	
	
	
	
	//현재 비밀번호 여부 판단
	@ResponseBody
	@PostMapping("ckPassword")
	public String ckPassword(@RequestBody MyProfileVO vo) {
		log.info("넘어온 정보==>{}",vo);
		String result = "";
		int cnt = service.ckPassword(vo);
//		log.info("결과확인:{}",cnt);
		if(cnt > 0) {
			result = "ok";
		}else {
			result = "fail";
		}
		return result;
	}
	
	@ResponseBody
	@PostMapping("password")
	public String modifyPassword(
			 @RequestBody MyProfileVO vo
			,Authentication authentication
	) {
		UserVOWrapper userVOWrapper =  (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO authUserVO =  userVOWrapper.getRealUser();
		String userNo = authUserVO.getUserNo();
		vo.setUserNo(userNo);
		
		log.info("넘어온 정보==>{}",vo);
		
		String result = "";
		int cnt = service.updatePassword(vo);
		log.info("결과확인:{}",cnt);
		if(cnt > 0) {
			result = "ok";
		}else {
			result = "fail";
		}
		return result;
	}
}



