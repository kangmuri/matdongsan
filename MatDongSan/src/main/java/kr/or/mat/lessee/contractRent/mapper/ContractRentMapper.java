package kr.or.mat.lessee.contractRent.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.lessee.contractRent.vo.ContractRentVO;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.rentNotice.vo.RentNoticeVO;

@Mapper
public interface ContractRentMapper {
	public List<ContractRentVO> selectRentBldgList(String lesseeNo);
	public int selectTotalRecord(PaginationInfo paging);
	public List<ContractRentVO> selectContractRentList(PaginationInfo paging);
	public ContractRentVO selectContractRent(String cntrctRentNo);
}
