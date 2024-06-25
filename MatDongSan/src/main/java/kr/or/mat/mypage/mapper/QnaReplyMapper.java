package kr.or.mat.mypage.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.mypage.vo.QnaReplyVO;
/**
 *  파일명 : QnaReplyMapper.java
 *  설 명 : 1:1문의 게시판의 댓글을 위한 Mapper클래스
 *  작성자 : 한요한
 *  작성일 : 2024. 05. 22
 *  최종 수정일 : 2024. 05. 22
 */
@Mapper
public interface QnaReplyMapper {
	/**
	 * 댓글 등록을 위한 메소드
	 * @param inputData insert할 QnaReplyVO정보 
	 * @return 등록 성공, 실패
	 */
	public int insertQnaReply(QnaReplyVO inputData);

	/**
	 * 댓글 조회를 위한 메소드
	 * @param inputData 조회할 게시글번호가 담긴 QnaReplyVO
	 * @return 해당 게시글과 연결된 댓글정보 리스트
	 */
	public List<QnaReplyVO> selectQnaReplyList(String pstNo);
	
}
