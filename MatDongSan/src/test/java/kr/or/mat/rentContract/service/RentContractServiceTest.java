package kr.or.mat.rentContract.service;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.mat.AbstractRootContextTest;
import kr.or.mat.rentContract.vo.RentContractVO;
import kr.or.mat.rentRoom.vo.RentRoomVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class RentContractServiceTest extends AbstractRootContextTest{
	@Autowired
	private RentContractService rentContractService;
	

	@Test
	void testcheckCode() {
		String code="123456";
		String result = rentContractService.retrieveCheckCode(code);
		if(result.equals("fail")) {
			result ="fail";
		}
		log.info("result:{}",result);
	}

	@Test
	void testRetrieveRentRoomCntrtList() {
		fail("Not yet implemented");
	}

	@Test
	void testRetrieveRentBldgCntrtList() {
		RentContractVO rctvoIng = new RentContractVO(); //입주중
		RentContractVO rctvoPre = new RentContractVO(); //입주예정
		RentContractVO rctvoEnd = new RentContractVO(); //계약만료
		RentRoomVO rvo = new RentRoomVO();
		String rentBldgNo = "RD240521040";
		//입주중
		rvo.setRentBldgNo(rentBldgNo);
		rctvoIng.setRentRoom(rvo);
		rctvoIng.setCntrctStts("RSTTS01");		
		//입주예정
		rvo.setRentBldgNo(rentBldgNo);
		rctvoPre.setRentRoom(rvo);
		rctvoPre.setCntrctStts("RSTTS02");
		//계약만료
		rvo.setRentBldgNo(rentBldgNo);
		rctvoEnd.setRentRoom(rvo);
		rctvoEnd.setCntrctStts("RSTTS04");
		
		//입주중인 계약 리스트
		List<RentContractVO> rentContractIngList = rentContractService.retrieveRentBldgCntrtList(rctvoIng);
		//입주예정 계약 리스트
		List<RentContractVO> rentContractPreList = rentContractService.retrieveRentBldgCntrtList(rctvoPre);
		//계약만료 계약 리스트
		List<RentContractVO> rentContractEndList = rentContractService.retrieveRentBldgCntrtList(rctvoEnd);
		rentContractIngList.forEach(b->log.info("입주중 : {}", b));
		rentContractPreList.forEach(b->log.info("입주예정 : {}", b));
		rentContractEndList.forEach(b->log.info("만료 : {}", b));
//		log.info("rentContractIngList :{}", rentContractIngList);
//		log.info("rentContractPreList :{}", rentContractPreList);
//		log.info("rentContractEndList :{}", rentContractEndList);
		
	}

	@Test
	void testRetrieveRentContract() {
		fail("Not yet implemented");
	}

	@Test
	void testModifyRentContract() {
		fail("Not yet implemented");
	}

	@Test
	void testRemoveRentContract() {
		fail("Not yet implemented");
	}

}
