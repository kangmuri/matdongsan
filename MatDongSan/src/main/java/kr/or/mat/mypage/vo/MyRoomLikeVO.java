package kr.or.mat.mypage.vo;

import java.io.Serializable;

import lombok.Data;

@Data
public class MyRoomLikeVO implements Serializable{
	//roomLike 테이블
	private String roomLikeNo;
	private String roomLikeDt;
	private String userNo;
	private String roomDelngNo;
	
	//roomDealing 테이블 
	private String roomAsapYn;
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
	
	//room 테이블
	private String unityAtchmnflNo;
	
	//tb_attach_file 테이블
	private String webPath;
	
	//주소 
	private String region1depthNm;
	private String region2depthNm;
	private String region3depthNm;
}
