package kr.or.mat.rentBuilding.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.rentBuilding.vo.RentBldgVO;

/**
 *  파일명 : BuildingMapper.java
 *  설 명 : 건물정보 관리를 위한 클래스
 *  작성자 : 이성경
 *  작성일 : 2024. 05. 14
 *  최종 수정일 : 2024. 05. 15
 */
@Mapper
public interface BuildingMapper {
	
	/**
	 * 건물 등록
	 * @param bldgVO
	 * @return
	 */
	public int insertBuilding(RentBldgVO bldgVO);
	
	/**
	 * 건물 목록 조회
	 * @return
	 */
	public List<RentBldgVO> selectBuildingList(String bldgNo);
	
	
	/**
	 * 특정 건물 조회
	 * @param bldgNo
	 * @return
	 */
	public RentBldgVO selectBuilding(String bldgNo);
	
	
	/**
	 * 보유 건물 조회 (공지사항 등록 옵션)
	 * @param bldgNo
	 * @return
	 */
	public List<RentBldgVO> selectBuildingOption(String userNo);
	
	
	/**
	 * 건물 정보 수정
	 * 
	 * @param bldgVO
	 * @return
	 */
	public int updateBuilding(RentBldgVO bldgVO);
	
	/**
	 * 건물 정보 삭제
	 * 
	 * @param bldgNo
	 * @return
	 */
	public int deleteBuilding(String bldgNo);
	
	//임대현황 상단 건물 수 구하기
	public int buldingCnt(String userNo);
}
