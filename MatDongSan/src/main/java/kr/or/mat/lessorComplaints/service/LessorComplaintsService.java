package kr.or.mat.lessorComplaints.service;

import java.util.List;

import kr.or.mat.lessorComplaints.vo.LessorComplaintsVO;
import kr.or.mat.paging.PaginationInfo;

/**
 *  파일명 : LessorComplaintsService.java
 *  설 명 : 민원 관리를 위한 클래스
 *  작성자 : 이성경
 *  작성일 : 2024. 06. 09
 */
public interface LessorComplaintsService {
	
	/**
	 * 민원 답변 등록
	 * @return
	 */
	public int createComplaintsAnswer(LessorComplaintsVO LessorComplaintsVO);
	
	/**
	 * 민원 목록 조회
	 * @return
	 */
	public List<LessorComplaintsVO> retrieveComplaintsList(PaginationInfo paging);
	
	
	/**
	 * 특정 민원 조회
	 * @return
	 */
	public LessorComplaintsVO retrieveComplaints(String cvlcpNo);
	
	
	/**
	 * 민원 답변 수정
	 * @return
	 */
	public int modifyComplaintsAnswer(LessorComplaintsVO LessorComplaintsVO);
	
	/**
	 * 민원 답변 삭제
	 * @return
	 */
	public int removeComplaintsAnswer(LessorComplaintsVO LessorComplaintsVO);
}
