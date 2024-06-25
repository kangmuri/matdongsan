package kr.or.mat.rentRoom.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.mat.login.vo.AuthUserVO;
import kr.or.mat.login.vo.UserVOWrapper;
import kr.or.mat.rentBuilding.mapper.BuildingMapper;
import kr.or.mat.rentBuilding.service.BuildingService;
import kr.or.mat.rentBuilding.vo.RentBldgVO;
import kr.or.mat.rentContract.service.RentContractService;
import kr.or.mat.rentContract.vo.RentContractVO;
import kr.or.mat.rentRoom.service.RentRoomInsertProcessService;
import kr.or.mat.rentRoom.service.RentRoomService;
import kr.or.mat.rentRoom.vo.RentRoomDTO;
import kr.or.mat.rentRoom.vo.RentRoomVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
/**
 *  파일명 : RentRoomController.java
 *  설 명 : 임대관리 시스템 방정보 CRUD를 위한 controller클래스
 *  작성자 : 이성경 
 *  작성일 : 2024. 05. 16
 *  최종 수정일 : 2024. 05. 20
 *  수정내용 : 
 */



@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/lessor/roomInfo")
public class RentRoomController { 
	@Autowired
	private RentRoomService rentRoomservice;
	@Autowired
	private BuildingService buildingService;
	@Autowired
	private RentRoomInsertProcessService rentRoomProcessService;
	@Autowired
	private RentContractService rentContractService;
	

		// 방 전체 조회
		@GetMapping()
		public String retrieveRoomList(){
			return "/mdshub/lessor/roomOne";
		}
	
		// 방 등록 모달
		@GetMapping("addR/{rentBldgNo}")
		public String roomModal(@PathVariable String rentBldgNo, Model model){
			log.info("전송받은 rentBldgNo = {}", rentBldgNo);
			RentBldgVO bldgVo = buildingService.retrieveBuilding(rentBldgNo);
			model.addAttribute("buildingOne", bldgVo);
			return "/mdshub/lessor/modalRoom";
		}
		 
		// 방 단건 조회
		@GetMapping("{rentRoomNo}")
		public String retrieveRoom(@PathVariable String rentRoomNo, Model model){
			RentContractVO rctvoIng = new RentContractVO(); //입주중
			RentContractVO rctvoPre = new RentContractVO(); //입주예정
			RentContractVO rctvoEnd = new RentContractVO(); //계약만료
			//입주중
			rctvoIng.setRentRoomNo(rentRoomNo);
			rctvoIng.setCntrctStts("RSTTS01");		
			//입주예정
			rctvoPre.setRentRoomNo(rentRoomNo);
			rctvoPre.setCntrctStts("RSTTS02");
			//계약만료
			rctvoEnd.setRentRoomNo(rentRoomNo);
			rctvoEnd.setCntrctStts("RSTTS04");
			
			String cntrctrNm = rctvoIng.getCntrctrNm();
			
			log.info("전송받은 rentRoomNo = {}", rentRoomNo);
			RentRoomVO rentRoomVO = rentRoomservice.retrieveRentRoom(rentRoomNo);
			RentBldgVO bldgVO = buildingService.retrieveBuilding(rentRoomVO.getRentBldgNo());
			
			//입주중인 계약 리스트
			List<RentContractVO> rentContractIngList = rentContractService.retrieveRentRoomCntrtList(rctvoIng);
			//입주예정 계약 리스트
			List<RentContractVO> rentContractPreList = rentContractService.retrieveRentRoomCntrtList(rctvoPre);
			//계약만료 계약 리스트
			List<RentContractVO> rentContractEndList = rentContractService.retrieveRentRoomCntrtList(rctvoEnd);
			
			model.addAttribute("rentRoomVO",rentRoomVO);
			model.addAttribute("RentBldgVO",bldgVO);
			model.addAttribute("cntrctrNm",cntrctrNm);
			model.addAttribute("rentContractIngList", rentContractIngList);
			model.addAttribute("rentContractPreList", rentContractPreList);
			model.addAttribute("rentContractEndList", rentContractEndList);
			
			return "/mdshub/lessor/roomOne";
		}
		
		
//		방 정보 등록
		@ResponseBody
		@PostMapping
		public Map<String,String> createRoom(
				@RequestBody RentRoomDTO roomParam, Model model, HttpSession session,
				Authentication authentication) {
			UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
			AuthUserVO vo = wrapper.getRealUser();
			String userNo = vo.getUserNo();
			log.info("room ==>  {}", roomParam.getRoomVO());
			log.info("rentRoom ==>  {}", roomParam.getRentRoomVO());
			log.info("roomLvlh ==>  {}", roomParam.getRoomLvlhList());
			log.info("file ==>  {}", roomParam.getFileArr());
			roomParam.getRoomVO().setUserNo(userNo);
			roomParam.getRentRoomVO().setUserNo(userNo);
			Map<String, String> result = new HashMap<>();
			String bldgNo = roomParam.getRentRoomVO().getRentBldgNo();
			session.setAttribute("prebldgNo", bldgNo);
			log.info("bldgNo얌 : {}",bldgNo);
			
			try {
				rentRoomProcessService.createRoomProcess(roomParam);
				result.put("success", "/");
				result.put("bldgNo",bldgNo);
				return result;
			}catch (Exception e) {
				result.put("fail", e.getMessage());
				return result;
			}
		}
		
}










