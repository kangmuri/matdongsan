package kr.or.mat.lessorComplaints.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.lessorComplaints.vo.LessorComplaintsVO;
import kr.or.mat.paging.PaginationInfo;

/**
 *  파일명 : LessorComplaintsMapper.java
 *  설 명 : 민원 관리를 위한 클래스
 *  작성자 : 이성경
 *  작성일 : 2024. 06. 09
 */
@Mapper
public interface LessorComplaintsMapper {
	/**
	 * 페이징 처리를 위한 전체 레코드 수
	 * @return
	 */
	public int selectTotalRecord(PaginationInfo paging);
	
	/**
	 * 민원 답변 등록
	 * @return
	 */
	public int insertComplaintsAnswer(LessorComplaintsVO LessorComplaintsVO);
	
	/**
	 * 민원 목록 조회
	 * @return
	 */
	public List<LessorComplaintsVO> selectComplaintsList(PaginationInfo paging);
	
	
	/**
	 * 특정 민원 조회
	 * @return
	 */
	public LessorComplaintsVO selectComplaints(String cvlcpNo);
	
	
	/**
	 * 민원 답변 수정
	 * @return
	 */
	public int updateComplaintsAnswer(LessorComplaintsVO LessorComplaintsVO);
	
	/**
	 * 민원 답변 삭제
	 * @return
	 */
	public int deleteComplaintsAnswer(LessorComplaintsVO LessorComplaintsVO);
}
