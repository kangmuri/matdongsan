package kr.or.mat.room.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.mat.room.mapper.RoomMapper;
import kr.or.mat.room.vo.RoomVO;

@Service
public class RoomServiceImpl implements RoomService {

	@Autowired
	RoomMapper mapper;	
	
	@Override
	public int createRoom(RoomVO roomVO) {
		return mapper.insertRoom(roomVO);
	}

	@Override
	public int modifyRoom(RoomVO roomVO) {
		
		return mapper.updateRoom(roomVO);
	}

}
