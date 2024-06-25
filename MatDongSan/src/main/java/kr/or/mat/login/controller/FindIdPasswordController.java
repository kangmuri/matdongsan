package kr.or.mat.login.controller;

import java.util.LinkedHashMap;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.mat.login.service.FindIdPasswordService;
import kr.or.mat.login.vo.AuthUserVO;
import kr.or.mat.login.vo.UserVOWrapper;
import kr.or.mat.mypage.service.ProfileService;
import kr.or.mat.mypage.vo.MyProfileVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("find")
public class FindIdPasswordController {
	
	private final FindIdPasswordService service;
	
	private final ProfileService service2;
	@GetMapping("id")
	public String findId(){
		return "mds/signup/findId";
	}
	
	@ResponseBody
	@PostMapping(value = "idCk" ,produces = "application/json")
	public AuthUserVO retrievefindId(
			@RequestBody AuthUserVO userVO
	){
		AuthUserVO vo = new AuthUserVO();
		log.info("넘어온 uservo값==>{}",userVO);
		
		int cnt = service.retrieveIdCk(userVO);
		if(cnt > 0) {
			vo = service.retrieveId(userVO);
		}
		log.info("DB를 거쳐오거나 안거쳐온 vo ==>{}",vo);
		return vo;
	}
	
	@GetMapping("pass")
	public String retrievefindPassword(
	){
		return "mds/signup/findPass";
	}
	
	@ResponseBody
	@PostMapping(value = "pass", produces = "application/json")
	public Map<String,Object> findPassword(
			@RequestBody AuthUserVO userVO
	){
		Map<String,Object> param = new LinkedHashMap<>();
		log.info("넘어온 params값==>{}",userVO);
		//파라미터가 잘 전달 됬는지 확인
		
		param = service.retrievePassCk(userVO);
		if(param.get("result").equals("ok")) {
			param.forEach((key,value) -> {
				log.info("key : {}, value : {}",key,value);
			});
			return param;
		}
		return param;
	}
	
	@GetMapping("updatePass/{userNo}")
	public String retrievePasswordForm(
			  @PathVariable(name = "userNo") String userNo
			, Model model
	){
		log.info("전해질 userNo==>{}",userNo);
		model.addAttribute("userNo", userNo);
		return "mds/signup/updatePass";
	}
	
	@ResponseBody
	@PostMapping("updatePassword")
	public String modifyPassword(
			 @RequestBody MyProfileVO vo
			,Authentication authentication
	) {
		log.info("넘어온 정보==>{}",vo);
		
		int cnt = service2.updatePassword(vo);
		if(cnt > 0) {
			return "ok";
		} 
		return "fail";
	}
	
}
