package kr.or.mat.mypage.vo;

import java.io.Serializable;

import lombok.Data;

@Data
public class QnaReplyVO implements Serializable{
	
	private String cmntNo;
	private String cmntWrtDt;
	private String cmntCn;
	private String cmntUpddeDt;
	private String cmntDelDt;
	private String cmntDelYn;
	private String pstNo;
	private String userNoCmnt;
	
	private String userId;
	private String userNm;
}
