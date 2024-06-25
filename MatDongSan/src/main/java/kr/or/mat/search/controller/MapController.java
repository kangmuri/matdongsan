package kr.or.mat.search.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.mat.room.service.RoomDealingService;
import kr.or.mat.room.vo.RoomDealingVO;
import kr.or.mat.search.vo.CoordinateVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/search")
public class MapController {
	@Autowired
	RoomDealingService service;

	
	@GetMapping("map")
	public String mapRender(@RequestParam(defaultValue = "대전 중구 오류동") String word, @RequestParam(defaultValue = "127.4088921") double x,@RequestParam(defaultValue = "36.3250116") double y, Model model) {
		log.info("x: {}, y : {}, word : {}", x,y,word);
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("x", x);
		result.put("y", y);
		result.put("word", word);
		log.info("{}",result);
		model.addAllAttributes(result);
		log.info("model", model);
	
		return "mds/search/map";
	}
	
	@GetMapping("room")
	public List<RoomDealingVO> retrieveRoomDealingList(CoordinateVO coordinateVO) {
		log.info("coordinateVO : {}" , coordinateVO);
		if(coordinateVO.getParkingYn().isEmpty() || coordinateVO.getParkingYn().equals("null")) {
			coordinateVO.setParkingYn("N");
		}
		if(coordinateVO.getElvtrYn().isEmpty() || coordinateVO.getElvtrYn().equals("null")) {
			coordinateVO.setElvtrYn("N");
		}
		
		return service.retrieveSearchMapList(coordinateVO);
	}
	
	@GetMapping("room/{roomDealingNo}")
	public RoomDealingVO retrieveRoom(@PathVariable String roomDealingNo) {
		RoomDealingVO roomDealingVO = service.retrieveDetailRoom(roomDealingNo);
		return roomDealingVO;
	}
}
