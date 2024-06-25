package kr.or.mat.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 *  파일명 : MyChattingController.java
 *  설 명 : 마이 페이지의 채팅기능을 위한 Controller클래스
 *  작성자 : 한요한
 *  작성일 : 2024. 05. 10
 *  최종 수정일 : 2024. 05. 10
 */
@Controller
public class MyChattingController {
	
	@RequestMapping("/myChatting")
	public String myChatting() {
		return "mds/mypage/myChatting";
	}
}
