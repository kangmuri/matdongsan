package kr.or.mat.lessee.payData.mapper;

import static org.junit.jupiter.api.Assertions.assertDoesNotThrow;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.mat.AbstractRootContextTest;
import kr.or.mat.lessee.payData.vo.PayDataVO;
import kr.or.mat.rentNotice.vo.CntrctRentVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class PayDataMapperTest extends AbstractRootContextTest{
	
	@Autowired
	PayDataMapper mapper;
	
//	@Test
//	void testList() {
//		
//		List<PayDataVO> List = mapper.selectPayDataList("U240515003");
//		log.info("페이데이터 {}", List);
//		
//	}
	@Test
	@Disabled
	void testselect() {
		
		PayDataVO data = mapper.selectPayData("cr001");
		log.info("페이데이터 {}", data);
		
	}
	@Test
	void testselectbldg() {
		
		List<PayDataVO> data = mapper.selectRentBldgList("U240525010");
		log.info("페이데이터 {}", data);
		
	}

}
