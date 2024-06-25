package kr.or.mat.admin.controller;

import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.mat.admin.service.AdminRoomService;
import kr.or.mat.admin.vo.AdminRoomVO;
import kr.or.mat.login.vo.AuthUserVO;
import kr.or.mat.login.vo.UserVOWrapper;
import kr.or.mat.paging.AdminPaginationRender;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.paging.PaginationRenderer;
import kr.or.mat.paging.SimpleCondition;
import kr.or.mat.room.vo.RoomDealingVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Controller
public class AdminRoomController {

	private final AdminRoomService service;
	
	@GetMapping("/adminRoom")
	public String getRoom(
			Authentication authentication
			, Model model
			, @RequestParam(required = false, defaultValue = "1", name = "currentPage") int currentPage
			, @ModelAttribute("condition") SimpleCondition simplecondition
	) {
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		String userNo = vo.getUserNo();
		
		PaginationInfo paging = new PaginationInfo(10, 5);
		paging.setUserNo(userNo);
		paging.setCurrentPage(currentPage);
		paging.setSimpleCondition(simplecondition);
		model.addAttribute("simplecondition", simplecondition);
		
		List<AdminRoomVO> roomList = service.retrieveRoomList(paging);
		model.addAttribute("roomList", roomList);
		
		PaginationRenderer render = new AdminPaginationRender();
		model.addAttribute("pagingHTML", render.renderPagination(paging, null));
		
		return "mds/admin/adminRoom";
	}
	
	@GetMapping("/adminRoom/retrieve/{roomDelngNo}")
	public String retrieveRoom(
			@PathVariable(name = "roomDelngNo") String roomDelngNo
			, Model model
	) {
		log.info("받은 roomDelngNo값==>{}",roomDelngNo);
		
		RoomDealingVO roomVO = service.retrieveRoom(roomDelngNo);
		model.addAttribute("roomVO", roomVO);
		log.info("DB를 거쳐온 roomVO값==>{}",roomVO);
		
		return "mds/admin/adminRoomDetail";
	}
	
	@ResponseBody
	@GetMapping("/adminRoom/modify/{roomDelngNo}")
	public String modifyAdminRoomDealing(
			@PathVariable(name = "roomDelngNo") String roomDelngNo
	) {
		log.info("받은 roomDelngNo값==>{}",roomDelngNo);
		
		int cnt = service.modifyAdminRoomDealing(roomDelngNo);
		if(cnt > 0) {
			return "ok";
		}
		return "fail";
	}
	
	@ResponseBody
	@GetMapping("/adminRoom/delete/{roomDelngNo}")
	public String deleteAdminRoomDealing(
			@PathVariable(name = "roomDelngNo") String roomDelngNo
			) {
		log.info("받은 roomDelngNo값==>{}",roomDelngNo);
		
		int cnt = service.modifyAdminRoomDealing(roomDelngNo);
		if(cnt > 0) {
			return "ok";
		}
		return "fail";
	}
}
