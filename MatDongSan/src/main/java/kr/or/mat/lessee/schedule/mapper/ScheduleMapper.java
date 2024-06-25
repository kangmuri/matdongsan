package kr.or.mat.lessee.schedule.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.lessee.schedule.vo.ScheduleVO;

@Mapper
public interface ScheduleMapper {
	
	public int insertSchedule(ScheduleVO payDataList);
	
	/**
	 * 해당 아이디의 일정 구하깅 
	 * @param userNo
	 * @return
	 */
	public List<ScheduleVO> selectScheduleList(String userNo);
	
	/**
	 * 임대인이 보유하고있는 임차인들의 일정 구하기
	 * @param userNo
	 * @return
	 */
	public List<ScheduleVO> selectScheduleLessorList(String userNo);
	
	/**
	 * 임대인이 보유하고 있는 임차인들의 납부데이터정보 구하기(스케줄테이블에 넣을 정보)
	 * @param userNo
	 * @return
	 */
	public List<ScheduleVO> selectPayDataLessorList(String userNo);
	
	/**
	 * 스케줄 넘버 생성 
	 * @param count
	 * @return
	 */
	public List<String> selectScheduleNo(int count);
	
	/**
	 * 일정 인서트 시킬때 중복체크 
	 * @param payNo
	 * @return
	 */
	public int selectPayDataCheck(String payNo);
}
