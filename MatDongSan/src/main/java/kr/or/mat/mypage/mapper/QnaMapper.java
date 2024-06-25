package kr.or.mat.mypage.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.mypage.vo.QnaReplyVO;
import kr.or.mat.mypage.vo.QnaVO;
import kr.or.mat.paging.PaginationInfo;

/**
 *  파일명 : QnaMapper.java
 *  설 명 : 1:1 문의를 위한 클래스
 *  작성자 : 한요한
 *  작성일 : 2024. 05. 17
 *  최종 수정일 : 2024. 05. 17
 */
@Mapper
public interface QnaMapper {
	
	/**
	 * 1:1게시글 생성
	 * @return 게시글 생성 성공여부
	 */
	public int insertQna(QnaVO inputData);
	/**
	 * 1:1게시글 리스트
	 * @return 1:1게시글 리스트
	 */
	public List<QnaVO> selectQnaList(PaginationInfo paging);
	/**
	 * 1:1 게시글 상세 조회
	 * @return 1:1 게시글 상세 페이지
	 */
	public QnaVO selectQna(QnaVO inputData);
	
	/**
	 * 댓글 조회를 위한 메소드
	 * @param inputData 조회할 게시글번호가 담긴 QnaReplyVO
	 * @return 해당 게시글과 연결된 댓글정보 리스트
	 */
	public List<QnaReplyVO> selectQnaReplyList(String pstNo);
	
	/**
	 * 해당 게시글의 댓글 유무를 확인하는 메소드
	 * @param pstNo
	 * @return
	 */
	public int selectReplyCk(String pstNo);
	
	/**
	 * 1:1게시글 수정
	 * @return 수정 성공여부
	 */
	public int updateQna(QnaVO inputData);
	/**
	 * 1:1게시글 삭제
	 * @return 
	 */
	public int deleteQna(QnaVO inputData);
	
	/**
	 * 전체 페이지 정보 가져오기
	 * @return 
	 */
	public int selectTotalRecord(PaginationInfo paging);
	
	
}
