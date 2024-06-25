package kr.or.mat.index.service;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.mat.lessee.payData.vo.PayDataVO;
import kr.or.mat.rentBuilding.mapper.BuildingMapper;
import kr.or.mat.rentBuilding.vo.RentBldgVO;
import kr.or.mat.rentContract.mapper.RentContractMapper;
import kr.or.mat.rentContract.vo.RentContractVO;
import kr.or.mat.rentPayData.mapper.RentPayDataMapper;
import kr.or.mat.rentPayData.vo.RentPayDataVO;
import kr.or.mat.rentRoom.mapper.RentRoomMapper;
import kr.or.mat.rentRoom.vo.RentRoomVO;

@Service
public class IndexServiceImpl implements IndexService {
	@Autowired
	RentContractMapper cmapper;
	
	@Autowired
	RentPayDataMapper pmapper;
	
	@Autowired
	RentRoomMapper rmapper;
	
	@Autowired
	BuildingMapper bmapper;

	@Override
	public Map<String, Object> mainToptotalCount(String userNo) {
		Map<String, Object> mainMap = new HashMap<>();
		int allCnrt = Optional.ofNullable(cmapper.selectCnrtAllCount(userNo)).orElse(0); // 전체계약건
		int thisMonthCnrt = Optional.ofNullable(cmapper.selectThisMonthCnrtCount(userNo)).orElse(0); // 이번달 계약건수
		int preMonthCnrt = Optional.ofNullable(cmapper.selectPreMonthCnrtCount(userNo)).orElse(0); // 저번달 계약건수
		int rstts01Cnt = Optional.ofNullable(cmapper.selectRSTTS01Count(userNo)).orElse(0); // 현재 입주중인 계약건수
		int before7EndCnt = Optional.ofNullable(cmapper.selectBefore7EndCount(userNo)).orElse(0); // 7일 이내 종료예정 계약건수
		int thisMonthEndCnt = Optional.ofNullable(cmapper.selectThisMonthCnrtCount(userNo)).orElse(0); // 이번달 종료예정 계약건수
		int todayPayDedtDe = Optional.ofNullable(pmapper.todayPayDedtDe(userNo)).orElse(0); // 오늘 입금 예정 건
		int thisMonthRqestAmt = Optional.ofNullable(pmapper.thisMonthRqestAmt(userNo)).orElse(0); // 이번달 입금 예정 건
		int todayRqestAmt = pmapper.todayRqestAmt(userNo); //전체 보증금 금액
		int allGrnteAmt = cmapper.selectAllGrnteAmt(userNo); //월 입금 금액 
		int allManagectAmt = cmapper.selectAllManagectAmt(userNo); //관리비 금액
		int allMhlAmt = cmapper.selectAllMhlAmt(userNo); //임대료 금액
		int buildingCnt = bmapper.buldingCnt(userNo);
		int rentRoomCnt = rmapper.rentRoomCnt(userNo);
		List<RentRoomVO> rentRoomList = rmapper.bldgRoomCheck(userNo);
		// 퍼센트 계산 및 리스트 정렬
	    List<RentRoomVO> sortedRentRoomList = rentRoomList.stream()
	        .peek(rent -> rent.setPercentage((rent.getRoomsWithContract() * 100.0) / rent.getTotalRooms()))
	        .sorted(Comparator.comparingDouble(RentRoomVO::getPercentage).reversed())
	        .limit(3) // 처음 3개 요소만 선택
	        .collect(Collectors.toList());
	    
	    List<RentRoomVO> gonsilList = rmapper.roomGongSilCheck(userNo);
	    
	    
	   
		
		mainMap.put("allCnrt", allCnrt);
		mainMap.put("thisMonthCnrt", thisMonthCnrt);
		mainMap.put("preMonthCnrt", preMonthCnrt);
		mainMap.put("rstts01Cnt", rstts01Cnt);
		mainMap.put("before7EndCnt", before7EndCnt);
		mainMap.put("thisMonthEndCnt", thisMonthEndCnt);
		mainMap.put("todayPayDedtDe", todayPayDedtDe);
		mainMap.put("thisMonthRqestAmt", thisMonthRqestAmt);
		mainMap.put("todayRqestAmt", todayRqestAmt);
		mainMap.put("allGrnteAmt", allGrnteAmt);
		mainMap.put("allManagectAmt", allManagectAmt);
		mainMap.put("allMhlAmt", allMhlAmt);
		mainMap.put("rentRoomList", sortedRentRoomList);
		mainMap.put("gonsilList", gonsilList);
		mainMap.put("buildingCnt", buildingCnt);
		mainMap.put("rentRoomCnt", rentRoomCnt);
		

		return mainMap;
	}

	@Override
	public List<RentPayDataVO> chart(String userNo) {
		 List<RentPayDataVO> payList = pmapper.chart(userNo);
		return payList;
	}
	
	
	@Override
	public List<RentPayDataVO> chart2(String userNo) {
		List<RentPayDataVO> payList = pmapper.chart2(userNo);
		return payList;
	}
	
	
}
