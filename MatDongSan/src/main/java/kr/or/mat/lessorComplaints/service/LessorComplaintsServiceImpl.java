package kr.or.mat.lessorComplaints.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.mat.lessorComplaints.mapper.LessorComplaintsMapper;
import kr.or.mat.lessorComplaints.vo.LessorComplaintsVO;
import kr.or.mat.paging.PaginationInfo;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class LessorComplaintsServiceImpl implements LessorComplaintsService{
	@Autowired
	LessorComplaintsMapper mapper;

	@Override
	public int createComplaintsAnswer(LessorComplaintsVO LessorComplaintsVO) {
		return mapper.insertComplaintsAnswer(LessorComplaintsVO);
	}

	@Override
	public List<LessorComplaintsVO> retrieveComplaintsList(PaginationInfo paging) {
		int totalRecord = mapper.selectTotalRecord(paging);
		log.info("이이잉:{}",totalRecord);
		paging.setTotalRecord(totalRecord);
		return mapper.selectComplaintsList(paging);
	}

	@Override
	public LessorComplaintsVO retrieveComplaints(String cvlcpNo) {
		return mapper.selectComplaints(cvlcpNo);
	}

	@Override
	public int modifyComplaintsAnswer(LessorComplaintsVO LessorComplaintsVO) {
		return mapper.updateComplaintsAnswer(LessorComplaintsVO);
	}

	@Override
	public int removeComplaintsAnswer(LessorComplaintsVO LessorComplaintsVO) {
		return mapper.deleteComplaintsAnswer(LessorComplaintsVO);
	}

}
