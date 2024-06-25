package kr.or.mat.lessee.community.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.lessee.community.vo.CommentsVO;

@Mapper
public interface CommCommentMapper {

	/**
	 * 댓글 조회
	 * @param pstNo
	 * @return
	 */
	public List<CommentsVO> selectCommentList(String pstNo);
	
	/**
	 * 댓글 등록
	 * @param comment
	 * @return
	 */
	public int insertComment(CommentsVO comment);
	
	/**
	 * 댓글 수정
	 * @param comment
	 * @return
	 */
	public int updateComment(CommentsVO comment);
	
	/**
	 * 댓글 삭제
	 * @param pstNo
	 * @return
	 */
	public int deleteComment(String pstNo);
}
