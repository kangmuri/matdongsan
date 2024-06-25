package kr.or.mat.rentContract.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.mat.rentContract.mapper.RentContractMapper;
import kr.or.mat.rentContract.vo.RentContractVO;
import kr.or.mat.rentPayData.mapper.RentPayDataMapper;
import kr.or.mat.rentRoom.vo.RentRoomVO;

@Service
public class RentContractServiceImpl implements RentContractService {
	@Autowired
	private RentContractMapper mapper;
	
	@Override
	public int createRentContract(RentContractVO rentContractVO) {
		return mapper.insertRentContract(rentContractVO);
	}

	
	@Override
	public List<RentContractVO> retrieveRentRoomCntrtList(RentContractVO rentContractVO) {
		return mapper.selectRentRoomCntrtList(rentContractVO);
	}

	@Override
	public List<RentContractVO> retrieveRentBldgCntrtList(RentContractVO rentContractVO) {
		return mapper.selectRentBldgCntrtList(rentContractVO);
	}
	@Override
	public RentContractVO retrieveRentContract(String cntrctRentNo) {
		return mapper.selectRentContract(cntrctRentNo);
	}

	@Override
	public int modifyRentContract(RentContractVO rentContractVO) {
		return 0;
	}

	@Override
	public int removeRentContract(String cntrctRentNo) {
		return 0;
	}


	@Override
	public List<RentContractVO> retrieveAllRentContract(RentContractVO rentContractVO) {
		return mapper.selectAllRentContract(rentContractVO);
	}


	@Override
	public int modifyConnectLessee(RentContractVO rentContractVO) {
		return mapper.updateConnectLessee(rentContractVO);
	}


	@Override
	public String retrieveCheckCode(String secureCode) {
		String cntrctRentNo = mapper.selectCheckCode(secureCode);
		if (cntrctRentNo == null) {
	        return "fail"; // 코드가 유효하지 않은 경우
	    } else {
	        return cntrctRentNo; // 유효한 계약 번호를 반환
	    }
	}


	@Override
	public int modifyLesseeNo(RentContractVO rentContractVO) {
		return mapper.updateLesseeNo(rentContractVO);
	}


	@Override
	public int updateMidway(RentContractVO rentContractVO) {
		return mapper.updateMidway(rentContractVO);
	}


	@Override
	public int selectEndRoom(String rentBldgNo) {
		return mapper.selectEndRoom(rentBldgNo);
	}


	@Override
	public List<RentContractVO> selectBuildingGongsil(String rentBldgNo) {
		return mapper.selectBuildingGongsil(rentBldgNo);
	}


	@Override
	public List<RentContractVO> selectBuildingGongsil2(String rentBldgNo) {
		return mapper.selectBuildingGongsil2(rentBldgNo);
	}


	//공실 단건조회
	@Override
	public RentContractVO selectBuildingGongsil3(RentContractVO rentContractVO) {
		return mapper.selectBuildingGongsil3(rentContractVO);
	}
	@Override
	public RentContractVO selectBuildingGongsil4(RentContractVO rentContractVO) {
		return mapper.selectBuildingGongsil4(rentContractVO);
	}

	

}
