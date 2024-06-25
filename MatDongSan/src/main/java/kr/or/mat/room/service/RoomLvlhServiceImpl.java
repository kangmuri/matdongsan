package kr.or.mat.room.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.mat.room.mapper.RoomLvlhMapper;
import kr.or.mat.room.vo.RoomLvlhVO;

@Service
public class RoomLvlhServiceImpl implements RoomLvlhService {

	@Autowired
	private RoomLvlhMapper mapper;
	
	@Override
	public int createRoomLvlh(RoomLvlhVO roomLvlhVO) {		
		return mapper.insertRoomLvlh(roomLvlhVO);
	}

	@Override
	public int removeRoomLvlh(String roomNo) {		
		return mapper.deleteRoomLvlh(roomNo);
	}

}
