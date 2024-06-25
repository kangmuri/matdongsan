package kr.or.mat.lessee.contractRent.service;

import java.util.List;

import kr.or.mat.lessee.contractRent.vo.ContractRentVO;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.rentNotice.vo.RentNoticeVO;

public interface ContractRentService {
	public List<ContractRentVO> retrieveRentBldgList(String lesseeNo);
	public List<ContractRentVO> retrieveContractRentList(PaginationInfo paging);
	public ContractRentVO retrieveContractRent(String cntrctRentNo);
}
