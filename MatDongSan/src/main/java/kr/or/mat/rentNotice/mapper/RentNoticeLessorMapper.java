package kr.or.mat.rentNotice.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.rentNotice.vo.RentNoticeVO;
import kr.or.mat.rentRoom.vo.RentRoomVO;

/**
 *  파일명 : RentNoticeLessorMapper.java
 *  설 명 : 임대관리 공지사항 CRUD를 위한 mapper클래스
 *  작성자 : 이성경 
 *  작성일 : 2024. 05. 29
 *  최종 수정일 : 2024. 05. 29
 */
@Mapper
public interface RentNoticeLessorMapper {
	/*
	 * 조회수 증가 
	 */
	public int updateNoticeCnt(String noticeNo);
	/**
	 * 페이징 처리를 위한 전체 레코드 수
	 * @param paging
	 * @return
	 */
	public int selectTotalRecord(PaginationInfo paging);

	/**
	 * 임대관리 공지 등록
	 * @param rentRoomVO
	 * @return
	 */
	public int insertRentNotice(RentNoticeVO rentNoticeVO);
	
	/**
	 * 임대관리 공지 전체 조회
	 * @param rentRoomNo
	 * @return
	 */
	public List<RentNoticeVO> selectAllRentNoticeList(PaginationInfo paging);
	
	/**
	 * 임대관리 건물별 공지 전체 조회
	 * @param rentRoomNo
	 * @return
	 */
	public List<RentNoticeVO> selectRentNoticeList(RentNoticeVO rentNoticeVO);
	
	/**
	 * 특정 임대관리 공지 조회
	 * @param rentRoomNo
	 * @return
	 */
	public RentNoticeVO selectRentNotice(RentNoticeVO rentNoticeVO);
	
	
	/**
	 * 임대관리 공지 수정
	 * 
	 * @param rentRoomVO
	 * @return
	 */
	public int updateRentNotice(RentNoticeVO rentNoticeVO);
	
	/**
	 * 임대관리 공지 삭제
	 * 
	 * @param rentRoomNo
	 * @return
	 */
	public int deleteRentNotice(RentNoticeVO rentNoticeVO);
}
