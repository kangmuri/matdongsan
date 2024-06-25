package kr.or.mat.room.mapper;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.mat.AbstractRootContextTest;
import kr.or.mat.room.vo.RoomVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class RoomMapperTest extends AbstractRootContextTest{
	
	@Autowired
	private RoomMapper mapper;

	@Test
	@DisplayName("방정보 입력 테스트")
	void RoomInsertTest() {
		RoomVO room = new  RoomVO();
		room.setBCode("1");
		room.setBldgAddr("1");
		room.setBuldAr(new Long(1));
		room.setBuldPrpos("1");
		room.setBuldMprpos("1");
		room.setBun("1");
		room.setJi("1");
		room.setDctLadAr(new Long(1));
		room.setDctLadLndcgr("1");
		room.setFloorCnt(new Long(1));
		room.setHCode("1");
		room.setRegion1depthNm("1");
		room.setRegion2depthNm("1");
		room.setRentDong(new Long(1));
		room.setRegion3depthNm("1");
		room.setRentAr(new Long(1));
		room.setRoomBtrCnt(new Long(1));
		room.setRoomElvtrYn("Y");
		room.setRoomFloor(new Long(1));
		room.setRoomNo("1");
		room.setRoomParkngYn("Y");
		room.setRoomTy("1");
		room.setRoomUnit(new Long(1));
		room.setUnityAtchmnflNo("1");
		room.setUserNo("U240515003");
		room.setX(new Double(1));
		room.setY(new Double(1));
		
		mapper.insertRoom(room);
		
		log.info("roomNo {} :" , room.getRoomNo());
		


	}

}
