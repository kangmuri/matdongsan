package kr.or.mat.lessee.complaints.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.lessee.complaints.vo.ComplaintsVO;
import kr.or.mat.paging.PaginationInfo;
/**
 * 임차인 민원 CRUD
 *
 *
 */
@Mapper
public interface ComplaintsMapper {
	public int selectTotalRecord(PaginationInfo paging);
	public List<ComplaintsVO> selectListComplaints(PaginationInfo paging);
	
	public List<ComplaintsVO> selectBldgList(String lesseeNo);
	public ComplaintsVO selectComplaints(String cvlcpNo);
	public int updateComplaints(ComplaintsVO complaints);
	public int deleteComplaints(String cvlcpNo);
	public int insertComplaints(ComplaintsVO complaints);
}
