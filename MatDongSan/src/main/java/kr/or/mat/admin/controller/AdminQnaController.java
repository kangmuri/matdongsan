package kr.or.mat.admin.controller;

import java.util.ArrayList;
import java.util.List;

import org.aspectj.weaver.patterns.HasThisTypePatternTriedToSneakInSomeGenericOrParameterizedTypePatternMatchingStuffAnywhereVisitor;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.mat.admin.service.AdminQnaService;
import kr.or.mat.admin.vo.AdminQnaReplyVO;
import kr.or.mat.admin.vo.AdminQnaVO;
import kr.or.mat.login.vo.AuthUserVO;
import kr.or.mat.login.vo.UserVOWrapper;
import kr.or.mat.mypage.vo.QnaReplyVO;
import kr.or.mat.paging.AdminPaginationRender;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.paging.PaginationRenderer;
import kr.or.mat.paging.SimpleCondition;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Controller
public class AdminQnaController {
	
	private final AdminQnaService service;
	
	@RequestMapping("/adminQna")
	public String AdminadminQnaList(
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
		
		List<AdminQnaVO> QnaList = service.retrieveQnaList(paging);
		model.addAttribute("QnaList", QnaList);
		
		PaginationRenderer render = new AdminPaginationRender();
		model.addAttribute("pagingHTML", render.renderPagination(paging, null));
		
		return "mds/admin/adminQna";
	}
	
	@GetMapping("adminQnaDetail/{pstNo}")
	public String retrieveAdminQnaDetail(
			@PathVariable("pstNo") String pstNo
			, Model model
	) {
		AdminQnaVO vo = new AdminQnaVO();
		List<AdminQnaReplyVO> rvo = new ArrayList<>();
		
		//게시글 상세정보 조회
		vo.setPstNo(pstNo);
		vo = service.retrieveAdminQna(vo);
		model.addAttribute("postVO", vo);
		
		//게시글 댓글정보 조회
		rvo = service.retrieveAdminQnaReply(pstNo);
		model.addAttribute("replyVOList", rvo);
		
		log.info("DB에 갔다온 vo값 =>{}",vo);
		log.info("DB에 갔다온 rvo값 =>{}",rvo);
		
		return "mds/admin/adminQnaDetail";
	}
	
	@ResponseBody
	@PostMapping(value ="/adminQna/create" ,produces = MediaType.APPLICATION_JSON_VALUE)
	public String createAdminQnaReply(
			@RequestBody AdminQnaReplyVO replyVO
	) {
		log.info("들어온 vo값==>{}",replyVO);
		int cnt = service.createAdminQnaReply(replyVO);
		if(cnt > 0) {
			return "ok";
		}
		return "fail";
	}
	
	@ResponseBody
	@PostMapping(value ="/adminQna/remove" ,produces = MediaType.APPLICATION_JSON_VALUE)
	public String removeAdminQnaReply(
			@RequestBody AdminQnaReplyVO replyVO
	) {
		log.info("들어온 vo값==>{}",replyVO);
		
		int cnt = service.removeAdminQnaReply(replyVO);
		
		if(cnt > 0) {
			return "ok";
		}
		return "fail";
	}
	
	@ResponseBody
	@PutMapping(value ="/adminQna/update" ,produces = MediaType.APPLICATION_JSON_VALUE)
	public String updateAdminQnaReply(
			@RequestBody AdminQnaReplyVO replyVO
	) {
		log.info("들어온 vo값==>{}",replyVO);
		
		int cnt = service.modifyAdminQnaReply(replyVO);
		
		if(cnt > 0) {
			return "ok";
		}
		return "fail";
	}
}
