package kr.or.mat.lessee.payData.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.mat.lessee.payData.mapper.PayDataMapper;
import kr.or.mat.lessee.payData.vo.PayDataVO;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.paging.PaginationRenderer;
import kr.or.mat.rentNotice.vo.RentNoticeVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@Service
@RequiredArgsConstructor
public class PayDataServiceImpl implements PayDataService{

	private final PayDataMapper mapper;
	
	@Override
	public List<PayDataVO> retrievePayDataList(PaginationInfo paging) {
		int totalRecord = mapper.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		return mapper.selectPayDataList(paging);
	}

	@Override
	public PayDataVO retrievePayData(String payNo) {
		log.info("mapper.selectPayData(payNo)");
		return mapper.selectPayData(payNo);
	}

	@Override
	public List<PayDataVO> retrieveRentBldgList(String lesseeNo) {
		// TODO Auto-generated method stub
		return mapper.selectRentBldgList(lesseeNo);
	}

}
