package kr.or.mat.admin.controller;

import java.util.ArrayList;
import java.util.List;

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

import kr.or.mat.admin.service.AdminCommunityService;
import kr.or.mat.admin.vo.AdminCommunityVO;
import kr.or.mat.admin.vo.AdminQnaReplyVO;
import kr.or.mat.admin.vo.AdminQnaVO;
import kr.or.mat.login.vo.AuthUserVO;
import kr.or.mat.login.vo.UserVOWrapper;
import kr.or.mat.paging.AdminPaginationRender;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.paging.PaginationRenderer;
import kr.or.mat.paging.SimpleCondition;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Controller
@RequestMapping("/adminCommunity")
public class AdminCommunityController {
	
	private final AdminCommunityService service;
	
	@GetMapping
	public String adminCommunity(
			Authentication authentication
			, Model model
			, @RequestParam(required = false, defaultValue = "1", name = "currentPage") int currentPage
			, @ModelAttribute("condition") SimpleCondition simplecondition
	) {
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		String userNo = vo.getUserNo();
		
//		log.info("넘어온 currentPage값 ==>{}",currentPage);
//		log.info("넘어온 simplecondition값 ==>{}",simplecondition.getSearchType());
//		log.info("넘어온 simplecondition값 ==>{}",simplecondition.getSearchWord());
		
		PaginationInfo paging = new PaginationInfo(10, 5);
		paging.setUserNo(userNo);
		paging.setCurrentPage(currentPage);
		paging.setSimpleCondition(simplecondition);
		model.addAttribute("simplecondition", simplecondition);
		
		List<AdminQnaVO> pstList = service.retrieveCommunityList(paging);
		model.addAttribute("pstList", pstList);
		
		log.info("jsp로 넘어가기전 pstList=>{}",pstList);
		
		PaginationRenderer render = new AdminPaginationRender();
		model.addAttribute("pagingHTML", render.renderPagination(paging, null));
		return "mds/admin/adminCommunity";
	}
	
	@GetMapping("adminCommunityDetail/{pstNo}")
	public String retrieveAdminQnaDetail(
			@PathVariable("pstNo") String pstNo
			, Model model
	) {
		AdminQnaVO vo = new AdminQnaVO();
		List<AdminQnaReplyVO> rvo = new ArrayList<>();
		
		//게시글 상세정보 조회
		vo.setPstNo(pstNo);
		vo = service.retrieveAdminCommunity(vo);
		model.addAttribute("postVO", vo);
		
		//게시글 댓글정보 조회
		rvo = service.retrieveAdminCommunityReply(pstNo);
		model.addAttribute("replyVOList", rvo);
		
		log.info("DB에 갔다온 vo값 =>{}",vo);
		log.info("DB에 갔다온 rvo값 =>{}",rvo);
		
		return "mds/admin/adminCommunityDetail";
	}
	
	@ResponseBody
	@PostMapping("remove")
	public String removeAdminCommunity(
//			@PathVariable(name = "pstNo") String pstNo
			@RequestBody AdminCommunityVO communityVO
	) {
//		log.info("넘어온 pstNo값 ==>{}",pstNo);
		
//		int cnt = service.removeAdminCommunity(pstNo);
//		if(cnt > 0) {
//			return "ok";
//		}
		return "fail";
	}
}
