package kr.or.mat.mypage.service;

import java.util.List;

import kr.or.mat.mypage.vo.MyRoomListVO;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.room.vo.RoomDealingVO;

public interface MyRoomService {
	
	/**
	 * 마이페이지 내가올린 매물 리스트 조회
	 * @param myroomlistVO
	 * @return
	 */
	public List<MyRoomListVO> retrieveMyRoomList(PaginationInfo inputData);
	
	/**
	 * 매물 상세 페이지 조회
	 * @param roomDealingNo
	 * @return
	 */
	public RoomDealingVO retrieveDetailRoom(String roomDealingNo);
}
