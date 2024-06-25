package kr.or.mat.rentRoom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.mat.rentRoom.mapper.RentRoomMapper;
import kr.or.mat.rentRoom.vo.RentRoomVO;
import kr.or.mat.room.exception.RoomProcessException;

/**
 *  파일명 : RentRoomServiceImpl.java
 *  설 명 : 임대관리 시스템 방정보 CRUD를 위한 serviceImpl클래스
 *  작성자 : 이성경
 *  작성일 : 2024. 05. 20
 *  최종 수정일 : 2024. 05. 20
 */
@Service
public class RentRoomServiceImpl implements RentRoomService {
	@Autowired
	private RentRoomMapper mapper;
	
	@Override
	public int createRentRoom(RentRoomVO rentRoomVO) {
		return mapper.insertRentRoom(rentRoomVO);
	}

	@Override
	public List<RentRoomVO> retrieveRentRoomList(String userNo) {
		return mapper.selectRentRoomList(userNo);
	}

	@Override
	public RentRoomVO retrieveRentRoom(String rentRoomNo) {
		return mapper.selectRentRoom(rentRoomNo);
	}

	@Override
	public int modifyRentRoom(RentRoomVO rentRoomVO) {
		return mapper.updateRentRoom(rentRoomVO);
	}

	@Override
	public int removeRentRoom(String rentRoomNo) {
		return mapper.deleteRentRoom(rentRoomNo);
	}

	@Override
	public List<RentRoomVO> rentRoomRSTTS01byBuilding(String rentBldgNo) {
		return mapper.rentRoomRSTTS01byBuilding(rentBldgNo);
	}

	@Override
	public int jjinmakGonsil(String rentBldgNo) {
		return mapper.jjinmakGonsil(rentBldgNo);
	}

}
