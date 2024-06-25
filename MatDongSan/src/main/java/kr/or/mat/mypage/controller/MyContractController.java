package kr.or.mat.mypage.controller;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.mat.contract.service.ContractService;
import kr.or.mat.contract.vo.CntrctDealingVO;
import kr.or.mat.login.vo.UserVOWrapper;
import kr.or.mat.paging.MypagePaginationRender;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.paging.PaginationRenderer;
/**
 *  파일명 : MyContractController.java
 *  설 명 : 마이 페이지의 계약관리기능을 위한 Controller클래스
 *  작성자 : 한요한
 *  작성일 : 2024. 05. 10
 *  최종 수정일 : 2024. 06. 10
 */
@Controller
@RequestMapping("/myContract")
public class MyContractController {
	@Autowired
	private ContractService contractService;
	
	@GetMapping
	public String myContract() {
		return "mds/mypage/myContract";
	}
	
	@GetMapping("{active}")
	public Map<String,Object> retrieveCntrctDealingList(
			@PathVariable String active
			, Authentication authentication
			, @RequestParam(required = false, defaultValue = "1", name = "currentPage") int currentPage
	) {
		Map<String,Object> total = new LinkedHashMap<>();
		UserVOWrapper userVOWrapper = (UserVOWrapper) authentication.getPrincipal();
		List<CntrctDealingVO> cntList = new ArrayList<>();
		String funcName = "paging";
		PaginationInfo paging = new PaginationInfo(5, 5);
		
		
		PaginationRenderer render = new MypagePaginationRender();
		paging.setCurrentPage(currentPage);
		
		if(active.equals("lessor")) {
			paging.setLessorUserNo(userVOWrapper.getRealUser().getUserNo());
			cntList = contractService.retrieveCntrctDealingList(paging);
			total.put("cntList", cntList);
			total.put("pagingHTML", render.renderPagination(paging, funcName));
		}else if(active.equals("lessee")) {
			paging.setLesseeUserNo(userVOWrapper.getRealUser().getUserNo());
			cntList = contractService.retrieveCntrctDealingList(paging);
			total.put("cntList", cntList);
			total.put("pagingHTML", render.renderPagination(paging, funcName));
		}
		
		return total;
	}
	
	
}
