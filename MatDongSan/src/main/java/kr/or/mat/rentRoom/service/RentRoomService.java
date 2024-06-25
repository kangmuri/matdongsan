package kr.or.mat.rentRoom.service;

import java.util.List;

import kr.or.mat.rentRoom.vo.RentRoomVO;

/**
 *  파일명 : RentRoomServiceImpl.java
 *  설 명 : 임대관리 시스템 방정보 CRUD를 위한 service클래스
 *  작성자 : 이성경
 *  작성일 : 2024. 05. 20
 *  최종 수정일 : 2024. 05. 20
 */
public interface RentRoomService {
	/**
	 * 임대관리 방 등록
	 * @param rentRoomVO
	 * @return
	 */
	public int createRentRoom(RentRoomVO rentRoomVO);
	
	/**
	 * 임대관리 방 목록 조회
	 * @return
	 */
	public List<RentRoomVO> retrieveRentRoomList(String rentRoomNo);
	
	
	/**
	 * 특정 임대관리 방 조회
	 * @param rentRoomNo
	 * @return
	 */
	public RentRoomVO retrieveRentRoom(String rentRoomNo);
	
	
	/**
	 * 임대관리 방 정보 수정
	 * 
	 * @param rentRoomVO
	 * @return
	 */
	public int modifyRentRoom(RentRoomVO rentRoomVO);
	
	/**
	 * 임대관리 방 정보 삭제
	 * 
	 * @param rentRoomNo
	 * @return
	 */
	public int removeRentRoom(String rentRoomNo);
	
	/**
	 * 현재 계약중인 호실 개수 
	 */
	public List<RentRoomVO> rentRoomRSTTS01byBuilding(String rentBldgNo);
	/*
	 * 최종 공실 개수 
	 */
	public int jjinmakGonsil(String rentBldgNo);
	
}
