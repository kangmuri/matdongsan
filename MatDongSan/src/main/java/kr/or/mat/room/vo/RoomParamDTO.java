package kr.or.mat.room.vo;

import java.io.Serializable;
import java.util.List;

import kr.or.mat.attachFile.vo.TbAttachFileVO;
import lombok.Data;

@Data
public class RoomParamDTO implements Serializable{
	RoomVO roomVO;
	RoomDealingVO roomDealingVO;
	List<RoomLvlhVO> roomLvlhList;
	List<TbAttachFileVO> fileArr;
	List<TbAttachFileVO> oldFileList;
	String userNo;
}
