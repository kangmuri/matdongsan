package kr.or.mat.mypage.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.mat.admin.mapper.AdminRoomCkMapper;
import kr.or.mat.mypage.vo.MyRoomListVO;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.room.mapper.RoomDealingMapper;
import kr.or.mat.room.vo.RoomDealingVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class MyRoomServiceImpl implements MyRoomService{
	
	private final RoomDealingMapper mapper;
	private final AdminRoomCkMapper mapper2;
	
	@Override
	public List<MyRoomListVO> retrieveMyRoomList(PaginationInfo page) {
		
		page.setTotalRecord(mapper.selectTotalRecord(page));
		
		List<MyRoomListVO> roomList = mapper.selectMyRoomList(page);
		log.info("rooList-->{}",roomList);
		
		for (MyRoomListVO vo : roomList) {
			//매물코드를 상태 메세지로 수정
			if(vo.getRoomDealingStts().equals("RS01")) {
				vo.setRoomDealingStts("검수중");
			}else if(vo.getRoomDealingStts().equals("RS02")){
				vo.setRoomDealingStts("검수완료");
			}else if(vo.getRoomDealingStts().equals("RS03")){
				vo.setRoomDealingStts("계약중");
			}else if(vo.getRoomDealingStts().equals("RS04")){
				vo.setRoomDealingStts("계약완료");
			}else {
				vo.setRoomDealingStts("삭제");
			}
			
			if(vo.getRoomDetailDcSj().length() > 14) {
				String str = vo.getRoomDetailDcSj().substring(0, 14) + "...";
				vo.setRoomDetailDcSj(str);
			}
		}
		return roomList;
	}
	/**
	 * 매물 상세 페이지 조회
	 */
	@Override
	public RoomDealingVO retrieveDetailRoom(String roomDealingNo) {
		return mapper2.selectAdminRoomDealing(roomDealingNo);
	}
	
	
}