package kr.or.mat.lessee.community.service;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.mat.AbstractRootContextTest;
import kr.or.mat.lessee.community.vo.CommunityVO;
import kr.or.mat.paging.PaginationInfo;
import lombok.extern.slf4j.Slf4j;
@Slf4j
class CommunityServiceImplTest extends AbstractRootContextTest{
	
	@Autowired
	CommunityService service;
	
	@Test
	@Disabled
	void test() {
		PaginationInfo paging = new PaginationInfo();
		paging.setTotalRecord(10);
		log.info("{}", paging);
		List<CommunityVO> list = new ArrayList<>();
		list = service.retrieveCommunityList(paging);
		log.info("{}", list);
	}
	@Test
	void testbldg() {
		
		List<String> list = new ArrayList<>();
		list = service.retrieveLesseeBldgList("U240515003");
		log.info("{}", list);
	}

}
