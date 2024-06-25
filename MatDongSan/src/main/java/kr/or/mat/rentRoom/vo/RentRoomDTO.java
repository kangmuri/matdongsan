package kr.or.mat.rentRoom.vo;

import java.io.Serializable;
import java.util.List;

import kr.or.mat.attachFile.vo.TbAttachFileVO;
import kr.or.mat.room.vo.RoomLvlhVO;
import kr.or.mat.room.vo.RoomVO;
import lombok.Data;

@Data
public class RentRoomDTO implements Serializable{
	RoomVO roomVO;
	RentRoomVO rentRoomVO;
	List<RoomLvlhVO> roomLvlhList;
	List<TbAttachFileVO> fileArr;
}
