package kr.or.mat.rentBuilding.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.mat.rentBuilding.mapper.BuildingMapper;
import kr.or.mat.rentBuilding.vo.RentBldgVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/**
 *  파일명 : BuildingServiceImpl.java
 *  설 명 : 건물 CRUD를 위한 클래스
 *  작성자 : 이성경
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class BuildingServiceImpl implements BuildingService {
	private final BuildingMapper buildingMapper;
	
	@Override
	public int createBuilding(RentBldgVO bldgVO) {
		int cnt = buildingMapper.insertBuilding(bldgVO);
		log.info("mapper cnt : ", cnt);
		return cnt;
	}

	@Override
	public List<RentBldgVO> retrieveBuildingList(String userNo) {
		List<RentBldgVO> buildingList = buildingMapper.selectBuildingList(userNo);
		return buildingList;
	}

	@Override
	public RentBldgVO retrieveBuilding(String bldgNo) {
		RentBldgVO bldgVO = buildingMapper.selectBuilding(bldgNo);
		return bldgVO;
	}

	@Override
	public void modifyBuilding(RentBldgVO bldgVO) {
		buildingMapper.updateBuilding(bldgVO);
	}

	@Override
	public void removeBuilding(String bldgNo) {
		buildingMapper.deleteBuilding(bldgNo);
	}

	@Override
	public List<RentBldgVO> selectBuildingOption(String userNo) {
		return buildingMapper.selectBuildingOption(userNo);
	}

	

}
