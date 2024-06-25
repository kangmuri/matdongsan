package kr.or.mat.rentContract.mapper;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.junit.platform.commons.annotation.Testable;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.mat.AbstractRootContextTest;
import kr.or.mat.rentBuilding.vo.RentBldgVO;
import kr.or.mat.rentContract.vo.RentContractVO;
import kr.or.mat.rentRoom.vo.RentRoomVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class RentContractMapperTest extends AbstractRootContextTest{
	@Autowired
	private RentContractMapper mapper;
	
	@Test
	void testCreateRentContract() {
	}

	@Test
	void testRetrieveRentRoomCntrtList() {
		RentContractVO rctvo = new RentContractVO();
		RentRoomVO rvo = new RentRoomVO();
		rctvo.setRentRoomNo("RT240529067");
//		rctvo.setRentRoom(rvo); 
		rctvo.setCntrctStts("RSTTS02"); //입주중 
		List<RentContractVO> rcvo =  mapper.selectRentRoomCntrtList(rctvo);
		log.info("방 한건에대한 전체 계약:{}",rcvo);
	}

	@Test
	void testRetrieveRentBldgCntrtList() {
		RentContractVO rctvo = new RentContractVO();
		RentRoomVO rvo = new RentRoomVO();
		rvo.setRentBldgNo("RD240529065");
		rctvo.setRentRoom(rvo);
		rctvo.setCntrctStts("RSTTS01"); //입주중 
		List<RentContractVO> rcvo =  mapper.selectRentBldgCntrtList(rctvo);
		log.info("건물 한건에대한 전체 계약:{}",rcvo);
	}
	
	@Test
	void testSelectAllRentContract() {
		RentContractVO rctvo = new RentContractVO();
		RentBldgVO bldgvo = new RentBldgVO();
		RentRoomVO roomvo = new RentRoomVO();
		rctvo.setCntrctStts("RSTTS01");
		bldgvo.setUserNo("U240529017");
		roomvo.setRentBldg(bldgvo);
		rctvo.setRentRoom(roomvo);
		mapper.selectAllRentContract(rctvo);
		log.info("유저가 보유한 계약 전체 :{}",rctvo);
	}
	
	@Test
	void testSecure() {
		RentContractVO rctvo = new RentContractVO();
		rctvo.setCntrctRentNo("CRC240530023");
		rctvo.setSecureCode("123526");
		int cnt = mapper.updateConnectLessee(rctvo);
		log.info("cnt:{}",cnt);
	}
	
	@Test
	void codeCheck() {
		String code = "123526";
		String cntrctRentNo = mapper.selectCheckCode(code);
		log.info("cntrctRentNo:{}",cntrctRentNo);
	}

	@Test
	void testRetrieveRentContract() {
		RentContractVO rctvo = new RentContractVO();
		rctvo.setMidwayDt("2024-06-04");
		rctvo.setCntrctRentNo("CRC240603105");
		mapper.updateMidway(rctvo);
		
	}

	@Test
	void testModifyRentContract() {
		fail("Not yet implemented");
	}

	@Test
	void testRemoveRentContract() {
		fail("Not yet implemented");
	}

	@Test
	void testModifyRentContractStts() {
		fail("Not yet implemented");
	}
	

}
