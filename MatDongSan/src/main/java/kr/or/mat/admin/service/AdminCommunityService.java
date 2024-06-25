package kr.or.mat.admin.service;

import java.util.List;

import kr.or.mat.admin.vo.AdminQnaReplyVO;
import kr.or.mat.admin.vo.AdminQnaVO;
import kr.or.mat.paging.PaginationInfo;

public interface AdminCommunityService {
	
	/**
	 * 커뮤니티 리스트 & 페이지 처리
	 * @return 1:1게시글 리스트
	 */
	public List<AdminQnaVO> retrieveCommunityList(PaginationInfo inputData);
	
	/**
	 * 커뮤니티 게시글 상세 조회
	 * @return 1:1 게시글 상세 페이지
	 */
	public AdminQnaVO retrieveAdminCommunity(AdminQnaVO inputData);
	
	/**
	 * 커뮤니티 게시글 상세의 댓글 조회
	 * @param pstNo
	 * @return 게시글 댓글 리스트
	 */
	public List<AdminQnaReplyVO> retrieveAdminCommunityReply(String pstNo);
	
	/**
	 * 커뮤니티 댓글 삭제
	 * @param inputData
	 * @return
	 */
	public int removeAdminCommunityReply(AdminQnaReplyVO inputData);
	
	/**
	 * 커뮤니티 게시글 삭제
	 * @return 
	 */
	public int removeAdminCommunity(String pstNo);
	
}
