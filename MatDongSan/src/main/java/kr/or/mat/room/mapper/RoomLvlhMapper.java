package kr.or.mat.room.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.room.vo.RoomLvlhVO;

@Mapper
public interface RoomLvlhMapper {

	/**
	 * 해당 방정보의 옵션 조회
	 * @param roomNo
	 * @return
	 */
	public List<RoomLvlhVO> selectRoomLvlhList(String roomNo);
	
	/**
	 * 해당 방의 옵션 입력
	 * @param roomNo
	 * @return
	 */
	public int insertRoomLvlh(RoomLvlhVO roomLvlhVO);
	
	/**
	 * 해당 방의 옵션 삭제
	 * @param roomNo
	 * @return
	 */
	public int deleteRoomLvlh(String roomNo);
	
	
}
