package kr.or.mat.rentNotice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.mat.attachFile.service.TbAttachFileService;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.rentNotice.mapper.RentNoticeLessorMapper;
import kr.or.mat.rentNotice.mapper.RentNoticeMapper;
import kr.or.mat.rentNotice.vo.RentNoticeVO;

@Service
public class RentNoticeLessorServiceImpl implements RentNoticeLessorService {
	
	@Autowired
	private RentNoticeLessorMapper mapper;
	@Autowired 
	private TbAttachFileService service;
	
	
	@Override
	public int createRentNotice(RentNoticeVO rentNoticeVO) {
//		service.createTbAttachFile(rentNoticeVO.getAttachFileList());
//		String fileId = rentNoticeVO.getAttachFileList().get(0).getUnityAtchmnflNo();
//		rentNoticeVO.setUnityAtchmnflNo(fileId);
		return mapper.insertRentNotice(rentNoticeVO);
	}

	@Override
	public List<RentNoticeVO> retrieveAllRentNoticeList(PaginationInfo paging) {
		int totalRecord = mapper.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		return mapper.selectAllRentNoticeList(paging);
	}

	@Override
	public List<RentNoticeVO> retrieveRentNoticeList(RentNoticeVO rentNoticeVO) {
		return null;
	}

	@Override
	public RentNoticeVO retrieveRentNotice(RentNoticeVO rentNoticeVO) {
		mapper.updateNoticeCnt(rentNoticeVO.getNoticeNo());
		return mapper.selectRentNotice(rentNoticeVO);
	}

	@Override
	public int modifyRentNotice(RentNoticeVO rentNoticeVO) {
//		service.createTbAttachFile(rentNoticeVO.getAttachFileList());
//		String fileId = rentNoticeVO.getAttachFileList().get(0).getUnityAtchmnflNo();
//		rentNoticeVO.setUnityAtchmnflNo(fileId);
		return mapper.updateRentNotice(rentNoticeVO);
	}

	@Override
	public int removeRentNotice(RentNoticeVO rentNoticeVO) {
		return mapper.deleteRentNotice(rentNoticeVO);
	}

}
