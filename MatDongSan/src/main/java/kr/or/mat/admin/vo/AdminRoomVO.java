package kr.or.mat.admin.vo;

import lombok.Data;

@Data
public class AdminRoomVO {
	private int rnum;
	
	private String roomAsapYn;
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
	private String roomNo;
	private Long roomPas;
	
	private String userId;
}
