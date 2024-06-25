package kr.or.mat.rentBuilding.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.mat.rentBuilding.vo.RentBldgVO;

/*
 * 건물정보 관리
 */
public interface BuildingService {
	/**
	 * 건물 등록
	 * 
	 * @param bldgVO
	 * @return
	 */
	public int createBuilding(RentBldgVO bldgVO);
	
	/**
	 * 건물 목록 조회
	 * 
	 * @return
	 */
	public List<RentBldgVO> retrieveBuildingList(String bldgNo);
	
	
	/**
	 * 특정 건물 조회
	 * 
	 * @param bldgNo
	 * @return
	 */
	public RentBldgVO retrieveBuilding(String bldgNo);
	
	
	/**
	 * 건물 정보 수정
	 * 
	 * @param bldgVO
	 * @return
	 */
	public void modifyBuilding(RentBldgVO bldgVO);
	
	/**
	 * 건물 정보 삭제
	 * 
	 * @param bldgNo
	 * @return
	 */
	public void removeBuilding(String bldgNo);
	
	/**
	 * 보유 건물 조회 (공지사항 등록 옵션)
	 * @param bldgNo
	 * @return
	 */
	public List<RentBldgVO> selectBuildingOption(String userNo);
}
