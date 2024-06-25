package kr.or.mat.admin.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.mat.admin.mapper.AdminRoomCkMapper;
import kr.or.mat.admin.vo.AdminRoomVO;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.room.vo.RoomDealingVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class AdminRoomServiceImpl implements AdminRoomService{

	private final AdminRoomCkMapper mapper;
	
	@Override
	public List<AdminRoomVO> retrieveRoomList(PaginationInfo page) {
		page.setTotalRecord(mapper.selectTotalRecord(page));
		log.info("넘어온page값 ==>{}",page);
		
		List<AdminRoomVO> roomList = mapper.selectRoomList(page);
		for (AdminRoomVO vo : roomList) {
			String content = "";
			if(vo.getRoomDetailDcSj().length() >= 18) {
				content = vo.getRoomDetailDcSj().substring(0, 18)+"...";
				vo.setRoomDetailDcSj(content);
			}
			if(vo.getRoomDealingStts().equals("RS01")){
				vo.setRoomDealingStts("검수중");
			}
			if(vo.getRoomDealingStts().equals("RS02")){
				vo.setRoomDealingStts("검수완료");
			}
			if(vo.getRoomDealingStts().equals("RS03")){
				vo.setRoomDealingStts("계약중");
			}
			if(vo.getRoomDealingStts().equals("RS04")){
				vo.setRoomDealingStts("계약완료");
			}
			if(vo.getRoomDealingStts().equals("RS05")){
				vo.setRoomDealingStts("삭제");
			}
		}
		return roomList;
	}

	@Override
	public RoomDealingVO retrieveRoom(String roomDealingNo) {
		return mapper.selectAdminRoomDealing(roomDealingNo);
	}

	@Override
	public int modifyAdminRoomDealing(String roomDelngNo) {
		return mapper.updateAdminRoomDealing(roomDelngNo);
	}

	@Override
	public int removeAdminRoomDealing(String roomDelngNo) {
		return mapper.deleteAdminRoomDealing(roomDelngNo);
	}
	
}
