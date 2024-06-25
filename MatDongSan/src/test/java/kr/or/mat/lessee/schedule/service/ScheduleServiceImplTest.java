package kr.or.mat.lessee.schedule.service;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.mat.AbstractRootContextTest;
import kr.or.mat.lessee.schedule.vo.ScheduleVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class ScheduleServiceImplTest extends AbstractRootContextTest{
	
	@Autowired
	ScheduleService service;
	
	@Test
	void test() {
		List<ScheduleVO> List = service.retriveScheduleList("U240525010");
		
		log.info("값 체킁 {}", List);
		
	}

}
