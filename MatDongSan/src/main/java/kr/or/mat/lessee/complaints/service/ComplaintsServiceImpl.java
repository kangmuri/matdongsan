package kr.or.mat.lessee.complaints.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.mat.lessee.complaints.mapper.ComplaintsMapper;
import kr.or.mat.lessee.complaints.vo.ComplaintsVO;
import kr.or.mat.paging.PaginationInfo;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ComplaintsServiceImpl implements ComplaintsService{
	
	private final ComplaintsMapper mapper;
	
	@Override
	public int createComplaints(ComplaintsVO complaints) {
		
		return mapper.insertComplaints(complaints);
	}

	@Override
	public List<ComplaintsVO> retrieveListComplaints(PaginationInfo paging) {
		int totalRecord = mapper.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		return mapper.selectListComplaints(paging);
	}

	@Override
	public ComplaintsVO retrieveComplaints(String cvlcpNo) {
		return mapper.selectComplaints(cvlcpNo);
	}

	@Override
	public int modifyComplaints(ComplaintsVO complaints) {
		return mapper.updateComplaints(complaints);
	} 

	@Override
	public int removeComplaints(String cvlcpNo) {
		return mapper.deleteComplaints(cvlcpNo);
	}

	@Override
	public List<ComplaintsVO> retrieveBldgList(String lesseeNo) {
		// TODO Auto-generated method stub
		return mapper.selectBldgList(lesseeNo);
	}
	
	
	
	
}
