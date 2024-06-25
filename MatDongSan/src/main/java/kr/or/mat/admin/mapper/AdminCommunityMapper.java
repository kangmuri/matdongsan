package kr.or.mat.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.admin.vo.AdminQnaReplyVO;
import kr.or.mat.admin.vo.AdminQnaVO;
import kr.or.mat.paging.PaginationInfo;

@Mapper
public interface AdminCommunityMapper {
	/**
	 * 1:1게시글 리스트 & 페이지 처리
	 * @return 1:1게시글 리스트
	 */
	public List<AdminQnaVO> retrieveAdminCommunityList(PaginationInfo inputData);
	
	/**
	 * 1:1 게시글 상세 조회
	 * @return 1:1 게시글 상세 페이지
	 */
	public AdminQnaVO retrieveAdminCommunity(AdminQnaVO inputData);
	
	/**
	 * 1:1 게시글 상세의 댓글 조회
	 * @param pstNo
	 * @return 게시글 댓글 리스트
	 */
	public List<AdminQnaReplyVO> retrieveAdminCommunityReply(String pstNo);
	
	/**
	 * 1:1게시글 답변(댓글) 삭제
	 * @return 수정 성공여부
	 */
	public int deleteAdminCommunityReply(AdminQnaReplyVO inputData);
	
	/**
	 * 1:1게시글 삭제
	 * @return 
	 */
	public int deleteAdminCommunity(String pstNo);
	
	/**
	 * 전체 페이지 정보 가져오기
	 * @return 
	 */
	public int selectTotalRecord(PaginationInfo paging);
	
	/**
	 * 신고 게시글 내용(반려사유, 처리상태) 업데이트
	 * @return 
	 */
	public int updateAdminCommunity(String pstNo);
}
