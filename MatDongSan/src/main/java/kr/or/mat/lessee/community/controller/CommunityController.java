package kr.or.mat.lessee.community.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.or.mat.attachFile.vo.TbAttachFileVO;
import kr.or.mat.lessee.community.service.CommCommunityService;
import kr.or.mat.lessee.community.service.CommunityService;
import kr.or.mat.lessee.community.vo.CommentsVO;
import kr.or.mat.lessee.community.vo.CommunityVO;
import kr.or.mat.lessee.community.vo.PostingReportVO;
import kr.or.mat.login.vo.AuthUserVO;
import kr.or.mat.login.vo.UserVOWrapper;
import kr.or.mat.paging.BootstrapPaginationRender;
import kr.or.mat.paging.CommunityPaginationRender;
import kr.or.mat.paging.DefaultPaginationRenderer;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.paging.PaginationRenderer;
import kr.or.mat.paging.PayDataPaginationRender;
import kr.or.mat.paging.SimpleCondition;
import kr.or.mat.util.file.AttachFileUtill;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequiredArgsConstructor
@RequestMapping("/lessee/community")
public class CommunityController {

	private final CommunityService service;
	private final CommCommunityService commService;
	private final AttachFileUtill fileUtill;
	/**
	 * 커뮤니티 리스트 출력
	 * @param model
	 * @param currentPage
	 * @param simpleCondition
	 * @param authentication
	 * @return
	 */
	@GetMapping
	public String retriveCommunityList(Model model,
			@RequestParam(required = false, defaultValue = "1") int currentPage
			, @RequestParam Map<String, Object> detailConditions
			, Authentication authentication
			) {
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		
		PaginationInfo paging = new PaginationInfo(5,5);
		paging.setCurrentPage(currentPage);
		
		detailConditions.put("lesseeNo", vo.getUserNo());
		paging.setDetailConditions(detailConditions);
		
		List<CommunityVO> communityList = service.retrieveCommunityList(paging);
		List<String> bldgList = service.retrieveLesseeBldgList(vo.getUserNo());
		
		model.addAttribute("detailConditions", detailConditions);//검색어 담는 부분 
		model.addAttribute("communityList", communityList);
		model.addAttribute("bldgList", bldgList);
		
		PaginationRenderer render = new CommunityPaginationRender();
		model.addAttribute("pagingHTML", render.renderPagination(paging, null));
		log.info("체킁!{}", communityList);
		return "mdshub/lessee/community";
	}
	
	/**
	 * 커뮤니티 게시글 상세조회 
	 * @param pstNo
	 * @param model
	 * @return
	 */
	@GetMapping("/{pstNo}")
	public String retriveCommunity(@PathVariable String pstNo, Model model) {
		CommunityVO commDetail = service.retrieveCommunity(pstNo);
		List<CommentsVO> commentList = commService.retrieveCommentList(pstNo);
		log.info("갱무리{}", commentList);
		log.info("갱무리확인{}", commDetail);
		model.addAttribute("commDetail", commDetail);
		model.addAttribute("commentList", commentList);
		return "mdshub/lessee/communityDetail";
	}
	
	
	/**
	 * 커뮤니티 게시글 등록폼으로 이동
	 * @param searchType
	 * @param model
	 * @return
	 */
	@GetMapping("form")
	public String createCommunityForm(Model model, Authentication authentication) {
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		
		List<String> bldgList = service.retrieveLesseeBldgList(vo.getUserNo());
		
		model.addAttribute("bldgList", bldgList);
		return "mdshub/lessee/communityForm";
	}
	
	
	/**
	 * 커뮤니티 게시글 등록하기
	 * @param community
	 * @return
	 * @throws IOException 
	 * @throws IllegalStateException 
	 */
	@ResponseBody
	@PostMapping
	public String createCommunity(
			 CommunityVO community
			,Authentication authentication) throws IllegalStateException, IOException 
	{
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		log.info("comu-yj : {}", community );
		MultipartFile[] uploadFiles = community.getUploadFiles();
		
	    if(uploadFiles != null) { //파일이 없다면 파일 처리 해주는 코드 실행 안하기 
		
			List<TbAttachFileVO> attachList = fileUtill.setAttachFile(uploadFiles);
			community.setAttachFileList(attachList);
			log.info("comu : {}", community );
			community.getAttachFileList().forEach(attachFile ->{
						attachFile.setUpdUserId(vo.getUserNo());
					}
			);
	    }
		
		community.setUserNo(vo.getUserNo());
		log.info("커뮤니티글등록값 확인 {}", community);
		String result = "";
		int cnt = service.createCommunity(community);
		if(cnt >= 1) {
			result = "success";
		}else {
			result = "fail";
		}
		log.info("헤헤헤{}", result);
		return result;
	}
	
	
	/*커뮤니티 게시글 수정폼으로 이동*/
	@GetMapping("modifyForm/{pstNo}")
	public String modifyForm(
			@PathVariable String pstNo, Model model) {
		CommunityVO commDetail = new CommunityVO();
		commDetail = service.retrieveCommunity(pstNo);
		model.addAttribute("commDetail", commDetail);
		return "mdshub/lessee/communityFormEdit";
	}
	
	/*커뮤니티 게시글 수정하기*/
	@ResponseBody
	@PutMapping
	public String modifyCommunity(@RequestBody CommunityVO community
			,Authentication authentication) {
		String result = "";
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
			log.info("커뮤니티 수정값 확인 {}",community);
			int cnt = service.modifyCommunity(community);
			if(cnt > 0) {
				result = "success";
			}else {
				result = "fail";
			 }	
			return result;
		}
	
	/*커뮤니티 게시글 삭제하기*/
	@ResponseBody
	@DeleteMapping
	public String removeCommunity(@RequestBody CommunityVO community) {
		String result = "";
		log.info("체킁체킁체{}", community);
		int cnt = service.removeCommunity(community.getPstNo());
		if(cnt > 0) {
			result = "success";
		}else {
			result = "fail";
		}
		
		return result;
	}
	
	/**
	 * 게시글 신고
	 * @param pstReport
	 * @param authentication
	 * @return
	 */
	@ResponseBody
	@PostMapping(value="report",produces = MediaType.TEXT_PLAIN_VALUE)
	public String createReportPosting(@RequestBody PostingReportVO pstReport,
			 						  Authentication authentication) {
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		
		String result = "";
		pstReport.setWrtrNo(vo.getUserNo());
		
		int cnt = service.createPostingReport(pstReport);
		if(cnt > 0) {
			result ="success";
		}else {
			result = "fail";
		}
		return result;
		
	}
	
	/**
	 * 댓글 등록
	 * @param community
	 * @return
	 */
	@ResponseBody
	@PostMapping(value="comment" ,produces = MediaType.TEXT_PLAIN_VALUE)
	public String createComment(
			@RequestBody CommentsVO comment
			,Authentication authentication) 
	{
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		
		comment.setUserNoCmnt(vo.getUserNo());
		log.info("커뮤니티글등록값 확인 {}", comment);
		String result = "";
		int cnt = commService.createComment(comment);
		if(cnt >= 1) {
			result = "success";
		}else {
			result = "fail";
		}
		
		return result;
	}

}
