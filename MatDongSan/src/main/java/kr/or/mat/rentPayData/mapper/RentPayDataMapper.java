package kr.or.mat.rentPayData.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.lessee.payData.vo.PayDataVO;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.rentPayData.vo.RentPayDataVO;

/**
 *  파일명 : RentPayDataMapper.java
 *  설 명 : 임대관리 납부데이터 관리를 위한 매퍼인터페이스
 *  작성자 : 이성경
 *  작성일 : 2024. 05. 29
 *  최종 수정일 : 2024. 06. 02
 *  */

@Mapper
public interface RentPayDataMapper {
	
	/**
	 * 페이징 처리를 위한 전체 레코드 수
	 * @param paging
	 * @return
	 */
	public int selectTotalRecord(PaginationInfo paging);
	
	/**
	 * 로그인한 임대인이 보유한 건물의 납부데이터 전체 리스트 조회 
	 *  
	 */
	public List<RentPayDataVO>  selectPayDataAllList(PaginationInfo paging);
	
	/**
	 * 납부데이터 단건 조회 
	 *  
	 */
	public RentPayDataVO  selectPayDataOne(RentPayDataVO rentPayData);
	
	/**
	 * 00시 되면 테이블에있는 납부데이터 조회해서 납부상태 바꿔주는 스케줄링
	 */
	public void updateRentpayStts();
	
	/**
	 * 납부 처리
	 */
	public int updatePayDe(RentPayDataVO rentPayData);
	/*======================== 임대인 메인화면 통계 ==========================-*/
	/**
	 * 오늘 입금 예정 건수 
	 */
	public int todayPayDedtDe(String userNo);
	/**
	 * 당월 입금 금액
	 */
	public int thisMonthRqestAmt(String userNo);
	/**
	 * 오늘 입금 금액
	 */
	public int todayRqestAmt(String userNo);
	/**
	 * 월별 입금액 (차트)
	 */
	public List<RentPayDataVO> chart(String userNo);
	/**
	 * 월별 입금액 (차트)
	 */
	public List<RentPayDataVO> chart2(String userNo);
	
}






