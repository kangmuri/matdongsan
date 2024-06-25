package kr.or.mat.mypage.vo;

import java.io.Serializable;
import java.util.List;

import lombok.Data;

@Data
public class QboardVO implements Serializable{
	private String boardNo;
	private String boardNm;
	private String answerYn;
	private String atchmnflYn;
	
	private List<QnaVO> qnaVO; // has many 관계
}
