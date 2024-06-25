package kr.or.mat.rentPayData.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.rentPayData.mapper.RentPayDataMapper;
import kr.or.mat.rentPayData.vo.RentPayDataVO;


@Service
public class RentPayDataServiceImpl implements RentPayDataService {
	@Autowired
	private RentPayDataMapper mapper;

	@Override
	public List<RentPayDataVO> retrievePayDataAllList(PaginationInfo paging) {
		int totalRecord = mapper.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		return mapper.selectPayDataAllList(paging);
	}

	@Override
	public RentPayDataVO retrievePayDataOne(RentPayDataVO rentPayData) {
		return mapper.selectPayDataOne(rentPayData);
	}

	@Override
	public int updatePayDe(RentPayDataVO rentPayData) {
		return mapper.updatePayDe(rentPayData);
	}
	

}
