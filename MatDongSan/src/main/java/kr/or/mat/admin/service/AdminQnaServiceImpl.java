package kr.or.mat.admin.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.mat.admin.mapper.AdminQnaMapper;
import kr.or.mat.admin.vo.AdminQnaReplyVO;
import kr.or.mat.admin.vo.AdminQnaVO;
import kr.or.mat.paging.PaginationInfo;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class AdminQnaServiceImpl implements AdminQnaService{
	
	
	private final AdminQnaMapper mapper;
	
	@Override
	public List<AdminQnaVO> retrieveQnaList(PaginationInfo page) {
		page.setTotalRecord(mapper.selectTotalRecord(page));
		log.info("mapper로 들어갈 정보==>{}",page);
		
		List<AdminQnaVO> voList = mapper.selectAdminQnaList(page);
		for (AdminQnaVO vo : voList) {
			int cnt = mapper.retrieveAdminQnaReplyCk(vo.getPstNo());
			vo.setCmt(cnt);
		}
		return voList;
	}

	@Override
	public AdminQnaVO retrieveAdminQna(AdminQnaVO inputData) {
		return mapper.selectAdminQna(inputData);
	}
	
	@Override
	public int modifyAdminQnaReply(AdminQnaReplyVO inputData) {
		return mapper.updateAdminQnaReply(inputData);
	}

	@Override
	public int removeAdminQnaReply(AdminQnaReplyVO inputData) {
		return mapper.deleteAdminQnaReply(inputData);
	}

	@Override
	public int removeAdminQna(String pstNo) {
		return mapper.deleteAdminQna(pstNo);
	}

	@Override
	public List<AdminQnaReplyVO> retrieveAdminQnaReply(String pstNo) {
		return mapper.retrieveAdminQnaReply(pstNo);
	}

	@Override
	public int createAdminQnaReply(AdminQnaReplyVO inpudate) {
		return mapper.insertAdminReply(inpudate);
	}

}
