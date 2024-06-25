package kr.or.mat.rentPayData.controller;

import java.time.LocalDate;
import java.time.Month;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
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

import kr.or.mat.login.vo.AuthUserVO;
import kr.or.mat.login.vo.UserVOWrapper;
import kr.or.mat.paging.BootstrapPaginationRender;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.paging.PaginationRenderer;
import kr.or.mat.paging.PayDataPaginationRender;
import kr.or.mat.rentBuilding.vo.RentBldgVO;
import kr.or.mat.rentContract.controller.RentContractController;
import kr.or.mat.rentContract.service.RentContractService;
import kr.or.mat.rentContract.vo.RentContractVO;
import kr.or.mat.rentPayData.service.RentPayDataService;
import kr.or.mat.rentPayData.vo.RentPayDataVO;
import kr.or.mat.rentRoom.vo.RentRoomVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/**
 *  파일명 : RentPayDataController.java
 *  설 명 : 납부데이터(예정포함) 정보 CRUD를 위한 controller클래스
 *  작성자 : 이성경 
 *  작성일 : 2024. 05. 31
 *  최종 수정일 : 2024. 05. 31
 */
@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/lessor/payData")
public class RentPayDataController {
	@Autowired
	private RentContractService rcservice;
	@Autowired
	private RentPayDataService payservice;
	
	@GetMapping("{payNo}")
	public String payDataOne(@PathVariable String payNo, Model model,Authentication authentication) {
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		String userNo = vo.getUserNo();
		RentPayDataVO rentpayData = new RentPayDataVO();
		RentPayDataVO dataOne = new RentPayDataVO();
		RentContractVO rctvo = new RentContractVO();
		RentRoomVO rvo = new RentRoomVO();
		RentBldgVO bldgvo = new RentBldgVO();
		
		bldgvo.setUserNo(userNo);
		rvo.setRentBldg(bldgvo);
		rctvo.setRentRoom(rvo);
		rentpayData.setRentContract(rctvo);
		rentpayData.setPayNo(payNo);
		
		dataOne = payservice.retrievePayDataOne(rentpayData);
		String sort =  dataOne.getRentContract().getCtpVatApplcYn();
		long imdae =  dataOne.getRentContract().getMhlAmt();
		long gwan =  dataOne.getRentContract().getManagectAmt();
		long boogaI = 0;
		long boogaG = 0;
		if(sort.equals("모두 적용")) {
			boogaI = (long) (imdae * 0.1);
			imdae = imdae - boogaI;
			boogaG = (long) (gwan * 0.1);
			gwan = gwan - boogaG;
			dataOne.getRentContract().setMhlAmt(imdae);
			dataOne.getRentContract().setManagectAmt(gwan);
			dataOne.setBoogase(boogaI+boogaG);
		}
		else if(sort.equals("임대료만 적용")) {
			boogaI = (long) (imdae * 0.1);
			imdae = imdae - boogaI;
			dataOne.getRentContract().setMhlAmt(imdae);
			dataOne.setBoogase(boogaI);
		}
		else if(sort.equals("관리비만 적용")) {
			boogaG = (long) (gwan * 0.1);
			gwan = imdae - boogaG;
			dataOne.getRentContract().setManagectAmt(gwan);
			dataOne.setBoogase(boogaG);
		}
		
		model.addAttribute("pay",dataOne);
		return "/mdshub/lessor/modalPaydata";
	}
		
	@GetMapping
	public String payDataBG(Model model,
			@RequestParam(required = false, defaultValue = "1") int currentPage
			, @ModelAttribute("paginationInfo") PaginationInfo paging
			,@RequestParam Map<String, Object> detailConditions
			, Authentication authentication) {
		
		log.info("여기까지왔나?");
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		String userNo = vo.getUserNo();
		String funcName = "paging";
		log.info("user체킁:{}",userNo);
		
//		PaginationInfo paging = new PaginationInfo(1,1);
		PaginationRenderer render = new PayDataPaginationRender();
		paging.setCurrentPage(currentPage);
		paging.setUserNo(userNo);
		paging.setDetailConditions(detailConditions);
		detailConditions.put("userNo", userNo);
		List<RentPayDataVO> payDataList = payservice.retrievePayDataAllList(paging);
		
		
		model.addAttribute("pagingFunction", funcName);
		model.addAttribute("detailConditions", detailConditions);
		model.addAttribute("payDataList", payDataList);
		model.addAttribute("pagingHTML", render.renderPagination(paging, funcName));
		
		log.info("payDataList 체킁!{}", payDataList);
		return "mdshub/lessor/payData";
	}
	
	@PostMapping("{payno}/{payde}")
	@ResponseBody
	public String updateMidway(@PathVariable String payde, @PathVariable String payno) {
		log.info("받은날짜:{}",payde);
		log.info("받은번호:{}",payno);
		RentPayDataVO pay = new RentPayDataVO();
		pay.setPayDe(payde);
		pay.setPayNo(payno);
		int cnt = payservice.updatePayDe(pay);
		log.info("cnt:{}",cnt);
		String result = "";
		if(cnt>0) {
			result ="success";
		}else {
			result ="fail";
		}
		return result;
	}
	
//	@ResponseBody
//	@GetMapping("/data")
//	public List<RentContractVO> payData(Authentication authentication) {
//		log.info("여기까지왔나?");
//		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
//		AuthUserVO vo = wrapper.getRealUser();
//		String userNo = vo.getUserNo();
//		RentContractVO rctvoIng = new RentContractVO(); //입주중
//		RentBldgVO bldgvo = new RentBldgVO(); //건물정보
//		RentRoomVO roomvo = new RentRoomVO(); //방정보
//		List<RentPayDataVO> rentPay = new ArrayList<RentPayDataVO>(); //납부데이터정보
//		
//		//청구서 개월수 계산
//		String start = rctvoIng.getDctBgng();
//		String end = rctvoIng.getDctEnd();
//		String[] s = start.split("-");
//		String[] e = end.split("-");
//		
//		rctvoIng.getDctBgng();
//		
//		
//		
//		bldgvo.setUserNo(userNo);
//		roomvo.setRentBldg(bldgvo);
//		//입주중
//		rctvoIng.setCntrctStts("RSTTS01");
//		rctvoIng.setRentRoom(roomvo);
//		//입주중인 계약 리스트
//		
//		List<RentContractVO> rentContractIngList = rcservice.retrieveAllRentContract(rctvoIng);
//		log.info("너는 무슨데이터?:{}",rentContractIngList);
//		return rentContractIngList;
//	}

}
