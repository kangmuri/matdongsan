package kr.or.mat.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *  파일명 : OfficeApply.java
 *  설 명 : 마이 페이지의 공인중개사 등록을 위한 Controller클래스
 *  작성자 : 한요한
 *  작성일 : 2024. 05. 10
 *  최종 수정일 : 2024. 05. 10
 */

@Controller
public class OfficeApplyController {
	@RequestMapping("/officeApply")
	public String officeApply() {
		return "mds/mypage/officeApply";
	}
}