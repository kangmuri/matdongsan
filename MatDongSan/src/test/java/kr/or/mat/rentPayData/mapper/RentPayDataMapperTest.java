package kr.or.mat.rentPayData.mapper;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.mat.AbstractRootContextTest;
import kr.or.mat.rentBuilding.vo.RentBldgVO;
import kr.or.mat.rentContract.vo.RentContractVO;
import kr.or.mat.rentPayData.vo.RentPayDataVO;
import kr.or.mat.rentRoom.vo.RentRoomVO;
import lombok.extern.slf4j.Slf4j;
@Slf4j
class RentPayDataMapperTest extends AbstractRootContextTest{
	@Autowired
	private RentPayDataMapper mapper;

	@Test
	void testSelectTotalRecord() {
		fail("Not yet implemented");
	}

	@Test
	void testSelectPayDataAllList() {
		fail("Not yet implemented");
	}

	@Test
	void testSelectPayDataOne() {
		RentPayDataVO rentpayData = new RentPayDataVO();
		RentContractVO rctvo = new RentContractVO();
		RentRoomVO rvo = new RentRoomVO();
		RentBldgVO bldgvo = new RentBldgVO();
		bldgvo.setUserNo("U240529017");
		rvo.setRentBldg(bldgvo);
		rctvo.setRentRoom(rvo);
		rentpayData.setRentContract(rctvo);
		rentpayData.setPayNo("PAY240603073");
		log.info("결과능?!?!?@!:{}", mapper.selectPayDataOne(rentpayData));
	}

}
