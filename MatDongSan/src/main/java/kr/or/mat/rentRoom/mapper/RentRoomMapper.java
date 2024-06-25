package kr.or.mat.rentRoom.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.rentRoom.vo.RentRoomVO;

/**
 *  파일명 : RentRoomMapper.java
 *  설 명 : 임대관리 시스템 방정보 CRUD를 위한 mapper클래스
 *  작성자 : 이성경 
 *  작성일 : 2024. 05. 16
 *  최종 수정일 : 2024. 05. 28
 */
@Mapper
public interface RentRoomMapper {
	
	/**
	 * 임대관리 방 등록
	 * @param rentRoomVO
	 * @return
	 */
	public int insertRentRoom(RentRoomVO rentRoomVO);
	
	
	/**
	 * 임대관리 방 목록 조회
	 * @param rentRoomNo
	 * @return
	 */
	public List<RentRoomVO> selectRentRoomList(String userNo);
	
	/**
	 * 임대관리 방 단건에 대한 계약 목록 조회 (입주중, 입주예정)
	 * @param rentRoomNo
	 * @return
	 */
	public List<RentRoomVO> selectRentContractIngList(String rentRoomNo);
	
	
	/**
	 * 임대관리 방 단건에 대한 계약 목록 조회 (입주중, 입주예정)
	 * @param rentRoomNo
	 * @return
	 */
	public List<RentRoomVO> selectRentContractEndList(String rentRoomNo);
	
	
	
	/**
	 * 특정 임대관리 방 조회
	 * @param rentRoomNo
	 * @return
	 */
	public RentRoomVO selectRentRoom(String rentRoomNo);
	
	
	/**
	 * 임대관리 방 정보 수정
	 * 
	 * @param rentRoomVO
	 * @return
	 */
	public int updateRentRoom(RentRoomVO rentRoomVO);
	
	/**
	 * 임대관리 방 정보 삭제
	 * 
	 * @param rentRoomNo
	 * @return
	 */
	public int deleteRentRoom(String rentRoomNo);
	
	/*======================== 임대인 메인화면 통계(rentRoom) ==========================-*/
	/**
	 * 건물 공실 체크 (건물 1개당 방개수,방 1개에 등록된 계약건이 1개 이상일 경우 1개로 카운트) 
	 */
	public List<RentRoomVO> bldgRoomCheck(String userNo);
	
	/**
	 * 호실 공실 경과 시간
	 */
	public  List<RentRoomVO> roomGongSilCheck(String userNo);
	/**
	 * 관리중인 호실 개수 
	 */
	public int rentRoomCnt(String userNo);
	/**
	 * 현재 계약중인 호실 개수 
	 */
	public List<RentRoomVO> rentRoomRSTTS01byBuilding(String rentBldgNo);
	
	/*
	 * 최종 공실 개수 
	 */
	public int jjinmakGonsil(String rentBldgNo);
	
}
