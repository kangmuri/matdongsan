package kr.or.mat.room.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.mypage.vo.MyRoomListVO;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.room.vo.RoomDealingVO;
import kr.or.mat.search.vo.CoordinateVO;

@Mapper
public interface RoomDealingMapper {
	/**
	 * 거래방정보 리스트 조회
	 * @return
	 */
	public List<RoomDealingVO> selectRoomDealingList();
	
	/**
	 * 지도 마커 렌더링 및 거래매물 리스트 조회
	 * @return
	 */
	public List<RoomDealingVO> selectSearchMapList(CoordinateVO coordinateVO);
	
	/**
	 * 거래방정보 상세조회
	 * @return
	 */
	public RoomDealingVO selectRoomDealing(String roomDealingNo);
	
	/**
	 * 거래방정보 수정
	 * @return
	 */
	public int updateRoomDealing(RoomDealingVO roomDealingVO);
	
	/**
	 * 거래방정보 입력
	 * @return
	 */
	public int insertRoomDealing(RoomDealingVO roomDealing);
	
	/**
	 * 마이페이지 내가올린 매물 리스트 조회
	 * @param myroomlistVO
	 * @return
	 */
	public List<MyRoomListVO> selectMyRoomList(PaginationInfo paging);
	
	/**
	 * 마이페이지 내가올린 매물 페이지 정보 가져오기
	 * @return 
	 */
	public int selectTotalRecord(PaginationInfo paging);
	
	/**
	 * 매물 수정 페이지에서 수정할 매물 선택
	 * @return
	 */
	public List<RoomDealingVO> selectRoomDealingUserList(String userNo);
	
	/**
	 * 매물 수정 페이지에서 선택한 매물 정보 조회
	 * @param roomDealingVO
	 * @return
	 */
	public RoomDealingVO selectRoomDealingUpdateInfo(RoomDealingVO roomDealingVO);
}
