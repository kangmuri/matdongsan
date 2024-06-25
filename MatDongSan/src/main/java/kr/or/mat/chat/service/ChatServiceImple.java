package kr.or.mat.chat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.mat.chat.mapper.ChattingRoomMapper;
import kr.or.mat.chat.vo.ChattingRoomVO;
import kr.or.mat.lessee.schedule.vo.ScheduleVO;

@Service
public class ChatServiceImple implements ChatService{

	@Autowired
	private ChattingRoomMapper mapper;
	@Override
	public ChattingRoomVO createChattingRoom(ChattingRoomVO chattingRoomVO) {
		ChattingRoomVO chatRoom = new ChattingRoomVO();
		chatRoom.setGuestNo(chattingRoomVO.getGuestNo());
		chatRoom.setHostNo(chattingRoomVO.getHostNo());
		ChattingRoomVO chattingRoom = mapper.selectChattingRoom(chattingRoomVO);
		//이미 가입된 방이 없으면
		if(chattingRoom == null) {
			int cnt = mapper.insertChattingRoomVO(chatRoom);
			if(cnt > 0) {
				return chatRoom;
			}
			else return null;
			//가입된 방이 있으면
		}else return chattingRoom;
	
	}

	@Override
	public List<ChattingRoomVO> retrieveChattingRoomList(ChattingRoomVO chattingRoomVO) {
		
		return mapper.selectChattingRoomList(chattingRoomVO);
	}

	@Override
	public int removeChattingRoomVO(ChattingRoomVO chattingRoomVO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int createVisitSchedule(ScheduleVO scheduleVO) {
		
		return mapper.insertVisitSchedule(scheduleVO);
	}

}
