package kr.or.mat.rentContract.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.or.mat.index.service.IndexService;
import kr.or.mat.login.vo.AuthUserVO;
import kr.or.mat.login.vo.UserVOWrapper;
import kr.or.mat.rentBuilding.service.BuildingService;
import kr.or.mat.rentBuilding.vo.RentBldgVO;
import kr.or.mat.rentContract.service.RentContractService;
import kr.or.mat.rentContract.vo.RentContractVO;
import kr.or.mat.rentRoom.service.RentRoomService;
import kr.or.mat.rentRoom.vo.RentRoomVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/**
 *  파일명 : RentContractController.java
 *  설 명 : 임대관리 계약 정보 CRUD를 위한 controller클래스
 *  작성자 : 이성경 
 *  작성일 : 2024. 05. 21
 *  최종 수정일 : 2024. 05. 30
 *  수정내용 : 계약 전체 조회
 */
@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/lessor/cntrctInfo")
public class RentContractController {
	@Autowired
	private RentRoomService rservice;
	@Autowired
	private BuildingService bservice;
	@Autowired
	private RentContractService rcservice;
	@Autowired
	private IndexService iservice;
	
	
	
//	임대현황 메인배경	
	@GetMapping
	public String rentInfoBG(Model model, Authentication authentication){
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		String userNo = vo.getUserNo();
		Map<String, Object> mainMap = iservice.mainToptotalCount(userNo);
		model.addAttribute("mainMap", mainMap);
		return "mdshub/lessor/rentInfoBG";
	}
//	임대현황 계약 전체 리스트 (5/30 작업중)
	@GetMapping("all")
	public String rentInfo(Model model, Authentication authentication ){
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		String userNo = vo.getUserNo();
		
		//계정 한개가 가지고 있는 모든 계약 조회
		RentContractVO rctvoIng = new RentContractVO(); //입주중
		RentContractVO rctvoPre = new RentContractVO(); //입주예정
		RentContractVO rctvoMid = new RentContractVO(); //중도퇴실
		RentContractVO rctvoEnd = new RentContractVO(); //계약만료
		RentBldgVO bldgvo = new RentBldgVO();
		RentRoomVO roomvo = new RentRoomVO();
		bldgvo.setUserNo(userNo);
		roomvo.setRentBldg(bldgvo);
		//입주중
		rctvoIng.setCntrctStts("RSTTS01");
		rctvoIng.setRentRoom(roomvo);
		//입주예정
		rctvoPre.setCntrctStts("RSTTS02");
		rctvoPre.setRentRoom(roomvo);
		//중도퇴실
		rctvoMid.setCntrctStts("RSTTS03");
		rctvoMid.setRentRoom(roomvo);
		//계약만료
		rctvoEnd.setCntrctStts("RSTTS04");
		rctvoEnd.setRentRoom(roomvo);
		
		//입주중인 계약 리스트
		List<RentContractVO> rentContractIngList = rcservice.retrieveAllRentContract(rctvoIng);
		//입주예정 계약 리스트
		List<RentContractVO> rentContractPreList = rcservice.retrieveAllRentContract(rctvoPre);
		//중도퇴실 계약 리스트
		List<RentContractVO> rentContractMidList = rcservice.retrieveAllRentContract(rctvoMid);
		//계약만료 계약 리스트
		List<RentContractVO> rentContractEndList = rcservice.retrieveAllRentContract(rctvoEnd);
		
		//건물 리스트
		List<RentBldgVO> rentBldgList = bservice.selectBuildingOption(userNo);
		
		model.addAttribute("rentContractIngList", rentContractIngList);
		model.addAttribute("rentContractPreList", rentContractPreList);
		model.addAttribute("rentContractMidList", rentContractMidList);
		model.addAttribute("rentContractEndList", rentContractEndList);
		model.addAttribute("rentBldgList", rentBldgList);
		return "/mdshub/lessor/rentList";
	}
	
	
	@GetMapping("{cntrctRentNo}")
	public String retrieveRent(@PathVariable String cntrctRentNo, Model model){
		log.info("전송받은 url값 = {}", cntrctRentNo);
		RentContractVO contract = rcservice.retrieveRentContract(cntrctRentNo);
		String bumwe = contract.getCtpVatApplcYn(); //부가세 적용 범위
		long imdae = contract.getMhlAmt(); //임대료
		long gwan = contract.getManagectAmt(); //관리비
		long booga = 0;
        
        
        // 부가세 비율을 100을 곱한 상태로 계산
        int taxRate = 10;
        if (bumwe.equals("BOOGA01")) { // 부가세 모두 적용
        	booga = (imdae * taxRate / 100) + (gwan * taxRate / 100);
        } else if (bumwe.equals("BOOGA02")) { // 임대료만 적용
            booga = imdae * taxRate / 100;
        } else if (bumwe.equals("BOOGA03")) { // 관리비만 적용
            booga = imdae * taxRate / 100;
        }
        contract.setBooga(booga);
		model.addAttribute("contract", contract);
		model.addAttribute("booga",booga);
		return "/mdshub/lessor/rentOne";
	}
	
	//계약 등록폼 이동
	@GetMapping("addC/{rentRoomNo}")
	public String contractModal(@PathVariable String rentRoomNo,Model model){
		log.info("전송받은 rentRoomNo = {}", rentRoomNo);
		RentRoomVO rentRoomVO = rservice.retrieveRentRoom(rentRoomNo);
		RentBldgVO bldgVO = bservice.retrieveBuilding(rentRoomVO.getRentBldgNo()); 
		model.addAttribute("rentRoomVO",rentRoomVO);
		model.addAttribute("rentBldgVO",bldgVO);
		return "/mdshub/lessor/modalContract";
	}
	
	//계약 등록
	@PostMapping
	@ResponseBody
	public String createRentContract(@RequestBody RentContractVO rentContractVO) {
		int cnt = rcservice.createRentContract(rentContractVO);
		String result = "";
		if(cnt>0) {
			result ="success";
		}else {
			result ="fail";
		}
		return result; 
	}

		
	//임차인 보안코드 insert
	@PostMapping("secure")
	@ResponseBody
	public String updateConnectLessee(@RequestBody RentContractVO rentContractVO) {
		log.info("보안코드 전송받은 rentContractVO = {}", rentContractVO);
		int cnt = rcservice.modifyConnectLessee(rentContractVO);
		String result = "";
		if(cnt>0) {
			result ="success";
		}else {
			result ="fail";
		}
		return result; 
	}
	
	@GetMapping("check/{code}")
	@ResponseBody
	public String checkCode(@PathVariable String code) {
		log.info("(인증시)보안코드 전송받은 rentRoomNo = {}", code);
		String result = rcservice.retrieveCheckCode(code);
		if(result=="fail") {
			result = "fail";
		}else {
			return result;
		}
		return result; 
	}
	
	@PostMapping("insert/{secureCode}")
	@ResponseBody
	public String updateLesseeNo(@PathVariable String secureCode, Authentication authentication ) {
		log.info("마지)보안코드 전송받은 rentRoomNo = {}", secureCode);
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		String userNo = vo.getUserNo();
		
		RentContractVO contract= new RentContractVO();
		contract.setLesseeNo(userNo);
		contract.setSecureCode(secureCode);
		
		int cnt = rcservice.modifyLesseeNo(contract);
		String result = "";
		if(cnt>0) {
			result ="success";
		}else {
			result ="fail";
		}
		return result;  
	}
	
	@PostMapping("{cntrctRentNo}/{midwayDate}")
	@ResponseBody
	public String updateMidway(@PathVariable String midwayDate, @PathVariable String cntrctRentNo) {
		log.info("받은날짜:{}",midwayDate);
		log.info("받은번호:{}",cntrctRentNo);
		RentContractVO contract= new RentContractVO();
		contract.setMidwayDt(midwayDate);
		contract.setCntrctRentNo(cntrctRentNo);
		int cnt = rcservice.updateMidway(contract);
		log.info("cnt:{}",cnt);
		String result = "";
		if(cnt>0) {
			result ="success";
		}else {
			result ="fail";
		}
		return result;
	}
	
}
