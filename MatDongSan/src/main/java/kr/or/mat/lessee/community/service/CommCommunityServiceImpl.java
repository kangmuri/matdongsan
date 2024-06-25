package kr.or.mat.lessee.community.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.mat.lessee.community.mapper.CommCommentMapper;
import kr.or.mat.lessee.community.vo.CommentsVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CommCommunityServiceImpl implements CommCommunityService{
	
	private final CommCommentMapper mapper;
	
	/**
	 * 댓글 조회
	 */
	@Override
	public List<CommentsVO> retrieveCommentList(String pstNo) {
		// TODO Auto-generated method stub
		return mapper.selectCommentList(pstNo);
	}
	
	/**
	 * 댓글 등록
	 */
	@Override
	public int createComment(CommentsVO comment) {
		// TODO Auto-generated method stub
		return mapper.insertComment(comment);
	}
	
	/**
	 * 댓글 수정
	 */
	@Override
	public int modifyComment(CommentsVO comment) {
		// TODO Auto-generated method stub
		return mapper.updateComment(comment);
	}

	/**
	 * 댓글 삭제
	 */
	@Override
	public int removeComment(String pstNo) {
		// TODO Auto-generated method stub
		return mapper.deleteComment(pstNo);
	}

	
}
