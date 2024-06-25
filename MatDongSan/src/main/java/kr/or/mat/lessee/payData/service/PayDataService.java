package kr.or.mat.lessee.payData.service;

import java.util.List;

import kr.or.mat.lessee.payData.vo.PayDataVO;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.rentNotice.vo.RentNoticeVO;

public interface PayDataService {
	public List<PayDataVO> retrieveRentBldgList(String lesseeNo);
	public List<PayDataVO> retrievePayDataList(PaginationInfo paging);
	public PayDataVO retrievePayData(String cntrctRentNo); 
}
