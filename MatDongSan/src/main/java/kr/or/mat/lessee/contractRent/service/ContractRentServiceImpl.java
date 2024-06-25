package kr.or.mat.lessee.contractRent.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.mat.lessee.contractRent.mapper.ContractRentMapper;
import kr.or.mat.lessee.contractRent.vo.ContractRentVO;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.rentNotice.vo.RentNoticeVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ContractRentServiceImpl implements ContractRentService{

	private final ContractRentMapper mapper;

	@Override
	public List<ContractRentVO> retrieveContractRentList(PaginationInfo paging) {
		return mapper.selectContractRentList(paging);
	}

	@Override
	public ContractRentVO retrieveContractRent(String cntrctRentNo) {
		return mapper.selectContractRent(cntrctRentNo);
	}

	@Override
	public List<ContractRentVO> retrieveRentBldgList(String lesseeNo) {
		// TODO Auto-generated method stub
		return mapper.selectRentBldgList(lesseeNo);
	}
	
	
}
