package kr.or.mat.room.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.room.vo.RoomVO;

@Mapper
public interface RoomMapper {
	
	/**
	 * 방정보 전체 조회
	 * @return
	 */
	public List<RoomVO> selectRoomList();
	
	/**
	 * 방정보 상세조회
	 * @return
	 */
	public RoomVO selectRoom();
	
	/**
	 * 방정보 입력
	 * @return
	 */
	public int insertRoom(RoomVO room);
	
	/**
	 * 방정보 수정
	 * @return
	 */
	public int updateRoom(RoomVO room);
	
}
