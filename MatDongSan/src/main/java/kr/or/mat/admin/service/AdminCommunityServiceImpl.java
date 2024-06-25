package kr.or.mat.admin.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.mat.admin.mapper.AdminCommunityMapper;
import kr.or.mat.admin.vo.AdminQnaReplyVO;
import kr.or.mat.admin.vo.AdminQnaVO;
import kr.or.mat.paging.PaginationInfo;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class AdminCommunityServiceImpl implements AdminCommunityService{

	private final AdminCommunityMapper mapper;
	
	public List<AdminQnaVO> retrieveCommunityList(PaginationInfo page){
		page.setTotalRecord(mapper.selectTotalRecord(page));
		return mapper.retrieveAdminCommunityList(page);
	};
	

	public AdminQnaVO retrieveAdminCommunity(AdminQnaVO inputData) {
		return mapper.retrieveAdminCommunity(inputData);
	};
	

	public List<AdminQnaReplyVO> retrieveAdminCommunityReply(String pstNo){
		return mapper.retrieveAdminCommunityReply(pstNo);
	};

	public int removeAdminCommunityReply(AdminQnaReplyVO inputData) {
		return 0;
	};

	public int removeAdminCommunity(String pstNo) {
		
		//삭제에 성공했으면 삭제한 게시글 번호를 기준으로 신고 게시글의 내용을 수정
		int cnt = mapper.deleteAdminCommunity(pstNo);
		if( cnt > 0) {
			mapper.updateAdminCommunity(pstNo);
		}
		
		return mapper.deleteAdminCommunity(pstNo);
	};
}
