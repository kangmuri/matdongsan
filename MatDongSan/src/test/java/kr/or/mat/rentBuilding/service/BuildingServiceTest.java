package kr.or.mat.rentBuilding.service;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.mat.AbstractRootContextTest;
import kr.or.mat.rentBuilding.vo.RentBldgVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class BuildingServiceTest extends AbstractRootContextTest{

	@Autowired
	BuildingService service;
	
	@Test
	void testCreateBuilding() {
		RentBldgVO building = new RentBldgVO();
		building.setBldgAddr("어덕마을로10번길");
		building.setBldgHomeCnt(5);
		building.setBldgNm("아가페하우스");
		building.setRentBldgNo("BD00004");
		assertDoesNotThrow(() -> service.createBuilding(building));
		
	}

	@Test
	void testRetrieveBuildingList() {
		List<RentBldgVO> building = new ArrayList<RentBldgVO>();
		log.info("buildingList : {}", building);
		String userNo = "U240515002";
		assertDoesNotThrow(() -> service.retrieveBuildingList(userNo));
	}

	@Test
	void testRetrieveBuilding() {
		RentBldgVO building = service.retrieveBuilding("BD00003");
		log.info("buildingOne : {}", building);
		assertDoesNotThrow(() -> service.retrieveBuilding("BD00003"));
	}

	@Test
	void testModifyBuilding() {
		RentBldgVO building = new RentBldgVO();
		building.setBldgAddr("수정테스트주소");
		building.setBldgHomeCnt(5);
		building.setBldgNm("수정테스트빌딩이름");
		building.setRentBldgNo("BD00003");
		assertDoesNotThrow(() -> service.modifyBuilding(building));
	}

	@Test
	void testRemoveBuilding() {
		assertDoesNotThrow(() -> service.removeBuilding("BD00003"));
	}


}
