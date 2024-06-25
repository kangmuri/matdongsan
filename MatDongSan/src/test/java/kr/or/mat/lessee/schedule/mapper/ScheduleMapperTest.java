package kr.or.mat.lessee.schedule.mapper;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.mat.AbstractRootContextTest;
import kr.or.mat.lessee.schedule.vo.ScheduleVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class ScheduleMapperTest extends AbstractRootContextTest{
	
	@Autowired
	ScheduleMapper mapper;
	
	@Test
	void testselect() {
		List<ScheduleVO> List = mapper.selectScheduleLessorList("U240515003");
		
		log.info("끄아ㅏ아악=>{}", List);
		List.stream().forEach(System.out::println);
	}
	
	@Test
	void testCreateSchedule() {
		List<ScheduleVO> payDataList = mapper.selectPayDataLessorList("U240515003");
		List<ScheduleVO> SchduleList = new ArrayList<ScheduleVO>();
		SchduleList.set(0, null);
		
//		int cnt = mapper.insertSchedule(payDataList);
		log.info("끄아ㅏ아악=>{}", payDataList);
	}

}
