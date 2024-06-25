package kr.or.mat.room.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Delayed;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.mat.room.mapper.RoomDealingMapper;
import kr.or.mat.room.vo.RoomDealingVO;
import kr.or.mat.search.vo.CoordinateVO;

/**
 * 
 * @author Seongmin Park
 * 작성내용 : 거래매물 CRUD 및 지도 검색
 * 작성일 24.05.19
 */
@Service
public class RoomDealingServiceImpl implements RoomDealingService {

	@Autowired
	private RoomDealingMapper mapper;
	
	@Override
	public int createRoomDealing(RoomDealingVO roomDealingVO) {
		return mapper.insertRoomDealing(roomDealingVO);
	}

	/**
	 * 지도 마커 출력 및 거래매물 리스트 조회
	 * 상세조회
	 */
	@Override
	public List<RoomDealingVO> retrieveSearchMapList(CoordinateVO coordinateVO) {
		return mapper.selectSearchMapList(coordinateVO);
	}

	/**
	 * 매물 상세 페이지 조회
	 */
	@Override
	public RoomDealingVO retrieveDetailRoom(String roomDealingNo) {
		return mapper.selectRoomDealing(roomDealingNo);
	}

	/**
	 * 매물 정보 수정
	 */
	@Override
	public int modifyRoomDealing(RoomDealingVO roomDealingVO) {
		return mapper.updateRoomDealing(roomDealingVO);
	}

	/**
	 * 매물 정보 삭제
	 */
	@Override
	public int removeRoomDealing(RoomDealingVO roomDealingVO) {
		return mapper.updateRoomDealing(roomDealingVO);
	}

	@Override
	public Map<String, String> retrieveRoomDealingUserList(String userNo) {
		List<RoomDealingVO> roomDealingList = mapper.selectRoomDealingUserList(userNo);
		Map<String, String> result = new HashMap<String, String>();
		
		if(roomDealingList.isEmpty()) {
			return null;
		}else {
			for (RoomDealingVO roomDealingVO : roomDealingList) {
				result.put(roomDealingVO.getRoomDelngNo(), roomDealingVO.getRoomDetailDcSj());
			}
			return result;
		}
	}

	@Override
	public RoomDealingVO retrieveRoomDealingUserInfo(RoomDealingVO roomDealingVO) {		
		return mapper.selectRoomDealingUpdateInfo(roomDealingVO);
	}

}
