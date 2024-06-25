package kr.or.mat.lessee.payData.controller;

import java.util.List;
import java.util.Map;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.mat.lessee.payData.service.PayDataService;
import kr.or.mat.lessee.payData.vo.PayDataVO;
import kr.or.mat.login.vo.AuthUserVO;
import kr.or.mat.login.vo.UserVOWrapper;
import kr.or.mat.paging.BootstrapPaginationRender;
import kr.or.mat.paging.CommunityPaginationRender;
import kr.or.mat.paging.DefaultPaginationRenderer;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.paging.PaginationRenderer;
import kr.or.mat.paging.SimpleCondition;
import kr.or.mat.rentNotice.vo.CntrctRentVO;
import kr.or.mat.rentNotice.vo.RentNoticeVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("lessee/payData")
public class PayDataController {

	private final PayDataService service;
	
	@GetMapping
	public String retrievePayDataList(Model model,
			@RequestParam(required = false, defaultValue = "1") int currentPage
			,Authentication authentication
			,@RequestParam Map<String, Object> detailConditions
			)
	{
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		
		PaginationInfo paging = new PaginationInfo(5, 5); 
		paging.setCurrentPage(currentPage);
		
		detailConditions.put("lesseeNo", vo.getUserNo());
		paging.setDetailConditions(detailConditions);
		model.addAttribute("detailConditions", detailConditions);
		
		List<PayDataVO> rentBldgList = service.retrieveRentBldgList(vo.getUserNo());
		List<PayDataVO> payDataList = service.retrievePayDataList(paging);
		log.info("키득 {}", detailConditions);
		model.addAttribute("rentBldgList", rentBldgList);
		model.addAttribute("payDataList", payDataList);
		
		PaginationRenderer render = new CommunityPaginationRender();
		model.addAttribute("pagingHTML", render.renderPagination(paging, null));
		return "mdshub/lessee/payData";
		
	}
	
	
	@ResponseBody
	@GetMapping(value="/{payNo}",produces = "application/json;charset=UTF-8")
	public PayDataVO retrievePayData(@PathVariable String payNo){
		PayDataVO payDataDetail = new PayDataVO();
//		CntrctRentVO contract = new CntrctRentVO();
//		contract.setCntrctRentNo("cr001");
		payDataDetail = service.retrievePayData(payNo);
		log.info("페이데이터 값 확인==>{}", payDataDetail);
		return payDataDetail;
		
	}
	
	
}
