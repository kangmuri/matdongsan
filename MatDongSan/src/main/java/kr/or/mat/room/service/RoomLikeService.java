package kr.or.mat.room.service;

import kr.or.mat.room.vo.RoomLikeVO;

/**
 * 찜 기능 CRUD 
 * @author Seongmin Park
 *	작성일 :  24.05.23
 */
public interface RoomLikeService {
	public int createRoomLike(RoomLikeVO roomLikeVO);
	
	public int removeRoomLike(String roomLikeNo);
	
	public RoomLikeVO retrieveRoomLike(RoomLikeVO roomLikeVO);
}
