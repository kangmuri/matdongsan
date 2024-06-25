package kr.or.mat.lessee.contractRent.mapper;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import kr.or.mat.AbstractRootContextTest;
import kr.or.mat.lessee.contractRent.vo.ContractRentVO;
import lombok.extern.slf4j.Slf4j;



//@ExtendWith(SpringExtension.class) //junit5
//@ContextConfiguration({"file:src/main/resources/kr/or/mat/spring/conf/datasource-context.xml",
//	                   "file:src/main/resources/kr/or/mat/spring/conf/mapper-context.xml"})

@Slf4j
class ContractRentMapperTest extends AbstractRootContextTest{
	
	@Autowired
	ContractRentMapper mapper;
	
//	@Test
//	void testSelectList() {
//		
//		List<ContractRentVO> result = mapper.selectContractRentList("U240515003");
//		
//		log.info("나와랑==>{}", result);
//		
//	}
	
	@Test
//	@Disabled
	void testSelect() {
		
		ContractRentVO result = mapper.selectContractRent("cr001");
		
		log.info("나와랑==>{}", result);
		
	}
	@Test
	void testSelectbldg() {
		
		List<ContractRentVO> list = mapper.selectRentBldgList("U240525010");
		
		log.info("나와랑==>{}", list);
		
	}

}
