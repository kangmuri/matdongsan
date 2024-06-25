package kr.or.mat.rentNotice.controller;

import java.util.List;
import java.util.Map;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.mat.login.vo.AuthUserVO;
import kr.or.mat.login.vo.UserVOWrapper;
import kr.or.mat.paging.BootstrapPaginationRender;
import kr.or.mat.paging.CommunityPaginationRender;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.paging.PaginationRenderer;
import kr.or.mat.rentNotice.service.RentNoticeService;
import kr.or.mat.rentNotice.vo.RentNoticeVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("lessee/rentNotice")
public class RentNoticeLesseeController {
	
	private final RentNoticeService service;
	
	@GetMapping
	public String rentNoticeList(Model model, Authentication authentication
			,@RequestParam(required = false, defaultValue = "1") int currentPage
			, @RequestParam Map<String, Object> detailConditions
			) {
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		
		PaginationInfo paging = new PaginationInfo(5,5);
		paging.setCurrentPage(currentPage);
		
		detailConditions.put("lesseeNo", vo.getUserNo());
		
		paging.setDetailConditions(detailConditions);
		model.addAttribute("detailConditions", detailConditions);
		log.info("뭔데 {}", detailConditions);
		List<RentNoticeVO> rentBldgList = service.retrieveRentBldgList(vo.getUserNo());
		
		List<RentNoticeVO> noticeList = service.retrieveListRentNotice(paging);
		model.addAttribute("rentBldgList", rentBldgList);
		model.addAttribute("noticeList", noticeList);
		
		log.info("공지사항 확인{}",noticeList);
		PaginationRenderer render = new CommunityPaginationRender();
		model.addAttribute("pagingHTML", render.renderPagination(paging, null));
		return "mdshub/lessee/rentNotice";
	}
	
	@GetMapping("{noticeNo}/{rentBldgNo}")
	public String rentNotice(@PathVariable String noticeNo, @PathVariable String rentBldgNo, Model model) {
		RentNoticeVO vo = new RentNoticeVO();
		vo.setNoticeNo(noticeNo);
		vo.setRentBldgNo(rentBldgNo);
		RentNoticeVO noticeDetail = service.retrieveRentNotice(vo);
		log.info("테스통:{}", noticeDetail);
		model.addAttribute("noticeDetail", noticeDetail);
		return "mdshub/lessee/rentNoticeDetail";
	}
}