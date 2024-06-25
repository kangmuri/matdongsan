package kr.or.mat.util.cmmnCode.vo;

import lombok.Data;

/**
 *  파일명 : CmmnCodeVO.java
 *  설 명 : 공통코드 vo
 *  작성자 : 이성경
 *  작성일 : 2024. 05. 19
 *  최종 수정일 : 2024. 05. 19
 */
@Data
public class CmmnCodeVO {
	private String cmmnCd;
	private String cmmnCdNm;
	private String cmmnCdDc;
	private long outptOrdr;
	private String useAt;
	private String cmmnParent;
}
