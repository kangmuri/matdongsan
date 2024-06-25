package kr.or.mat.room.vo;

import java.io.Serializable;
import java.util.List;

import kr.or.mat.attachFile.vo.TbAttachFileVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "roomDelngNo")
public class RoomDealingVO implements Serializable{
	private String roomDelngNo;
	private Long roomSize;
	private Long roomCnt;
	private String livingType;
	private String delngType;
	private Long roomLshl;
	private Long roomMhl;
	private Long roomDeposit;
	private Long roomManagectPc;
	private String roomManagectAt;
	private String roomDetailDcSj;
	private String roomDetailDc;
	private String roomMvnPosbl;
	private String roomDelngDe;
	private String roomDealingStts;
	private String roomOthbcYn;
	private String roomAsapYn;
	private String roomNo;
	private Long roomPas;
	private Integer likeYn;
	
	//has a
	private RoomVO room;
	
	private List<RoomLikeVO> roomLikeList;
	
}
