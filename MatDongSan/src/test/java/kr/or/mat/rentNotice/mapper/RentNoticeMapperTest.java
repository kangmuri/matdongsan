package kr.or.mat.rentNotice.mapper;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.mat.AbstractRootContextTest;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.rentNotice.vo.RentNoticeVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class RentNoticeMapperTest extends AbstractRootContextTest {

	@Autowired
	RentNoticeMapper mapper;
	
	@Test
	void testNoticeList() {
		PaginationInfo paging = new PaginationInfo();
		paging.setUserNo("U240531022");
		List<RentNoticeVO> List = mapper.selectListRentNotice(paging);
		
		log.info("테스트 : {}", List);
	}
	
	@Test
	void testNotice() {
		RentNoticeVO notice = new RentNoticeVO();
		notice.setNoticeNo("n001");
		notice.setRentBldgNo("BD00004");
		RentNoticeVO noticee = mapper.selectRentNotice(notice);
		
		log.info("단건 테스트 :{}", noticee);
	}

}
