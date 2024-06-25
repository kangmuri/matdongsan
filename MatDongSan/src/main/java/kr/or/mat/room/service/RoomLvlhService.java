package kr.or.mat.room.service;

import kr.or.mat.room.vo.RoomLvlhVO;

public interface RoomLvlhService {
	public int createRoomLvlh(RoomLvlhVO roomLvlhVO);
	
	public int removeRoomLvlh(String roomNo);
	
}
