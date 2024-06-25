package kr.or.mat.mypage.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.mat.login.vo.AuthUserVO;
import kr.or.mat.login.vo.UserVOWrapper;
import kr.or.mat.mypage.service.MyAccountService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Controller
@RequestMapping("/myAccount")
public class MyAccountController {
	
	private final MyAccountService service;
	
	@ResponseBody
	@GetMapping(produces = "application/json;charset=UTF-8")
	public AuthUserVO myAccount(
			  Model model
			, Authentication authentication
			,@RequestParam(name = "unityAtchmnflNo") String unityAtchmnflNo
	) {
		AuthUserVO authUserVO = new AuthUserVO();
		try {
			UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
			AuthUserVO vo = wrapper.getRealUser();
			String userNo = vo.getUserNo();
			
			if(!userNo.isEmpty()) {
				authUserVO = service.retrieveAccount(userNo, unityAtchmnflNo);
				log.info("넘어온 authUserVO값==>{}",authUserVO);
				return authUserVO;
			}
			log.info("계정정보가 없어서 값을 가져올 수 없습니다.");
			return authUserVO;
		} catch (Exception e) {
			log.info("로그인 하기 전 행동을 했을때 principal값이 없어 생기는 nullPointException 처리.");
			return authUserVO;
		}
	}
}
