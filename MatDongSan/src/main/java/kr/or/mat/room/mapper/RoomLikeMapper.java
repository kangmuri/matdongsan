package kr.or.mat.room.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.room.vo.RoomLikeVO;

@Mapper
public interface RoomLikeMapper {

	//해당 유저의 찜목록 조회
	public List<RoomLikeVO> selectRoomLikeList();
	
	//해당매물을 찜한 유저 조회
	public RoomLikeVO selectRoomLike(RoomLikeVO roomLikeVO);
	
	//찜하기
	public int insertRoomLike(RoomLikeVO roomLikeVO);
	
	//찜 취소
	public int deleteRoomLike(String roomLikeNo);
	
}
