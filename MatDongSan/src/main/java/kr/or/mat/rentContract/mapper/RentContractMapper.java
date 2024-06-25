package kr.or.mat.rentContract.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.lessee.contractRent.vo.ContractRentVO;
import kr.or.mat.rentContract.vo.RentContractVO;
import kr.or.mat.rentPayData.vo.RentPayDataVO;
/**
 *  파일명 : RentContractMapper.java
 *  설 명 : 임대관리 계약정보를 위한 인터페이스
 *  작성자 : 이성경
 *  작성일 : 2024. 05. 27
 *  최종 수정일 : 2024. 05. 28
 */

@Mapper
public interface RentContractMapper {
	/**
	 * 임대관리 계약 등록
	 * 
	 * @param rentContractVO
	 * @return
	 */
	public int insertRentContract(RentContractVO rentContractVO);
	
	/**
	 * 방 단건에 대한 계약 목록 조회 
	 * @param rentContractVO (상태값,방번호)
	 * @return
	 */
	public List<RentContractVO> selectRentRoomCntrtList(RentContractVO rentContractVO);
	
	
	/**
	 * 건물 한건에 대한 계약 목록 조회
	 *  @param rentContractVO (상태값,건물번호)
	 *  @return
	 */
	public List<RentContractVO> selectRentBldgCntrtList(RentContractVO rentContractVO);
	
	
	/**
	 * 특정 임대관리 계약 조회
	 * 
	 * @param cntrctRentNo
	 * @return
	 */
	public RentContractVO selectRentContract(String cntrctRentNo);
	
	
	
	/**
	 * USER가 보유한 전체 계약 리스트 조회 (임대현황)
	 * 
	 * @param cntrctRentNo
	 * @return
	 */
	public List<RentContractVO> selectAllRentContract(RentContractVO rentContractVO);
	
	
	/**
	 * 임대관리 계약 정보 수정
	 * 
	 * @param bldgVO
	 * @return
	 */
	public void updateRentContract(RentContractVO contractRentVO);
	
	/**
	 * 임대관리 계약 정보 삭제
	 * 
	 * @param bldgNo-
	 * @return
	 */
	public void deleteRentContract(String cntrctRentNo);
	
	/**
	 * 00시 되면 테이블에있는 계약정보 조회해서 계약상태 바꿔주는 스케줄링
	 */
	public void updateRentContractStts();
	
	/**
	 * 임차인에게 보낸 보안코드 계약테이블 컬럼에 저장
	 */
	public int updateConnectLessee(RentContractVO rentContractVO);
	
	/**
	 * 임차인이 쓴 보안코드 비교
	 */
	public String selectCheckCode(String secureCode);
	/**
	 * 보안코드 일치하면 lesseeno에 update 하기
	 */
	public int updateLesseeNo(RentContractVO rentContractVO);

	/**
	 * 중도퇴실 업데이트
	 */
	public int updateMidway(RentContractVO rentContractVO);
	
	/*======================== 임대인 메인화면 통계(rentContract) ==========================-*/
	/**
	 * 전체 계약건수
	 */
	public int selectCnrtAllCount(String userNo);
	/**
	 * 이번달 등록한 계약건 개수
	 */
	public int selectThisMonthCnrtCount(String userNo);
	
	/**
	 * 저번달 등록한 계약건 개수
	 */
	public int selectPreMonthCnrtCount(String userNo);
	
	/**
	 * 현재 입주중인 계약건 개수
	 */
	public int selectRSTTS01Count(String userNo);
	
	/**
	 * 7일 이내 종료예정 계약건 개수
	 */
	public int selectBefore7EndCount(String userNo);
	
	/**
	 * 이번달 종료예정 계약건 개수
	 */
	public int selectThisMonthEndCount(String userNo);
	
	
	/**
	 *  계약중인 보증금 총액
	 */
	public int selectAllGrnteAmt(String userNo);
	
	/**
	 *  계약중인 관리비 총액
	 */
	public int selectAllManagectAmt(String userNo);
	
	/**
	 *  계약중인 임대료 총액
	 */
	public int selectAllMhlAmt(String userNo);
	
	/**
	 *  종료예정 호실 
	 */
	public int selectEndRoom(String rentBldgNo);
	
	
	/**
	 *  빌딩 한개당 공실 리스트
	 */
	public List<RentContractVO> selectBuildingGongsil(String rentBldgNo);
	
	/**
	 *  빌딩 한개당 공실 리스트2
	 */
	public List<RentContractVO> selectBuildingGongsil2(String rentBldgNo);
	
	/**
	 *  빌딩 한개당 공실 리스트3
	 */
	public RentContractVO selectBuildingGongsil3(RentContractVO rentContractVO);
	
	/**
	 *  빌딩 한개당 공실 리스트4
	 */
	public RentContractVO selectBuildingGongsil4(RentContractVO rentContractVO);
	
	
}
