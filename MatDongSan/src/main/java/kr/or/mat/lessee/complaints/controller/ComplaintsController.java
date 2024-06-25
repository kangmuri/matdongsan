package kr.or.mat.lessee.complaints.controller;

import java.util.List;
import java.util.Map;

import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.mat.lessee.complaints.service.ComplaintsService;
import kr.or.mat.lessee.complaints.vo.ComplaintsVO;
import kr.or.mat.login.vo.AuthUserVO;
import kr.or.mat.login.vo.UserVOWrapper;
import kr.or.mat.paging.CommunityPaginationRender;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.paging.PaginationRenderer;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("lessee/complaints")
public class ComplaintsController {

	private final ComplaintsService service;
	
	@GetMapping
	public String retrieveListComplaints(Model model, Authentication authentication
			, @RequestParam(required = false, defaultValue = "1") int currentPage
			, @RequestParam Map<String, Object> detailConditions
//			, @ModelAttribute("paginationInfo") PaginationInfo paging
			) {
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		
		PaginationInfo paging = new PaginationInfo(5,5);
		paging.setCurrentPage(currentPage);
//		String funcName = "paging";
		
		detailConditions.put("lesseeNo", vo.getUserNo());
		paging.setDetailConditions(detailConditions);
		model.addAttribute("detailConditions", detailConditions);
		
		
		List<ComplaintsVO> complaintsList = service.retrieveListComplaints(paging);
		List<ComplaintsVO> bldgList = service.retrieveBldgList(vo.getUserNo());
		PaginationRenderer render = new CommunityPaginationRender();
		log.info("건물확인{}", bldgList);
		model.addAttribute("complaintsList", complaintsList);
		model.addAttribute("bldgList", bldgList);
		model.addAttribute("pagingHTML", render.renderPagination(paging, null));
		
		log.info("갱무리체킁{}", complaintsList);
		return "mdshub/lessee/complaints";
	}
	@GetMapping("/{cvlcpNo}")
	public String retrieveComplaints(@PathVariable String cvlcpNo, Model model) {
		ComplaintsVO complaintsDetail = service.retrieveComplaints(cvlcpNo);
		model.addAttribute("complaintsDetail", complaintsDetail);
		log.info("갱무리체킁{}", complaintsDetail);
		return "mdshub/lessee/complaintsDetail";
	}

	@GetMapping("/form")
	public String createComplaintsForm(Model model, Authentication authentication) {
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		
		List<ComplaintsVO> bldgList = service.retrieveBldgList(vo.getUserNo());
		model.addAttribute("bldgList", bldgList);
		return "mdshub/lessee/complaintsForm";
	}
	
	@ResponseBody
	@PostMapping(produces =  MediaType.TEXT_PLAIN_VALUE)
	public String createComplaints(
			@RequestBody ComplaintsVO complaints,
			Authentication authentication
			
	) {
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		
		
		complaints.setLesseeNo(vo.getUserNo());
		 log.info("체크: {}",complaints);
		int cnt = service.createComplaints(complaints);
		String result = "";
		if(cnt>0) {
			result = "success";
		}else {
			result = "fail";
		}
		return result;
	}
//	
//	@ResponseBody
//	@PostMapping(value="/create",produces = "application/json;charset=utf-8")
//	public ComplaintsVO createComplaints(@RequestBody ComplaintsVO complaints) {
//		log.info("체킁: {}",complaints);
//		service.createComplaints(complaints);
//		//return "mdshub/lessee/complaints";
//		return complaints;
//	}
//	
	@GetMapping("/modifyForm/{cvlcpNo}")
	public String modifyComplaintsForm(@PathVariable String cvlcpNo, Model model) {
		ComplaintsVO complaintsDetail = service.retrieveComplaints(cvlcpNo);
//		complaints.setCvlcpNo("COM001");
		model.addAttribute("complaintsDetail", complaintsDetail);
		return "mdshub/lessee/complaintsFormEdit";
	}
	
	@ResponseBody
	@PutMapping
	public String modifyComplaints(@RequestBody ComplaintsVO complaints) {
		ComplaintsVO content = service.retrieveComplaints(complaints.getCvlcpNo());
		int cnt = service.modifyComplaints(complaints);
		String result = "";
		if(cnt>0) {
			result = "success";
		}else {
			result = "fail";
		}
		return result;
	}

	@ResponseBody
	@DeleteMapping
	public String removeComplaints(@RequestBody ComplaintsVO vo ) {//오브젝트로 보냈기때문에 오브젝트로받아야함 내가 오브젝트로 보내고String으로 받으려고 해서 오류남 
		log.info("값나와:{}", vo);
		
		int cnt = service.removeComplaints(vo.getCvlcpNo());
		String result = "";
		if(cnt>0) {
			result = "success";
		}else {
			result = "fail";
		}
		return result;
	}
	
}
