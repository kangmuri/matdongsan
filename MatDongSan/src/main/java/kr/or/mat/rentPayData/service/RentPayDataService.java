package kr.or.mat.rentPayData.service;

import java.util.List;

import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.rentPayData.vo.RentPayDataVO;

/**
 *  파일명 : RentPayDataService.java
 *  설 명 : 임대관리 납부데이터 관리를 위한 서비스 인터페이스
 *  작성자 : 이성경
 *  작성일 : 2024. 05. 29
 *  최종 수정일 : 2024. 05. 29
 */

public interface RentPayDataService {
	
	/**
	 * 로그인한 임대인이 보유한 건물의 납부데이터 전체 리스트 조회 
	 */
	public List<RentPayDataVO> retrievePayDataAllList(PaginationInfo paging);
	
	/**
	 * 납부데이터 단건 조회 
	 */
	public RentPayDataVO  retrievePayDataOne(RentPayDataVO rentPayData);
	
	/**
	 * 납부 처리
	 */
	public int updatePayDe(RentPayDataVO rentPayData);
}
