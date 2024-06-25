package kr.or.mat.contract.service;

import java.util.List;

import kr.or.mat.contract.vo.CntrctDealingVO;
import kr.or.mat.mypage.vo.MyProfileVO;
import kr.or.mat.paging.PaginationInfo;

/**
 * 거래관리 시스템 계약하기
 * @author Seongmin Park
 *
 */
public interface ContractService {
	/**
	 * 유저 아이디 조회
	 * @param myProfileVO
	 * @return
	 */
	public MyProfileVO retrieveUser(MyProfileVO myProfileVO);
	
	/**
	 * 계약 생성
	 * @param cntrctDealingVO
	 * @return
	 */
	public int createContractDealing(CntrctDealingVO cntrctDealingVO);
	
	/**
	 * 계약 수정 또는 임차인정보 입력
	 * @param cntrctDealingVO
	 * @return
	 */
	public int updateContractDealing(CntrctDealingVO cntrctDealingVO);
	
	/**
	 * 임대 또는 임차 계약서 목록 조회
	 * @param cntrctDealingVO
	 * @return
	 */
	public List<CntrctDealingVO> retrieveCntrctDealingList(PaginationInfo page);
	
	/**
	 * 계약서 조회
	 * @param cntrctDealingVO
	 * @return
	 */
	public CntrctDealingVO retrieveCntrctDealing(CntrctDealingVO cntrctDealingVO);
	
	/**
	 * 임대인 계약서 수정
	 * @param cntrctDealingVO
	 * @return
	 */
	public int updateLessorContractDealing(CntrctDealingVO cntrctDealingVO);
}
