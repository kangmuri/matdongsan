package kr.or.mat.lessorComplaints.controller;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.mat.admin.vo.AdminQnaReplyVO;
import kr.or.mat.lessorComplaints.service.LessorComplaintsService;
import kr.or.mat.lessorComplaints.vo.LessorComplaintsVO;
import kr.or.mat.login.vo.AuthUserVO;
import kr.or.mat.login.vo.UserVOWrapper;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.paging.PaginationRenderer;
import kr.or.mat.paging.PayDataPaginationRender;
import kr.or.mat.rentNotice.vo.RentNoticeVO;
import kr.or.mat.rentPayData.vo.RentPayDataVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/**
 *  파일명 : BuildingController.java
 *  설 명 : 건물정보 CRUD를 위한 controller클래스
 *  작성자 : 이성경 
 *  작성일 : 2024. 06. 09
 *  수정내용 : createBuilding 추가
 */
@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/lessor/complaints")
public class LessorComplaintsController {
	@Autowired
	LessorComplaintsService service;

	/**
	 * 민원 전체 리스트
	 */
	@GetMapping
	public String lessorComplaints(
			@RequestParam(required = false, defaultValue = "1") int currentPage
			,@ModelAttribute("paginationInfo") PaginationInfo paging
			,@RequestParam Map<String, Object> detailConditions
			, Authentication authentication
			, Model model){
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		String userNo = vo.getUserNo();
		String funcName = "paging";
		log.info("user체킁:{}",userNo);
		
		PaginationRenderer render = new PayDataPaginationRender();
		paging.setCurrentPage(currentPage);
		paging.setUserNo(userNo);
		paging.setDetailConditions(detailConditions);
		detailConditions.put("userNo", userNo);
		List<LessorComplaintsVO> lessorComplaints = service.retrieveComplaintsList(paging);
		
		
		model.addAttribute("pagingFunction", funcName);
		model.addAttribute("detailConditions", detailConditions);
		model.addAttribute("pagingHTML", render.renderPagination(paging, funcName));
		model.addAttribute("lessorComplaints", lessorComplaints);
		
		log.info("lessorComplaints 체킁!{}", lessorComplaints);
		
		
		return "mdshub/lessor/complaints";
		
	}
	
	/**
	 * 민원 단건 조회
	 */
	@GetMapping("{cvlcpNo}")
	public String retrieveComplaints(@PathVariable String cvlcpNo, Model model, Authentication authentication) {
		LessorComplaintsVO complaints = new LessorComplaintsVO();
		LessorComplaintsVO newComplaints = new LessorComplaintsVO();
		complaints.setCvlcpNo(cvlcpNo);
		newComplaints = service.retrieveComplaints(cvlcpNo);
		model.addAttribute("comp", newComplaints);
		log.info("complaints 나오나요? : {}", newComplaints);
		return "mdshub/lessor/complaintsDetail";
	}
	
	/**
	 * 민원 답변 등록
	 */
	@ResponseBody
	@PostMapping
	public String createComplaintsAnswer(
			@RequestBody LessorComplaintsVO complaints
	) {
		log.info("들어온 vo값==>{}",complaints);
		int cnt = service.createComplaintsAnswer(complaints);
		if(cnt > 0) {
			return "ok";
		}
		return "fail";
	}
	
	/**
	 * 민원 답변 삭제
	 */
	@ResponseBody
	@PostMapping("remove")
	public String removeNotice(@RequestBody LessorComplaintsVO complaints) {
		log.info("들어온 vo값==>{}", complaints);
		int cnt = service.removeComplaintsAnswer(complaints);
		if (cnt > 0) {
			return "ok";
		}
		return "fail";
	}

	
}
