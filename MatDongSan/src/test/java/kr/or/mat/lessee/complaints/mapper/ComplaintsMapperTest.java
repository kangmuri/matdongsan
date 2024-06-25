package kr.or.mat.lessee.complaints.mapper;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.List;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.mat.AbstractRootContextTest;
import kr.or.mat.lessee.complaints.vo.ComplaintsVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class ComplaintsMapperTest extends AbstractRootContextTest{
	
	@Autowired
	ComplaintsMapper mapper;
	
	
	@Test
	@Disabled
	void insertTest() {
		ComplaintsVO com = new ComplaintsVO();
		com.setCvlcpCn("강무리");
		com.setCvlcpKnd("01");
		com.setUnityAtchmnflNo("dfs1234");
		com.setRentBldgNo("BD00004");
		
		int result = mapper.insertComplaints(com);
		
		log.info("체킹{}", result);
	}
	@Test
	@Disabled
	void deleteTest() {
		
		int result = mapper.deleteComplaints("COM009");
		
		log.info("{}", result);
	}
	@Test
	void bldgTest() {
		List<ComplaintsVO> bldgList = mapper.selectBldgList("U240525010");
		
		log.info("체킹{}", bldgList);
	}

}
