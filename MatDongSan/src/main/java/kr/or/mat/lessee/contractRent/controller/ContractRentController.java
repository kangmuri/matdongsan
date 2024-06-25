package kr.or.mat.lessee.contractRent.controller;

import java.util.List;
import java.util.Map;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.mat.lessee.contractRent.service.ContractRentService;
import kr.or.mat.lessee.contractRent.vo.ContractRentVO;
import kr.or.mat.login.vo.AuthUserVO;
import kr.or.mat.login.vo.UserVOWrapper;
import kr.or.mat.paging.PaginationInfo;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("lessee/contractRent")
public class ContractRentController {
	
	final ContractRentService service;
	
	@GetMapping
	public String retrieveContractRentList(Model model,Authentication authentication
			,@RequestParam(required = false, defaultValue = "1") int currentPage
			, @RequestParam Map<String, Object> detailConditions
			){
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		
		PaginationInfo paging = new PaginationInfo(1,1);
		paging.setCurrentPage(currentPage);
		
		detailConditions.put("lesseeNo", vo.getUserNo());
		paging.setDetailConditions(detailConditions);
		model.addAttribute("detailConditions", detailConditions);
		
		List<ContractRentVO> contractRentList = service.retrieveContractRentList(paging);
		List<ContractRentVO> bldgList = service.retrieveRentBldgList(vo.getUserNo());
		model.addAttribute("contractRentList", contractRentList);
		model.addAttribute("bldgList", bldgList);
		log.info("여기{}", contractRentList);
		return "mdshub/lessee/contractRent";
	}
	
	@ResponseBody
	@GetMapping(value="/{cntrctRentNo}", produces = "application/json;charset=UTF-8")
	public ContractRentVO retrieveContractRent(@PathVariable String cntrctRentNo) {
		
		ContractRentVO contractRentDetail = new ContractRentVO();
		contractRentDetail = service.retrieveContractRent(cntrctRentNo);
		log.info("꿈도리{}", contractRentDetail);
		return contractRentDetail;
	}
}
