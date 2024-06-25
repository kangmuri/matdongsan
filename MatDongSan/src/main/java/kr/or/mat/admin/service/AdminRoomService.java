package kr.or.mat.admin.service;

import java.util.List;

import kr.or.mat.admin.vo.AdminRoomVO;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.room.vo.RoomDealingVO;

public interface AdminRoomService {
	
	/**
	 * 매물 리스트를 조회하는 메소드
	 * @return
	 */
	public List<AdminRoomVO> retrieveRoomList(PaginationInfo page);
	
	/**
	 * 매물 상세정를 조회하는 메소드
	 * @return
	 */
	public RoomDealingVO retrieveRoom(String roomDealingNo);
	
	/**
	 * 매물 검증 완료 수정
	 * @param roomDelngNo
	 */
	public int modifyAdminRoomDealing(String roomDelngNo);
	
	/**
	 * 매물 검증 완료 수정
	 * @param roomDelngNo
	 * @return
	 */
	public int removeAdminRoomDealing(String roomDelngNo);
}
