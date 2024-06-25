package kr.or.mat.lessee.complaints.service;

import java.util.List;

import kr.or.mat.lessee.complaints.vo.ComplaintsVO;
import kr.or.mat.paging.PaginationInfo;

public interface ComplaintsService {

	public List<ComplaintsVO> retrieveListComplaints(PaginationInfo paging);
	public List<ComplaintsVO> retrieveBldgList(String lesseeNo);
	public ComplaintsVO retrieveComplaints(String cvlcpNo);
	public int createComplaints(ComplaintsVO complaints);
	public int modifyComplaints(ComplaintsVO complaints);
	public int removeComplaints(String cvlcpNo);
}
