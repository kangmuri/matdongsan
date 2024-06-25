package kr.or.mat.room.service;

import java.util.List;
import java.util.Map;

import kr.or.mat.room.vo.RoomDealingVO;
import kr.or.mat.search.vo.CoordinateVO;

/**
 * 
 * @author Seongmin Park
 * 작성내용 : 거래매물 CRUD 및 지도 검색
 * 작성일 24.05.19
 */
public interface RoomDealingService {
	/**
	 * 매물등록 
	 * @param roomDealingVO
	 * @return
	 */
	public int createRoomDealing(RoomDealingVO roomDealingVO);
	
	/**
	 * 지도 마커 출력 및 거래매물 리스트 조회
	 */
	public List<RoomDealingVO> retrieveSearchMapList(CoordinateVO coordinateVO);
	
	/**
	 * 매물 상세 페이지 정보 출력
	 * @param roomDealingNo
	 * @return
	 */
	public RoomDealingVO retrieveDetailRoom(String roomDealingNo);
	
	/**
	 * 매물 정보 수정
	 * @param roomDealingVO
	 * @return
	 */
	public int modifyRoomDealing(RoomDealingVO roomDealingVO);
	
	/**
	 * 매물 정보 삭제
	 * @param roomDealingVO
	 * @return
	 */
	public int removeRoomDealing(RoomDealingVO roomDealingVO);
	
	/**
	 * 매물 수정을 위한 매물 번호, 게시글 가져오기
	 */
	public Map<String, String> retrieveRoomDealingUserList(String userNo);
	
	/**
	 * 매물 수정을 위한 정보 조회
	 * @param roomDealingVO
	 * @return
	 */
	public RoomDealingVO retrieveRoomDealingUserInfo(RoomDealingVO roomDealingVO);
}
