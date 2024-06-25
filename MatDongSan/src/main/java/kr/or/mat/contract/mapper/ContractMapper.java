package kr.or.mat.contract.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.contract.vo.CntrctDealingVO;
import kr.or.mat.paging.PaginationInfo;

@Mapper
public interface ContractMapper {

	/**
	 * 계약 등록
	 * @param cntrctDealingVO
	 * @return
	 */
	public int insertContractDealing(CntrctDealingVO cntrctDealingVO);
	
	/**
	 * 계약 수정 / 임차인 정보 입력
	 * @param cntrctDealingVO
	 * @return
	 */
	public int updateContractDealing(CntrctDealingVO cntrctDealingVO);
	
	/**
	 * 임대 또는 임차 계약 목록 조회
	 * @param cntrctDealingVO
	 * @return
	 */
	public List<CntrctDealingVO> selectCntrctDealingList(PaginationInfo page);
	
	/**
	 * 계약 단건 조회
	 * @param cntrctDealingVO
	 * @return
	 */
	public CntrctDealingVO selectCntrctDealing(CntrctDealingVO cntrctDealingVO);
	
	/**
	 * 전체 페이지 정보 가져오기
	 * @return 
	 */
	public int selectTotalRecord(PaginationInfo paging);
}
