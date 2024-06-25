package kr.or.mat.lessee.community.service;

import java.util.List;

import kr.or.mat.lessee.community.vo.CommentsVO;

public interface CommCommunityService {

	/**
	 * 댓글 조회
	 * @param pstNo
	 * @return
	 */
	public List<CommentsVO> retrieveCommentList(String pstNo);
	
	/**
	 * 댓글 등록
	 * @param comment
	 * @return
	 */
	public int createComment(CommentsVO comment);
	
	/**
	 * 댓글 수정
	 * @param comment
	 * @return
	 */
	public int modifyComment(CommentsVO comment);
	
	/**
	 * 댓글 삭제
	 * @param pstNo
	 * @return
	 */
	public int removeComment(String pstNo);
}
