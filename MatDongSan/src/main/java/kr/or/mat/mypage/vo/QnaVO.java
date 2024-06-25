package kr.or.mat.mypage.vo;

import java.io.Serializable;

import lombok.Data;

@Data
public class QnaVO implements Serializable{
	private int rnum;
	
	private String pstNo;
	private String pstSj;
	private String pstCn;
	private Long pstRdcnt;
	private String pstWrtDe;
	private String pstUpddeDt;
	private String pstDelDt;
	private String pstMngrYn;
	private String pstOthbcYn;
	private String pstDelYn;
	private Long unityAtchmnflNo;
	private String boardNo;
	private String userNo;
	
	private String userNm;
	//댓글 여부 판단
	private String cmtYn;
}