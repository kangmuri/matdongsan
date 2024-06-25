package kr.or.mat.admin.service;

import java.util.List;

import kr.or.mat.admin.vo.AdminQnaReplyVO;
import kr.or.mat.admin.vo.AdminQnaVO;
import kr.or.mat.mypage.vo.QnaVO;
import kr.or.mat.paging.PaginationInfo;

/**
 *  파일명 : AdminQnaService.java
 *  설 명 : 1:1 문의를 위한 관리자 Service클래스
 *  작성자 : 한요한
 *  작성일 : 2024. 05. 27
 *  최종 수정일 : 2024. 05. 27
 */
public interface AdminQnaService {

	/**
	 * 1:1게시글 리스트 & 페이지 처리
	 * @return 1:1게시글 리스트
	 */
	public List<AdminQnaVO> retrieveQnaList(PaginationInfo inputData);
	
	/**
	 * 1:1 게시글 상세 조회
	 * @return 1:1 게시글 상세 페이지
	 */
	public AdminQnaVO retrieveAdminQna(AdminQnaVO inputData);
	
	/**
	 * 1:1 게시글 상세의 댓글 조회
	 * @param pstNo
	 * @return 게시글 댓글 리스트
	 */
	public List<AdminQnaReplyVO> retrieveAdminQnaReply(String pstNo);
	
	/**
	 * 1:1 게시글 문의 답변 등록
	 * @param inpudate
	 * @return
	 */
	public int createAdminQnaReply(AdminQnaReplyVO inpudate);
	
	/**
	 * 1:1게시글 답변(댓글) 수정
	 * @return 수정 성공여부
	 */
	public int modifyAdminQnaReply(AdminQnaReplyVO inputData);
	
	/**
	 * 1:1게시글 답변(댓글) 삭제
	 * @return 수정 성공여부
	 */
	public int removeAdminQnaReply(AdminQnaReplyVO inputData);
	
	/**
	 * 1:1게시글 삭제
	 * @return 
	 */
	public int removeAdminQna(String pstNo);
}
