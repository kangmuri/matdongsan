package kr.or.mat.mypage.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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
import kr.or.mat.login.vo.AuthUserVO;
import kr.or.mat.login.vo.UserVOWrapper;
import kr.or.mat.mypage.service.QnaService;
import kr.or.mat.mypage.vo.QnaReplyVO;
import kr.or.mat.mypage.vo.QnaVO;
import kr.or.mat.paging.MypagePaginationRender;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.paging.PaginationRenderer;
import kr.or.mat.paging.SimpleCondition;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
/**
 *  파일명 : QnAController.java
 *  설 명 : 마이 페이지의 1:1 문의(조회,작성,수정,삭제)를 위한 Controller클래스
 *  작성자 : 한요한
 *  작성일 : 2024. 05. 17
 *  최종 수정일 : 2024. 05. 22
 */
@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping
public class QnAController {
	
	private final QnaService service;
	
	@GetMapping("qna")
	public String retrieveQnaList(
//			@PathVariable("userNo") String userNo
			Authentication authentication
			, Model model
			, @RequestParam(required = false, defaultValue = "1", name = "currentPage") int currentPage
			, @ModelAttribute("condition") SimpleCondition simplecondition
//			, @ModelAttribute("paginationInfo") PaginationInfo paging
	) {
		//authentication 객체를 이용해서 principal을 사용하는 방법
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		String userNo = vo.getUserNo();
		String funcName = "paging";
		
		PaginationInfo paging = new PaginationInfo(5, 5);
		paging.setUserNo(userNo);
		paging.setCurrentPage(currentPage);
		paging.setSimpleCondition(simplecondition);
		model.addAttribute("simplecondition", simplecondition);
		model.addAttribute("pagingFunction", funcName);
		List<QnaVO> QnaList = service.retrieveQnaList(paging);
		log.info("넘어가기전 list정보 ==>{}",QnaList);
		
		// scope
		model.addAttribute("QnaList", QnaList);
		
		PaginationRenderer render = new MypagePaginationRender();
		model.addAttribute("pagingHTML", render.renderPagination(paging, funcName));
		return "mds/mypage/qna";
	}
	
	
	@GetMapping("qnaDetail/{pstNo}")
	public String retrieveQnaDetail(
			@PathVariable("pstNo") String pstNo
			, Model model
	) {
		QnaVO vo = new QnaVO();
		List<QnaReplyVO> rvo = new ArrayList<>();
		
		vo.setPstNo(pstNo);
		vo = service.retrieveQna(vo);
		model.addAttribute("postVO", vo);
		
		//게시글 댓글정보 조회
		rvo = service.retrieveQnaReply(pstNo);
		log.info("넘어갈 vo값==>{}",rvo);
		model.addAttribute("replyVOList", rvo);
		
		return "mds/mypage/qnaDetail";
	}
	
	
	////////////////////등록//////////////////////
	@GetMapping("qna/create")
	public String createQnaForm() {
		return "mds/mypage/qnaForm";
	}
	
	@ResponseBody
	@PostMapping("qna/create")
	public String createQna(@RequestBody QnaVO vo) {
		log.info("넘어온 vo값==>{}",vo);
		int cnt = service.createQna(vo);
		if(cnt > 0) {
			return "ok";
		}
		return "fail";
	}
	
	
	////////////////////수정//////////////////////
	@GetMapping("qna/modify/{pstNo}")
	public String modifyQnaForm(
			@PathVariable("pstNo") String pstNo
			, Model model
	) {
		log.info("넘어온pstNo값 ==>{}",pstNo);
		QnaVO vo = new QnaVO();
		vo.setPstNo(pstNo);
		vo = service.retrieveQna(vo);
		model.addAttribute("postVO", vo);
		return "mds/mypage/qnaForm";
	}
	
	@ResponseBody
	@PostMapping("qna/modify")
	public String modifyQna(@RequestBody QnaVO vo) {
		log.info("넘어온 vo값==>{}",vo);
		int cnt = service.modifyQna(vo);
		if(cnt > 0) {
			return "ok";
		}
		return "fail";
	}
	
	////////////////////삭제//////////////////////
	@ResponseBody
	@PostMapping("qna/remove")
	public String removeQna(
			@RequestBody QnaVO inputData
	) {
		log.info("넘어온pstNo값 ==>{}",inputData);
		int cnt = service.removeQna(inputData);
		if(cnt > 0) {
			return "ok";
		}
		return "fail";
	}
	
	
	
	
}



