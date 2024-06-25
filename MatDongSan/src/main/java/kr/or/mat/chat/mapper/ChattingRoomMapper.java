package kr.or.mat.chat.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.chat.vo.ChattingRoomVO;
import kr.or.mat.lessee.schedule.vo.ScheduleVO;

/**
 * 
 * @author Seongmin Park
 *	채팅방 관련 매퍼
 *	작성일 : 24.05.29
 */
@Mapper
public interface ChattingRoomMapper {
	/**
	 * 채팅방 만들기
	 * @param chattingRoomVO
	 * @return 채팅방 번호를 가진 채팅방 반환
	 */
	public int insertChattingRoomVO(ChattingRoomVO chattingRoomVO);
	
	/**
	 * 소속된 채팅방 목록 조회
	 * @param chattingRoomVO
	 * @return
	 */
	public List<ChattingRoomVO> selectChattingRoomList(ChattingRoomVO chattingRoomVO);
	
	/**
	 * 채팅방 삭제
	 * @param chattingRoomVO
	 * @return
	 */
	public int deleteChattingRoomVO(ChattingRoomVO chattingRoomVO);
	
	/**
	 * 이미 가입된 방인지 확인
	 * @param chattingRoomMapper
	 * @return
	 */
	public ChattingRoomVO selectChattingRoom(ChattingRoomVO chattingRoomVO);
	
	/**
	 * 방문 일정 등록
	 * @param scheduleVO
	 * @return
	 */
	public int insertVisitSchedule(ScheduleVO scheduleVO);
}
