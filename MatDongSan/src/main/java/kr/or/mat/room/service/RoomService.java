package kr.or.mat.room.service;

import org.springframework.stereotype.Service;

import kr.or.mat.room.vo.RoomVO;

public interface RoomService {
	public int createRoom(RoomVO roomVO);
	
	public int modifyRoom(RoomVO roomVO);
}
