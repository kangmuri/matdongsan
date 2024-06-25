package kr.or.mat.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.admin.vo.AdminRoomVO;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.room.vo.RoomDealingVO;

@Mapper
public interface AdminRoomCkMapper {
	
	/**
	 * 매물 리스트를 조회하는 메소드
	 * @return
	 */
	public List<AdminRoomVO> selectRoomList(PaginationInfo paging);
	
	/**
	 * 전체 페이지 정보 가져오기
	 * @return 
	 */
	public int selectTotalRecord(PaginationInfo paging);
	
	/**
	 * 매물 상세 페이지 조회
	 * @param roomDelngNo
	 * @return
	 */
	public RoomDealingVO selectAdminRoomDealing(String roomDelngNo);
	
	/**
	 * 매물 검증 완료 수정
	 * @param roomDelngNo
	 * @return
	 */
	public int updateAdminRoomDealing(String roomDelngNo);
	
	/**
	 * 매물 검증 완료 수정
	 * @param roomDelngNo
	 * @return
	 */
	public int deleteAdminRoomDealing(String roomDelngNo);
	
	
}
