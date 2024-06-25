package kr.or.mat.rentContract.service;

import java.util.List;

import kr.or.mat.rentContract.vo.RentContractVO;
import kr.or.mat.rentPayData.vo.RentPayDataVO;
import kr.or.mat.rentRoom.vo.RentRoomVO;

/**
 *  파일명 : RentContractService.java
 *  설 명 : 임대관리 시스템 계약서관리를 CRUD를 위한 service클래스
 *  작성자 : 이성경
 *  작성일 : 2024. 05. 27
 *  최종 수정일 : 2024. 05. 27
 */
public interface RentContractService {

	/**
	 * 임대관리 계약 등록
	 * @param rentRoomVO
	 * @return
	 */
	public int createRentContract(RentContractVO rentContractVO);

	
	/**
	 * 방 단건에 대한 계약 목록 조회 
	 * @return
	 */
	public List<RentContractVO> retrieveRentRoomCntrtList(RentContractVO rentContractVO);
	

	/**
	 * 건물 한건에 대한 계약 목록 조회
	 *  @param rentContractVO (상태값,건물번호)
	 *  @return
	 */
	public List<RentContractVO> retrieveRentBldgCntrtList(RentContractVO rentContractVO);
	
	
	/**
	 * 특정 임대관리 계약 조회
	 * @param rentRoomNo
	 * @return
	 */
	public RentContractVO retrieveRentContract(String cntrctRentNo);
	
	
	/**
	 * 임대관리 계약 정보 수정
	 * 
	 * @param rentRoomVO
	 * @return
	 */
	public int modifyRentContract(RentContractVO rentContractVO);
	
	/**
	 * 임대관리 계약 정보 삭제
	 * 
	 * @param rentRoomNo
	 * @return
	 */
	public int removeRentContract(String cntrctRentNo);
	
	/**
	 * USER가 보유한 전체 계약 리스트 조회 (임대현황)
	 * 
	 * @param cntrctRentNo
	 * @return
	 */
	public List<RentContractVO> retrieveAllRentContract(RentContractVO rentContractVO);
	
	/**
	 * 임차인에게 보낸 보안코드 계약테이블 컬럼에 저장
	 */
	public int modifyConnectLessee(RentContractVO rentContractVO);
	/**
	 * 임차인 쓴 보안코드 일치 여부 
	 */
	public String retrieveCheckCode(String secureCode);
	/**
	 * 보안코드 일치하면 lesseeno에 update 하기
	 */
	public int modifyLesseeNo(RentContractVO rentContractVO);
	
	/**
	 * 중도퇴실 업데이트
	 */
	public int updateMidway(RentContractVO rentContractVO);
	
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
	 *  빌딩 한개당 공실 리스트3 (공실단건조회)
	 */
	public RentContractVO selectBuildingGongsil3(RentContractVO rentContractVO);
	
	/**
	 *  빌딩 한개당 공실 리스트4 (공실단건조회)
	 */
	public RentContractVO selectBuildingGongsil4(RentContractVO rentContractVO);

}
