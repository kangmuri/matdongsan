package kr.or.mat.lessee.community.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.mat.attachFile.service.TbAttachFileService;
import kr.or.mat.lessee.community.mapper.CommunityMapper;
import kr.or.mat.lessee.community.vo.CommunityVO;
import kr.or.mat.lessee.community.vo.PostingReportVO;
import kr.or.mat.paging.PaginationInfo;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class CommunityServiceImpl implements CommunityService{

	private final CommunityMapper mapper;
	@Autowired 
	private TbAttachFileService service;

	@Override
	public List<String> retrieveLesseeBldgList(String lesseeNo) {
		// TODO Auto-generated method stub
		return mapper.selectLesseeBldgList(lesseeNo);
	}

	@Override
	public List<CommunityVO> retrieveCommunityList(PaginationInfo paging) {
		int totalRecord = mapper.selectTotalRecord(paging);
		paging.setTotalRecord(totalRecord);
		return mapper.selectCommunityList(paging);
	}

	@Override
	public CommunityVO retrieveCommunity(String pstNo) {
			mapper.updateCommunityCnt(pstNo);
		return mapper.selectCommunity(pstNo);
	}

	@Override
	public int createCommunity(CommunityVO posting) {
		
	  if(posting.getAttachFileList() != null) {//선택된 파일이 없다면 이 코드 실행 x 
			service.createTbAttachFile(posting.getAttachFileList());
			String fileId = posting.getAttachFileList().get(0).getUnityAtchmnflNo();
			posting.setUnityAtchmnflNo(fileId);
	  }
	  return mapper.insertCommunity(posting);
	  
	}

	@Override
	public int modifyCommunity(CommunityVO posting) {
		// TODO Auto-generated method stub
		return mapper.updateCommunity(posting);
	}

	@Override
	public int removeCommunity(String pstNo) {
		// TODO Auto-generated method stub
		return mapper.DeleteCommunity(pstNo);
	}

	@Override
	public int createPostingReport(PostingReportVO postingReport) {
		return mapper.insertPostingReport(postingReport);
	}



	
}
