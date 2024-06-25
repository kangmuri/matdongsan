package kr.or.mat.lessee.community.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.lessee.community.vo.CommunityVO;
import kr.or.mat.lessee.community.vo.PostingReportVO;
import kr.or.mat.paging.PaginationInfo;
/**
 *
 * 임차인 커뮤니티 
 *
 */
@Mapper
public interface CommunityMapper {
	
	public int selectTotalRecord(PaginationInfo paging);
	
	/*
	 * 임차인이 임대하고 있는 건물의 동 목록 조회
	 */
	public List<String> selectLesseeBldgList(String lesseeNo);
	
	
	/*
	 * 해당 동에 사는 임차인들이 작성한 글 리스트 조회
	 */
	public List<CommunityVO> selectCommunityList(PaginationInfo paging);
	
	/*
	 * 조회수 증가 
	 */
	public int updateCommunityCnt(String pstNo);
	
	/*
	 * 글 상세조회
	 */
	public CommunityVO selectCommunity(String pstNo);
	
	/*
	 * 글작성
	 */
	public int insertCommunity(CommunityVO posting);
	
	/*
	 * 글수정
	 */
	public int updateCommunity(CommunityVO posting);
	
	/*
	 * 글삭제
	 */
	public int DeleteCommunity(String pstNo);
	
	/**
	 * 글 신고
	 * @param postingReport
	 * @return
	 */
	public int insertPostingReport(PostingReportVO postingReport);
}
