package kr.or.mat.contract.service;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.mat.attachFile.mapper.TbAttachFileMapper;
import kr.or.mat.contract.mapper.ContractMapper;
import kr.or.mat.contract.vo.CntrctDealingVO;
import kr.or.mat.mypage.mapper.ProfileMapper;
import kr.or.mat.mypage.vo.MyProfileVO;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.room.mapper.RoomDealingMapper;
import kr.or.mat.room.vo.RoomDealingVO;

@Service
public class ContractServiceImpl implements ContractService{

	@Autowired
	private ProfileMapper profileMapper;
	@Autowired
	private ContractMapper contractMapper;
	@Autowired
	private TbAttachFileMapper tbAttachFileMapper;
	
	@Autowired 
	private RoomDealingMapper roomDealingMapper;
	
	@Override
	public MyProfileVO retrieveUser(MyProfileVO myProfileVO) {
		if(myProfileVO.getUserId() != null) {
			return profileMapper.selectUser(myProfileVO);
		}else if(myProfileVO.getUserNo() != null) {
			return profileMapper.selectUserByUserNo(myProfileVO);
		}else return null;
		
	}

	@Override
	public int createContractDealing(CntrctDealingVO cntrctDealingVO) {
		cntrctDealingVO.setDctStts("RS03");
		int cnt = contractMapper.insertContractDealing(cntrctDealingVO);
		if(cnt > 0) {
			RoomDealingVO roomDealing = new RoomDealingVO();
			roomDealing.setRoomDelngNo(cntrctDealingVO.getRoomDelngNo());
			roomDealing.setRoomDealingStts("RS03");
			roomDealingMapper.updateRoomDealing(roomDealing);
			
		}
		
		return cnt;
	}

	@Override
	public int updateContractDealing(CntrctDealingVO cntrctDealingVO) {
		
		cntrctDealingVO.setDctStts("RS04");
		int cnt = contractMapper.updateContractDealing(cntrctDealingVO);
		if(cnt > 0) {
			RoomDealingVO roomDealing = new RoomDealingVO();
			roomDealing.setRoomDelngNo(cntrctDealingVO.getRoomDelngNo());
			roomDealing.setRoomDealingStts("RS04");
			roomDealingMapper.updateRoomDealing(roomDealing);
			
		}
		
		return cnt;
	}
	
	@Override
	public int updateLessorContractDealing(CntrctDealingVO cntrctDealingVO) {
		int cnt = contractMapper.updateContractDealing(cntrctDealingVO);	
		return cnt;
	}

	@Override
	public List<CntrctDealingVO> retrieveCntrctDealingList(PaginationInfo page) {
		page.setTotalRecord(contractMapper.selectTotalRecord(page));
		return contractMapper.selectCntrctDealingList(page);
	}

	@Override
	public CntrctDealingVO retrieveCntrctDealing(CntrctDealingVO cntrctDealingVO) {
		
		return contractMapper.selectCntrctDealing(cntrctDealingVO);
	}

}
