package kr.or.mat.room.mapper;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.mat.AbstractRootContextTest;
import kr.or.mat.room.vo.RoomLvlhVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class RoomLvlhMapperTest extends AbstractRootContextTest{

	@Autowired
	RoomLvlhMapper mapper;
	
	@Test
	void testSelectRoomLvlhList() {
	}

	@Test
	void testInsertRoomLvlh() {
		RoomLvlhVO roomLvlhVO = new RoomLvlhVO();
		roomLvlhVO.setFcltyCd("LIFE");
		roomLvlhVO.setFcltySe("L00");
		roomLvlhVO.setRoomNo("R00006");
		
		int cnt = mapper.insertRoomLvlh(roomLvlhVO);
		log.info("시설구분 : {}", cnt);
	}

	@Test
	void testDeleteRoomLvlh() {
	}

}
