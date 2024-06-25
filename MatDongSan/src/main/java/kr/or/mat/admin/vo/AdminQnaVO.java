package kr.or.mat.admin.vo;

import java.io.Serializable;

import lombok.Data;

@Data
public class AdminQnaVO implements Serializable{
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
	private String unityAtchmnflNo;
	private String boardNo;
	private String userNo;
	
	private String userNm;
	private String userId;
	
	//qna게시글에 달린 답변횟수
	private int cmt;
	
	//신고횟수
	private String rcnt;
}
