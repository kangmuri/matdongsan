package kr.or.mat.lessee.schedule.service;

import java.util.List;

import kr.or.mat.lessee.schedule.vo.ScheduleVO;

public interface ScheduleService {
	public int createSchedule(ScheduleVO schedule);
	
	public List<ScheduleVO> retriveScheduleList(String userNo);
	
	public List<ScheduleVO> retriveScheduleLessorList(String userNo);
}
