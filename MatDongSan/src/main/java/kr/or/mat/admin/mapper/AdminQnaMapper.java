package kr.or.mat.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.admin.vo.AdminQnaReplyVO;
import kr.or.mat.admin.vo.AdminQnaVO;
import kr.or.mat.paging.PaginationInfo;
/**
 *  파일명 : AdminQnaMapper.java
 *  설 명 : 관리자 1:1 문의를 위한 클래스
 *  작성자 : 한요한
 *  작성일 : 2024. 05. 26
 *  최종 수정일 : 2024. 05. 27
 */
@Mapper
public interface AdminQnaMapper {
	
	/**
	 * 1:1게시글 리스트 & 페이지 처리
	 * @return 1:1게시글 리스트
	 */
	public List<AdminQnaVO> selectAdminQnaList(PaginationInfo inputData);
	
	/**
	 * 1:1 게시글 상세 조회
	 * @return 1:1 게시글 상세 페이지
	 */
	public AdminQnaVO selectAdminQna(AdminQnaVO inputData);
	
	/**
	 * 1:1 게시글의 상세 댓글 조회
	 * @param pstNo
	 * @return
	 */
	public List<AdminQnaReplyVO> retrieveAdminQnaReply(String pstNo);
	
	/**
	 * 1:1 게시글의 댓글 여부 조회
	 * @param pstNo
	 * @return
	 */
	public int retrieveAdminQnaReplyCk(String pstNo);
	
	
	
	/**
	 * 1:1 게시글에 문의 답변 등록
	 * @return
	 */
	public int insertAdminReply(AdminQnaReplyVO inputdata);
	
	/**
	 * 1:1게시글 답변(댓글) 수정
	 * @return 수정 성공여부
	 */
	public int updateAdminQnaReply(AdminQnaReplyVO inputData);
	
	/**
	 * 1:1게시글 답변(댓글) 삭제
	 * @return 수정 성공여부
	 */
	public int deleteAdminQnaReply(AdminQnaReplyVO inputData);
	
	/**
	 * 1:1게시글 삭제
	 * @return 
	 */
	public int deleteAdminQna(String pstNo);
	
	/**
	 * 전체 페이지 정보 가져오기
	 * @return 
	 */
	public int selectTotalRecord(PaginationInfo paging);
	
}
