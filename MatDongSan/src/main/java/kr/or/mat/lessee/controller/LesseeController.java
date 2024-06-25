package kr.or.mat.lessee.controller;

import java.util.List;
import java.util.Map;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.mat.lessee.complaints.service.ComplaintsServiceImpl;
import kr.or.mat.lessee.complaints.vo.ComplaintsVO;
import kr.or.mat.lessee.contractRent.service.ContractRentServiceImpl;
import kr.or.mat.lessee.contractRent.vo.ContractRentVO;
import kr.or.mat.lessee.payData.service.PayDataServiceImpl;
import kr.or.mat.lessee.payData.vo.PayDataVO;
import kr.or.mat.login.vo.AuthUserVO;
import kr.or.mat.login.vo.UserVOWrapper;
import kr.or.mat.paging.BootstrapPaginationRender;
import kr.or.mat.paging.CommunityPaginationRender;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.paging.PaginationRenderer;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/lessee")
public class LesseeController {
	
	private final ComplaintsServiceImpl comService;
	private final ContractRentServiceImpl conService;
	
//	임차인 
	@GetMapping("lesseeMain")
	public String lesseeMain(Authentication authentication, Model model
						,@RequestParam(required = false, defaultValue = "1") int currentPage
						, @RequestParam Map<String, Object> detailConditions
			){
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		
		PaginationInfo paging = new PaginationInfo(5,5);
		paging.setCurrentPage(currentPage);
		log.info("현재페이지 {}",currentPage);
		detailConditions.put("lesseeNo", vo.getUserNo());
		paging.setDetailConditions(detailConditions);
		
		List<ComplaintsVO> complaintList = comService.retrieveListComplaints(paging);
		
		model.addAttribute("detailConditions", detailConditions);//검색어 담는 부분 
		model.addAttribute("complaintList", complaintList);//임차인민원
		
		PaginationRenderer render = new BootstrapPaginationRender();
		model.addAttribute("pagingHTML", render.renderPagination(paging, null));
		log.info("현재페이지{}", paging);
		//납부데이터 데이터값 구하깅
		List<ContractRentVO> contractDataList = conService.retrieveContractRentList(paging);
		model.addAttribute("contractDataList", contractDataList);
		log.info("갱무리체킁!{}", complaintList);
		log.info("갱무리체킁킁!{}", contractDataList);
		return "mdshub/lessee/lesseeMain";
	}
	

	
}
