package kr.or.mat.room.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.mat.room.mapper.RoomLikeMapper;
import kr.or.mat.room.vo.RoomLikeVO;

@Service
public class RoomLikeServiceImpl implements RoomLikeService{

	@Autowired
	RoomLikeMapper mapper;
	
	@Override
	public int createRoomLike(RoomLikeVO roomLikeVO) {
		
		return mapper.insertRoomLike(roomLikeVO);
	}

	@Override
	public int removeRoomLike(String roomLikeNo) {
		// TODO Auto-generated method stub
		return mapper.deleteRoomLike(roomLikeNo);
	}

	@Override
	public RoomLikeVO retrieveRoomLike(RoomLikeVO roomLikeVO) {
		// TODO Auto-generated method stub
		return mapper.selectRoomLike(roomLikeVO);
	}
	
}
