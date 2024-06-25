package kr.or.mat.rentBuilding.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.xml.ws.RespectBinding;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
 *  파일명 : BuildingController.java
 *  설 명 : 건물정보 CRUD를 위한 controller클래스
 *  작성자 : 이성경 
 *  작성일 : 2024. 05. 14
 *  최종 수정일 : 2024. 05. 20
 *  수정내용 : createBuilding 추가
 */
@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/lessor/buildingInfo")
public class BuildingController {
	
	@Autowired
	private BuildingService bservice;
	
	@Autowired
	private RentRoomService rservice;
	
	@Autowired
	private RentContractService rentContractService;
	
	
//	건물정보 메인배경	
	@GetMapping
	public String buildingBG(@SessionAttribute(required = false) String prebldgNo, Model model
			, HttpSession session){
		model.addAttribute("rentBldgNo", prebldgNo);
		session.removeAttribute("prebldgNo");
		return "mdshub/lessor/buildingBG";
	}
	
//	건물 전체 리스트 
	@GetMapping("all")
	public String buildingInfo(Model model, Authentication authentication ){
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		String userNo = vo.getUserNo();
		List<RentBldgVO> buildingList = bservice.retrieveBuildingList(userNo);
		model.addAttribute("buildingList", buildingList);
		return "/mdshub/lessor/buildingList";
	}
	
// 건물 등록 모달 
	@GetMapping("addB")
	public String buildingModal(){
		return "/mdshub/lessor/modalBuilding";
	}

//	건물정보 단건 조회 
	@GetMapping("{rentBldgNo}")
	public String retrieveBuilding(@PathVariable String rentBldgNo, Model model){
		log.info("전송받은 url값 = {}", rentBldgNo);
		List<RentRoomVO> RSTTS01List = rservice.rentRoomRSTTS01byBuilding(rentBldgNo);
		int rsroomcnt = RSTTS01List.size();
		RentContractVO rctvoIng = new RentContractVO(); //입주중
		RentContractVO rctvoPre = new RentContractVO(); //입주예정
		RentContractVO rctvoEnd = new RentContractVO(); //계약만료
		RentRoomVO rvo = new RentRoomVO();
		//입주중
		rvo.setRentBldgNo(rentBldgNo);
		rctvoIng.setRentRoom(rvo);
		rctvoIng.setCntrctStts("RSTTS01");		
		//입주예정
		rvo.setRentBldgNo(rentBldgNo);
		rctvoPre.setRentRoom(rvo);
		rctvoPre.setCntrctStts("RSTTS02");
		//계약만료
		rvo.setRentBldgNo(rentBldgNo);
		rctvoEnd.setRentRoom(rvo);
		rctvoEnd.setCntrctStts("RSTTS04");
				
		RentBldgVO bldgVO = bservice.retrieveBuilding(rentBldgNo); 
		int endRoomCnt = rentContractService.selectEndRoom(rentBldgNo);
		List<RentRoomVO> rentRoomList = rservice.retrieveRentRoomList(rentBldgNo);
		
		
		int roomCnt = rentRoomList.size();
		List<RentContractVO> gongsil = rentContractService.selectBuildingGongsil(rentBldgNo);
		List<RentContractVO> gongsil2 = rentContractService.selectBuildingGongsil2(rentBldgNo);
		int gongsilCnt = gongsil.size();
		int gongsilCnt2 = gongsil2.size();
		int summ = gongsilCnt + gongsilCnt2;
		int jjinsgonsilcnt = rservice.jjinmakGonsil(rentBldgNo);
		
		 // 층별로 그룹화
	    Map<Long, List<RentRoomVO>> floorMap = rentRoomList.stream()
	            .collect(Collectors.groupingBy(rentRoom -> rentRoom.getRoom().getRoomFloor()));
	    model.addAttribute("floorMap", floorMap);
	    model.addAttribute("roomCnt",roomCnt); //한 빌딩 내 호실 
	    model.addAttribute("rsroomcnt",rsroomcnt); //현재 입주중인 호실 
	    model.addAttribute("endRoomCnt",endRoomCnt); 
	    model.addAttribute("gongsilCnt",jjinsgonsilcnt); 

	   
		
		//입주중인 계약 리스트
		List<RentContractVO> rentContractIngList = rentContractService.retrieveRentBldgCntrtList(rctvoIng);
		//입주예정 계약 리스트
		List<RentContractVO> rentContractPreList = rentContractService.retrieveRentBldgCntrtList(rctvoPre);
		//계약만료 계약 리스트
		List<RentContractVO> rentContractEndList = rentContractService.retrieveRentBldgCntrtList(rctvoEnd);
		
		log.info("roomVO {}:",rentRoomList);
		model.addAttribute("rentRoomList", rentRoomList);
		model.addAttribute("rentBldgNo", rentBldgNo);
		model.addAttribute("bldgVO", bldgVO);
		model.addAttribute("rentContractIngList", rentContractIngList);
		model.addAttribute("rentContractPreList", rentContractPreList);
		model.addAttribute("rentContractEndList", rentContractEndList);
		
		return "/mdshub/lessor/buildingOne";
	}
	
//	건물정보 등록 
	@ResponseBody
	@PostMapping(produces=MediaType.APPLICATION_JSON_VALUE)
	public Map<String,Object> createBuilding(@RequestBody RentBldgVO rentBldg,Authentication authentication,
			HttpSession session) {
		
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		String userNo = vo.getUserNo();
//		log.info("체크: {}",rentBldg);
		rentBldg.setUserNo(userNo);
		int cnt = bservice.createBuilding(rentBldg);
		String bldgNo = rentBldg.getRentBldgNo();
		session.setAttribute("prebldgNo", bldgNo);
		Map<String,Object> buildMap = new HashMap<String, Object>();
		if(cnt > 0) { 
			buildMap.put("success", true);
			buildMap.put("bldgNo", bldgNo);
		}else {
			buildMap.put("success", false);
		}
		return buildMap;
	}
	
//	건물정보 메인 
//	@GetMapping("cre")
//	public String buildingInfo2(Model model,Authentication authentication ){
//		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
//		AuthUserVO vo = wrapper.getRealUser();
//		String userNo = vo.getUserNo();
//		List<RentBldgVO> buildingList = bservice.retrieveBuildingList(userNo);
//		List<RentRoomVO> rentRoomList = rservice.retrieveRentRoomList(userNo);
//		model.addAttribute("buildingList", buildingList );
//		model.addAttribute("rentRoomList",rentRoomList);
//		return "/mdshub/lessor/buildingOne";
//	}
	
}
