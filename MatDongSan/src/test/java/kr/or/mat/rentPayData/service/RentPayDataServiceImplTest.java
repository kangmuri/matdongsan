package kr.or.mat.rentPayData.service;


import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.mat.AbstractRootContextTest;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.rentPayData.vo.RentPayDataVO;
import lombok.extern.slf4j.Slf4j;


@Slf4j
class RentPayDataServiceImplTest extends AbstractRootContextTest {
	@Autowired
	RentPayDataService service;

	@Test
	void testSelectPayDataAllList() {
		String userNo = "U240529017";
		PaginationInfo paging = new PaginationInfo();
		paging.setTotalRecord(5);
		paging.setUserNo(userNo);
		log.info("{}", paging);
		List<RentPayDataVO> list = new ArrayList<>();
		list = service.retrievePayDataAllList(paging);
		log.info("{}", list);
	}

}
