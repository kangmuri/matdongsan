package kr.or.mat.rentNotice.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.rentNotice.mapper.RentNoticeMapper;
import kr.or.mat.rentNotice.vo.RentNoticeVO;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class RentNoticeServiceImpl implements RentNoticeService {
	
	private final RentNoticeMapper mapper;

	@Override
	public List<RentNoticeVO> retrieveListRentNotice(PaginationInfo paging) {
		int totalRecord = mapper.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		return mapper.selectListRentNotice(paging);
	}

	@Override
	public RentNoticeVO retrieveRentNotice(RentNoticeVO notice) {
		return mapper.selectRentNotice(notice);
	}

	@Override
	public List<RentNoticeVO> retrieveRentBldgList(String lesseeNo) {
		return mapper.selectRentBldgList(lesseeNo);
	}


}
