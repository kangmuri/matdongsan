package kr.or.mat.rentNotice.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
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

import kr.or.mat.attachFile.service.TbAttachFileService;
import kr.or.mat.attachFile.vo.TbAttachFileVO;
import kr.or.mat.lessee.community.vo.CommunityVO;
import kr.or.mat.login.vo.AuthUserVO;
import kr.or.mat.login.vo.UserVOWrapper;
import kr.or.mat.mypage.vo.QnaVO;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.paging.PaginationRenderer;
import kr.or.mat.paging.PayDataPaginationRender;
import kr.or.mat.rentBuilding.service.BuildingService;
import kr.or.mat.rentBuilding.vo.RentBldgVO;
import kr.or.mat.rentContract.vo.RentContractVO;
import kr.or.mat.rentNotice.service.RentNoticeLessorService;
import kr.or.mat.rentNotice.vo.RentNoticeVO;
import kr.or.mat.rentPayData.vo.RentPayDataVO;
import kr.or.mat.rentRoom.vo.RentRoomVO;
import kr.or.mat.util.file.AttachFileUtill;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("lessor/rentNotice")
public class RentNoticeLessorController {
	@Autowired
	RentNoticeLessorService service;
	@Autowired
	BuildingService bservice;
	@Autowired
	AttachFileUtill fileUtill;
	@Autowired
	TbAttachFileService fservice;

	/**
	 * 공지사항 삭제
	 */
	@ResponseBody
	@PostMapping("remove")
	public String removeNotice(@RequestBody RentNoticeVO notice) {
		log.info("넘어온pstNo값 ==>{}", notice);
		int cnt = service.removeRentNotice(notice);
		if (cnt > 0) {
			return "ok";
		}
		return "fail";
	}

	/**
	 * 공지사항 수정
	 */
	@ResponseBody
	@PostMapping("modify")
	public String modifyNotice(RentNoticeVO notice, Authentication authentication)
			throws IllegalStateException, IOException {
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		String userNo = vo.getUserNo();
		log.info("공지사항 수정값 확인 {}", notice);
//		fservice.deleteAttatch(notice.getUnityAtchmnflNo()); // 기존 첨부파일 지우기

//		MultipartFile[] uploadFiles = notice.getUploadFiles();
//		List<TbAttachFileVO> attachList = fileUtill.setAttachFile(uploadFiles);

		notice.setUserNo(userNo);
//		notice.setAttachFileList(attachList);
//		notice.getAttachFileList().forEach(attachFile -> {
//			attachFile.setUpdUserId(userNo);
//		});

		String result = "";
		int cnt = service.modifyRentNotice(notice);
		if (cnt > 0) {
			result = "success";
		} else {
			result = "fail";
		}
		return result;
	}

	/**
	 * 공지사항 수정 폼
	 */
	@GetMapping("modifyForm/{noticeNo}")
	public String modifyNoticeForm(@PathVariable String noticeNo, Model model, Authentication authentication) {
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		String userNo = vo.getUserNo();
		RentNoticeVO rentNotice = new RentNoticeVO();
		List<RentBldgVO> bldg = bservice.selectBuildingOption(userNo);
		rentNotice.setUserNo(userNo);
		rentNotice.setNoticeNo(noticeNo);
		rentNotice = service.retrieveRentNotice(rentNotice);
		model.addAttribute("bldg", bldg);
		model.addAttribute("notice", rentNotice);
		return "mdshub/lessor/rentNoticeFormEdit";
	}

	/**
	 * 공지사항 단건 조회
	 */
	@GetMapping("{noticeNo}")
	public String retrieveRentNotice(@PathVariable String noticeNo, Model model, Authentication authentication) {
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		String userNo = vo.getUserNo();
		RentNoticeVO rentNotice = new RentNoticeVO();
		RentNoticeVO newRentNotice = new RentNoticeVO();
		rentNotice.setNoticeNo(noticeNo);
		rentNotice.setUserNo(userNo);
		newRentNotice = service.retrieveRentNotice(rentNotice);
		model.addAttribute("notice", newRentNotice);
		log.info("notice 나오나요?{}", newRentNotice);
		return "mdshub/lessor/rentNoticeDetail";
	}

	/**
	 * 공지사항 전체 리스트
	 */
	@GetMapping
	public String retrieveAllRentNoticeList(
			@RequestParam(required = false, defaultValue = "1") int currentPage
			,@ModelAttribute("paginationInfo") PaginationInfo paging
			,@RequestParam Map<String, Object> detailConditions
			, Authentication authentication
			, Model model) {
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		String userNo = vo.getUserNo();
		String funcName = "paging";
		log.info("user체킁:{}", userNo);

		PaginationRenderer render = new PayDataPaginationRender();
		paging.setCurrentPage(currentPage);
		paging.setUserNo(userNo);
		paging.setDetailConditions(detailConditions);
		detailConditions.put("userNo", userNo);

		List<RentNoticeVO> notice = service.retrieveAllRentNoticeList(paging);
		List<RentBldgVO> bldg = bservice.selectBuildingOption(userNo);

		model.addAttribute("pagingFunction", funcName);
		model.addAttribute("detailConditions", detailConditions);
		model.addAttribute("pagingHTML", render.renderPagination(paging, funcName));
		model.addAttribute("notice", notice);
		model.addAttribute("bldg", bldg);
		return "mdshub/lessor/rentNotice";
	}

	/**
	 * 공지사항 등록하기
	 */
	@ResponseBody
	@PostMapping
	public String createRentNotice(Authentication authentication, Model model, RentNoticeVO rentNotice)
			throws IllegalStateException, IOException {
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		String userNo = vo.getUserNo();
//		log.info("첨부파도같이도착했어설마?:{}",rentNotice);
//		MultipartFile[] uploadFiles = rentNotice.getUploadFiles();
//		List<TbAttachFileVO> attachList = fileUtill.setAttachFile(uploadFiles);
		rentNotice.setUserNo(userNo);
//		rentNotice.setAttachFileList(attachList);
//		rentNotice.getAttachFileList().forEach(attachFile -> {
//			attachFile.setUpdUserId(userNo);
//		});

		int cnt = service.createRentNotice(rentNotice);
		String result = "";
		if (cnt > 0) {
			result = "success";
		} else {
			result = "fail";
		}

		return result;
	}
}
