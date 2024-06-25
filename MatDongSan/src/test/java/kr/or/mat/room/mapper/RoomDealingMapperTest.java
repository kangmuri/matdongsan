package kr.or.mat.room.mapper;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.mat.AbstractRootContextTest;
import kr.or.mat.mypage.vo.MyRoomListVO;
import kr.or.mat.room.vo.RoomDealingVO;
import kr.or.mat.search.vo.CoordinateVO;
import lombok.extern.slf4j.Slf4j;


@Slf4j
class RoomDealingMapperTest extends AbstractRootContextTest{

	@Autowired
	RoomDealingMapper mapper;
	
	@Test
	void testSelectRoomDealingList() {
	}

	@Test
	void testSelectRoomDealing() {
		RoomDealingVO roomDealing = mapper.selectRoomDealing("RD00061");
		
		log.info("{}", roomDealing);
	}

	@Test
	void testUpdateRoomDealing() {
		RoomDealingVO roomDealing = new RoomDealingVO();
		roomDealing.setRoomDelngNo("RD00061");
		roomDealing.setRoomDealingStts("RS02");
		
		int cnt = mapper.updateRoomDealing(roomDealing);
		
		assertEquals(1, cnt);
				
	}

	@Test
	void testDeleteRoomDealing() {
		RoomDealingVO roomDealing = new RoomDealingVO();
		roomDealing.setRoomDelngNo("RD00061");
		roomDealing.setRoomOthbcYn("Y");
		
		int cnt = mapper.updateRoomDealing(roomDealing);
		
		assertEquals(1, cnt);
	}
	
	@Test
	@DisplayName("지도 검색 매물 리스트 조회")
	void testSelectSearchMapList() {
		CoordinateVO coordinateVO = new CoordinateVO();
		coordinateVO.setMaxX(200d);
		coordinateVO.setMaxY(200d);
		coordinateVO.setMinX(0d);
		coordinateVO.setMinY(0d);
		
		List<RoomDealingVO> roomDealingList = mapper.selectSearchMapList(coordinateVO);
		log.info("{}", roomDealingList);
	}

	@Test
	void testInsertRoomDealing() {
		RoomDealingVO roomDealingVO = new RoomDealingVO();
		
		roomDealingVO.setRoomSize(new Long(100));
		roomDealingVO.setRoomCnt(new Long(3));
		roomDealingVO.setLivingType("오픈형");
		roomDealingVO.setDelngType("전세");
		roomDealingVO.setRoomLshl(789L);
		roomDealingVO.setRoomManagectPc(161718L);
		roomDealingVO.setRoomManagectAt("Y");
		roomDealingVO.setRoomDetailDcSj("someDetailSubject");
		roomDealingVO.setRoomDetailDc("someDetailDescription");
		roomDealingVO.setRoomMvnPosbl("20240517");
		roomDealingVO.setRoomDelngDe("someDelngDe");
		roomDealingVO.setRoomDealingStts("someStatus");
		roomDealingVO.setRoomOthbcYn("Y");
		roomDealingVO.setRoomNo("R00006");
		
		mapper.insertRoomDealing(roomDealingVO);
		
		log.info("roomDealingVO : {}", roomDealingVO.getRoomDelngNo());

	}
	
	@Test
	void testselectMyRoomList() {
		MyRoomListVO myRoomListVO = new MyRoomListVO();
		myRoomListVO.setUserNo("U240515003");
//		mapper.selectMyRoomList(myRoomListVO);
		log.info("myRoomListVO ==> {}",myRoomListVO);
	}
}
