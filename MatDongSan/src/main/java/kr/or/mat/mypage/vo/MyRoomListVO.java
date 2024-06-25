package kr.or.mat.mypage.vo;

import java.io.Serializable;

import lombok.Data;

@Data
public class MyRoomListVO implements Serializable{
	
	private String roomNo;
	private String bldgAddr;
	private String region1depthNm;
	private String region2depthNm;
	private String region3depthNm;
	private String bun;
	private String ji;
	private String hCode;
	private String bCode;
	private Long x;
	private Long y;
	private Long floorCnt;
	private Long rentDong;
	private Long roomFloor;
	private Long roomUnit;
	private Long roomBtrCnt;
	private String dctLadLndcgr;
	private Long dctLadAr;
	private Long buldAr;
	private String buldPrpos;
	private String buldMprpos;
	private Long rentAr;
	private String roomTy;
	private String roomParkngYn;
	private String roomElvtrYn;
	private String unityAtchmnflNo;
	private String userNo;
	
	private String webPath; //사진
	private String roomDetailDcSj; // 게시글 제목
	private String roomDelngDe;  // 등록일자
	private String roomDealingStts; // 매물상태
	private String roomOthbcYn; // 매물삭제
	private String roomDelngNo; // 거래매물번호
	
}
