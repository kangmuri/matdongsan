package kr.or.mat.chat.service;

import java.util.List;

import kr.or.mat.chat.vo.ChattingRoomVO;
import kr.or.mat.lessee.schedule.vo.ScheduleVO;

/**
 * 
 * @author Seongmin Park
 *	내용 : 채팅방 만들기 / 채팅방 목록 가져오기 서비스
 *	작성일 : 24.05.29
 */
public interface ChatService {
	
	/**
	 * 채팅방 만들기
	 * @param chattingRoomVO
	 * @return 생성한 채팅방 번호를 가진 VO 반환
	 */
	public ChattingRoomVO createChattingRoom(ChattingRoomVO chattingRoomVO);

	/**
	 * 자신이 소속되어있는 채팅방 목록 불러오기
	 * @param chattingRoomVO
	 * @return
	 */
	public List<ChattingRoomVO> retrieveChattingRoomList(ChattingRoomVO chattingRoomVO);

	/**
	 * 채팅방 떠나기
	 * @param chattingRoomVO
	 * @return
	 */
	public int removeChattingRoomVO(ChattingRoomVO chattingRoomVO);
	
	/**
	 * 방문일정 예약
	 * @param scheduleVO
	 * @return
	 */
	public int createVisitSchedule(ScheduleVO scheduleVO);
}
