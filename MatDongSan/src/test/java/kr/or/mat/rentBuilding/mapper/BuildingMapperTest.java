package kr.or.mat.rentBuilding.mapper;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.mat.AbstractRootContextTest;
import kr.or.mat.rentBuilding.vo.RentBldgVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class BuildingMapperTest extends AbstractRootContextTest {
	
	@Autowired
	BuildingMapper buildingMapper;
	
	@Test
	void testInsertBuilding() {
		RentBldgVO building = new RentBldgVO();
		building.setBldgAddr("어덕마을로10번길");
		building.setBldgHomeCnt(5);
		building.setBldgNm("아가페하우스");
		building.setRentBldgNo("BD00001");
		assertDoesNotThrow(() -> buildingMapper.insertBuilding(building));
		
	}

	@Test
	void testSelectBuildingList() {
		List<RentBldgVO> building = new ArrayList<RentBldgVO>();
		log.info("buildingList : {}", building);
		String userNo = "U240515002";
		assertDoesNotThrow(() -> buildingMapper.selectBuildingList(userNo));
		
	}

	@Test
	void testSelectBuilding() {
		RentBldgVO building = buildingMapper.selectBuilding("BD00003");
		log.info("buildingOne : {}", building);
		assertDoesNotThrow(() -> buildingMapper.selectBuilding("BD00003"));
	}

	@Test
	void testUpdateBuilding() {
		RentBldgVO building = new RentBldgVO();
		building.setBldgAddr("수정테스트주소");
		building.setBldgHomeCnt(5);
		building.setBldgNm("수정테스트빌딩이름");
		building.setRentBldgNo("BD00003");
		assertDoesNotThrow(() -> buildingMapper.updateBuilding(building));
		
	}

	@Test
	void testDeleteBuilding() {
		assertDoesNotThrow(() -> buildingMapper.deleteBuilding("BD00003"));
	}

}
