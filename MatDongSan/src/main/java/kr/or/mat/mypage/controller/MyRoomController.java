package kr.or.mat.mypage.controller;

import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.mat.login.vo.AuthUserVO;
import kr.or.mat.login.vo.UserVOWrapper;
import kr.or.mat.mypage.service.MyRoomService;
import kr.or.mat.mypage.vo.MyRoomListVO;
import kr.or.mat.paging.MypagePaginationRender;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.paging.PaginationRenderer;
import kr.or.mat.paging.SimpleCondition;
import kr.or.mat.room.vo.RoomDealingVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/myRoom")
public class MyRoomController {
	
	private final MyRoomService service;
	
	@GetMapping
	public String myRoomController(
			Authentication authentication
			, Model model
			, @RequestParam(required = false, defaultValue = "1", name = "currentPage") int currentPage
			, @ModelAttribute("condition") SimpleCondition simplecondition
	) {
		MyRoomListVO roomVO = new MyRoomListVO();
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		String userNo = vo.getUserNo();
		roomVO.setUserNo(userNo);
		String funcName = "paging";
		
		PaginationInfo paging = new PaginationInfo(5, 5);
		paging.setUserNo(userNo);
		paging.setCurrentPage(currentPage);
		paging.setSimpleCondition(simplecondition);
		model.addAttribute("simplecondition", simplecondition);
		model.addAttribute("pagingFunction", funcName);
		
		List<MyRoomListVO> roomList = service.retrieveMyRoomList(paging);
		log.info("넘어가기전 list정보 ==>{}",roomList);
		
		// scope
		model.addAttribute("roomList", roomList);
		
		PaginationRenderer render = new MypagePaginationRender();
		model.addAttribute("pagingHTML", render.renderPagination(paging, funcName));
		return "mds/mypage/myRoom";
	}
	
	@GetMapping("{roomDealingNo}")
	public String myRoomDetail(
			  @PathVariable(name = "roomDealingNo") String roomDealingNo
			, Model model
	) {
		log.info("넘어온 roomDealingNo==>{}",roomDealingNo);
		
		RoomDealingVO roomVO = service.retrieveDetailRoom(roomDealingNo);
		model.addAttribute("roomVO", roomVO);
		log.info("넘어온 RoomDealingVO==>{}",roomVO);
		
		return "mds/mypage/myRoomDetail2";
	}
	
}
