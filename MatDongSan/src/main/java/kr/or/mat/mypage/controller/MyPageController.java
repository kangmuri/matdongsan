package kr.or.mat.mypage.controller;

import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.mat.login.vo.AuthUserVO;
import kr.or.mat.login.vo.UserVOWrapper;
import kr.or.mat.mypage.service.MyPageService;
import kr.or.mat.mypage.service.ProfileService;
import kr.or.mat.mypage.vo.MyProfileVO;
import kr.or.mat.mypage.vo.MyRoomLikeVO;
import kr.or.mat.mypage.vo.QnaVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
/**
 *  파일명 : MyPageController.java
 *  설 명 : 마이 페이지의 화면이동을 위한 Controller클래스
 *  작성자 : 한요한
 *  작성일 : 2024. 05. 10
 *  최종 수정일 : 2024. 06. 03
 */
@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/mypage")
public class MyPageController {
	
	private final ProfileService service;
	private final MyPageService service2;
	
	@GetMapping
	public String myPage(
			  Authentication authentication
			, Model model
	) {
		UserVOWrapper rapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO userVO = rapper.getRealUser();
		String userNo = userVO.getUserNo();
		
		log.info("넘어왔다...");
		
		//등록매물 조회
		int roomCnt = service2.retrieveMyRoom(userNo);
		model.addAttribute("roomCnt", roomCnt);
		log.info("DB를 거쳐온 roomCnt ==>{}",roomCnt);
		
		//계약 진행사항 조회
		int roomDealingCnt = service2.retrieveMyRoomDealing(userNo);
		model.addAttribute("roomDealingCnt", roomDealingCnt);
		log.info("DB를 거쳐온 roomDealingCnt ==>{}",roomDealingCnt);
		
		//신고횟수 조회
//		int roomReportCnt = service2.retrieveMyRoomReport(userNo);
//		model.addAttribute("roomReportCnt", roomReportCnt);
		
		//1:1 문의 게시글 리스트 조회
		List<QnaVO> qnaList =service2.retrieveMyQnaList(userNo);
		model.addAttribute("qnaList", qnaList);
		log.info("DB를 거쳐온 qnaList ==>{}",qnaList);
		
		//찜목록 리스트 조회
		List<MyRoomLikeVO> roomList = service2.retrieveMyRoomLikeList(userNo);
		model.addAttribute("roomList", roomList);
		log.info("DB를 거쳐온 roomList ==>{}",roomList);
		
		return "mds/mypage/mypageForm";
	}
	
	@ResponseBody
	@PostMapping("passCk")
	public String myPagePassCk(
		 Authentication authentication
		,@RequestBody MyProfileVO profileVO
	) {
		UserVOWrapper rapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO userVO = rapper.getRealUser();
		profileVO.setUserNo(userVO.getUserNo());
		
		log.info("들어온 패스워드 값==>{}",profileVO.getUserPw());
		
		int cnt = service.ckPassword(profileVO);
		if(cnt > 0) {
			return "ok";
		}
		return "fail";
	}
	


	
	
}
