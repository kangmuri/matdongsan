package kr.or.mat.rentRoom.mapper;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.mat.AbstractRootContextTest;
import kr.or.mat.rentRoom.vo.RentRoomVO;
import lombok.extern.slf4j.Slf4j;


@Slf4j
class RentRoomMapperTest extends AbstractRootContextTest{

	@Autowired
	RentRoomMapper rentRoomMapper;
	
	@Test
	void testInsertRentRoom() {
		RentRoomVO rentRoom = new RentRoomVO();
		rentRoom.setRentBldgNo("RD240518006");
		rentRoom.setRoomNo("R01");
		rentRoom.setRoomUngrYn("N");
		rentRoom.setUserNo("U240515002");
		rentRoomMapper.insertRentRoom(rentRoom);
	}

	@Test
	void testSelectRentRoomList() {
		String rentBldgNo = "RD240518006";
		List<RentRoomVO> list = rentRoomMapper.selectRentRoomList(rentBldgNo);
		log.info("rentRoomlist : {}",list);
	}

	@Test
	void testSelectRentRoom() {
		String rentRoomNo = "RENTR00024";
		rentRoomMapper.selectRentRoom(rentRoomNo);
	}

	@Test
	void testUpdateRentRoom() {
		RentRoomVO rentRoom = new RentRoomVO();
		rentRoom.setRoomUngrYn("Y");
		rentRoom.setRentRoomNo("RENTR00025");
		rentRoomMapper.updateRentRoom(rentRoom);
	}

	@Test
	void testDeleteRentRoom() {
		assertDoesNotThrow(() -> rentRoomMapper.deleteRentRoom("RENTR00025"));
	}
	
	@Test
	void testSelectAllRentContract() {
		
	}

}
