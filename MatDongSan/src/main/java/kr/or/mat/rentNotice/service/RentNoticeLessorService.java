package kr.or.mat.rentNotice.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.rentNotice.vo.RentNoticeVO;

/**
 *  파일명 : RentNoticeLessorService.java
 *  설 명 : 임대관리 공지사항 CRUD를 위한 service클래스
 *  작성자 : 이성경 
 *  작성일 : 2024. 05. 29
 *  최종 수정일 : 2024. 05. 29
 */

@Service
public interface RentNoticeLessorService {
	/**
	 * 임대관리 공지 등록
	 * @param rentRoomVO
	 * @return
	 */
	public int createRentNotice(RentNoticeVO rentNoticeVO);
	
	
	/**
	 * 임대관리 공지 전체 조회
	 * @param rentRoomNo
	 * @return
	 */
	public List<RentNoticeVO> retrieveAllRentNoticeList(PaginationInfo paging);
	
	/**
	 * 임대관리 건물별 공지 전체 조회
	 * @param rentRoomNo
	 * @return
	 */
	public List<RentNoticeVO> retrieveRentNoticeList(RentNoticeVO rentNoticeVO);
	
	/**
	 * 특정 임대관리 공지 조회
	 * @param rentRoomNo
	 * @return
	 */
	public RentNoticeVO retrieveRentNotice(RentNoticeVO rentNoticeVO);
	
	
	/**
	 * 임대관리 공지 수정
	 * 
	 * @param rentRoomVO
	 * @return
	 */
	public int modifyRentNotice(RentNoticeVO rentNoticeVO);
	
	/**
	 * 임대관리 공지 삭제
	 * 
	 * @param rentRoomNo
	 * @return
	 */
	public int removeRentNotice(RentNoticeVO rentNoticeVO);
}	
