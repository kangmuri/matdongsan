package kr.or.mat.mypage.service;

import java.util.List;

import kr.or.mat.mypage.vo.QnaReplyVO;
import kr.or.mat.mypage.vo.QnaVO;
import kr.or.mat.paging.PaginationInfo;
/**
 *  파일명 : QnaService.java
 *  설 명 : 1:1 문의를 위한 Service클래스
 *  작성자 : 한요한
 *  작성일 : 2024. 05. 17
 *  최종 수정일 : 2024. 05. 22
 */
public interface QnaService {
	
	/**
	 * 1:1게시글 생성
	 * @return 게시글 생성 성공여부
	 */
	public int createQna(QnaVO inputData);
	
	/**
	 * 1:1게시글 리스트 & 페이지 처리
	 * @return 1:1게시글 리스트
	 */
	public List<QnaVO> retrieveQnaList(PaginationInfo inputData);
	
	/**
	 * 1:1 게시글 상세 조회
	 * @return 1:1 게시글 상세 페이지
	 */
	public QnaVO retrieveQna(QnaVO inputData);
	
	/**
	 * 1:1 상세 게시글 전제 댓글 조회
	 * @return
	 */
	public List<QnaReplyVO> retrieveQnaReply(String pstNo);
	
	/**
	 * 1:1게시글 수정
	 * @return 수정 성공여부
	 */
	public int modifyQna(QnaVO inputData);
	
	/**
	 * 1:1게시글 삭제
	 * @return 
	 */
	public int removeQna(QnaVO inputData);
}
