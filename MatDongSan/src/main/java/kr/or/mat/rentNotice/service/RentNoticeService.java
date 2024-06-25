package kr.or.mat.rentNotice.service;

import java.util.List;

import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.rentNotice.vo.RentNoticeVO;


public interface RentNoticeService {
	public List<RentNoticeVO> retrieveListRentNotice(PaginationInfo paging);
	public RentNoticeVO retrieveRentNotice(RentNoticeVO notice);
	public List<RentNoticeVO> retrieveRentBldgList(String lesseeNo);
}
