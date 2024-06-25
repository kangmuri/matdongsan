package kr.or.mat.rentNotice.service;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.mat.AbstractRootContextTest;
import kr.or.mat.rentNotice.vo.RentNoticeVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class RentNoticeLessorServiceImplTest extends AbstractRootContextTest{
	@Autowired
	private RentNoticeLessorService service;
	
	@Test
	void testCreateRentNotice() {
		RentNoticeVO noticeVO = new RentNoticeVO();
		noticeVO.setNoticeCn("내용테스트");
		noticeVO.setRentBldgNo("RD240529047");
		noticeVO.setNoticeSj("제목테스트");
		noticeVO.setUserNo("U240529017");
		service.createRentNotice(noticeVO);
	}

	@Test
	void testRetrieveAllRentNoticeList() {
		fail("Not yet implemented");
	}

	@Test
	void testRetrieveRentNoticeList() {
		fail("Not yet implemented");
	}

	@Test
	void testRetrieveRentNotice() {
		fail("Not yet implemented");
	}

	@Test
	void testModifyRentRoom() {
		fail("Not yet implemented");
	}

	@Test
	void testRemoveRentRoom() {
		fail("Not yet implemented");
	}

}
