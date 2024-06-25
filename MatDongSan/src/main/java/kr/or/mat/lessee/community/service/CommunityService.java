package kr.or.mat.lessee.community.service;

import java.util.List;

import kr.or.mat.lessee.community.vo.CommunityVO;
import kr.or.mat.lessee.community.vo.PostingReportVO;
import kr.or.mat.paging.PaginationInfo;

public interface CommunityService {
	/*
	 * 임차인이 임대하고 있는 건물의 동 목록 조회
	 */
	public List<String> retrieveLesseeBldgList(String lesseeNo);
	
	
	/*
	 * 해당 동에 사는 임차인들이 작성한 글 리스트 조회
	 */
	public List<CommunityVO> retrieveCommunityList(PaginationInfo paging);
	
	
	/*
	 * 글 상세조회
	 */
	public CommunityVO retrieveCommunity(String pstNo);
	
	/*
	 * 글작성
	 */
	public int createCommunity(CommunityVO posting);
	
	/*
	 * 글수정
	 */
	public int modifyCommunity(CommunityVO posting);
	
	/*
	 * 글삭제
	 */
	public int removeCommunity(String pstNo);
	
	/**
	 * 글신고
	 * @param postingReport
	 * @return
	 */
	public int createPostingReport(PostingReportVO postingReport);
	
}
