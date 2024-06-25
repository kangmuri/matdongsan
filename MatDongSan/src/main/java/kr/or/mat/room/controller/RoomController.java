package kr.or.mat.room.controller;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.mat.login.vo.UserVOWrapper;
import kr.or.mat.room.exception.RoomProcessException;
import kr.or.mat.room.mapper.RoomMapper;
import kr.or.mat.room.service.RoomDealingService;
import kr.or.mat.room.service.RoomInsertProcessService;
import kr.or.mat.room.service.RoomService;
import kr.or.mat.room.vo.RoomDealingVO;
import kr.or.mat.room.vo.RoomParamDTO;
import kr.or.mat.room.vo.RoomVO;
import lombok.extern.slf4j.Slf4j;
import oracle.jdbc.proxy.annotation.Post;

@Slf4j
@Controller
@RequestMapping("/room")
public class RoomController {
	
	@Autowired
	RoomInsertProcessService roomInsertProcessService;
	@Autowired
	RoomDealingService roomDealingService;

	@GetMapping
	public String createRoomPage() {
		return "mds/room/roomForm";
	}
	
	@GetMapping("modify")
	public String modifyRoomPage() {
		return "mds/room/roomUpdateForm";
	}
	
	@PostMapping
	@ResponseBody
	public Map<String, String> createRoom(@RequestBody RoomParamDTO roomParam) {
		log.info("room ==>  {}", roomParam.getRoomVO());
		log.info("roomDealing ==>  {}", roomParam.getRoomDealingVO());
		log.info("roomLvlh ==>  {}", roomParam.getRoomLvlhList());
		log.info("file ==>  {}", roomParam.getFileArr());
		
		Map<String, String> result = new HashMap<String, String>();
		
		try {
			roomInsertProcessService.createRoomProcess(roomParam);
			result.put("success", "/");
			return result;
		}catch (RoomProcessException e) {
			result.put("fail", e.getMessage());
			return result;
		}
	}
	
	@GetMapping("roomDealingList")
	public Map<String, String> retrieveRoomDealingUserList(Authentication authentication) {
		UserVOWrapper userVOWrapper = (UserVOWrapper) authentication.getPrincipal();
		Map<String, String> result = roomDealingService.retrieveRoomDealingUserList(userVOWrapper.getRealUser().getUserNo());
		return result;
	}
	
	@GetMapping("roomDealingInfo")
	public RoomDealingVO retrieveRoomDealingUserInfo(@RequestParam String roomDelngNo, Authentication authentication) {
		UserVOWrapper userVOWrapper = (UserVOWrapper) authentication.getPrincipal();
		String userNo = userVOWrapper.getRealUser().getUserNo();
		
		RoomDealingVO roomDealingVO = new RoomDealingVO();
		RoomVO roomVO = new RoomVO();
		roomVO.setUserNo(userNo);
		roomDealingVO.setRoomDelngNo(roomDelngNo);
		roomDealingVO.setRoom(roomVO);
		
		RoomDealingVO result = roomDealingService.retrieveRoomDealingUserInfo(roomDealingVO);
		
		return result;
		
	}
	
	@PostMapping("update")
	@ResponseBody
	public Map<String, String> ModifyRoom(@RequestBody RoomParamDTO roomParam, Authentication authentication) {
		log.info("room ==>  {}", roomParam.getRoomVO());
		log.info("roomDealing ==>  {}", roomParam.getRoomDealingVO());
		log.info("roomLvlh ==>  {}", roomParam.getRoomLvlhList());
		log.info("file ==>  {}", roomParam.getFileArr());
		log.info("oldfile ==>  {}", roomParam.getOldFileList());
		//작성자 구하기
		UserVOWrapper userVOWrapper = (UserVOWrapper) authentication.getPrincipal();
		String userNo = userVOWrapper.getRealUser().getUserNo();
		roomParam.setUserNo(userNo);
		
		Map<String, String> result = new HashMap<String, String>();
		
		try {
			roomInsertProcessService.modifyRoomProcess(roomParam);
			result.put("success", "/");
			return result;
		}catch (RoomProcessException e) {
			result.put("fail", e.getMessage());
			return result;
		}
	}
}
