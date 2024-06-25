package kr.or.mat.lessee.community.mapper;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.mat.AbstractRootContextTest;
import kr.or.mat.lessee.community.vo.CommunityVO;
import kr.or.mat.lessee.community.vo.PostingReportVO;
import kr.or.mat.paging.PaginationInfo;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class CommunityMapperTest extends AbstractRootContextTest{
	
	@Autowired
	CommunityMapper mapper;
	
	@Test
	@Disabled
	void testCommunityList() {
		List<String> list = new ArrayList<>();
		list = mapper.selectLesseeBldgList("U240515003");
		log.info("체킁 {}", list);
	}
	
	@Test
	@Disabled
	void testList() {
		List<CommunityVO> listt = new ArrayList<>();
		PaginationInfo paging = new PaginationInfo();
		paging.setTotalRecord(1);
		listt = mapper.selectCommunityList(paging);
		log.info("체크용:{}", listt);
	}
	
	@Test
	@Disabled
	void testInsert() {
		CommunityVO community = new CommunityVO();
		community.setPstSj("피곤하다고");
		community.setPstCn("완전피곤피곤");
		community.setUserNo("U240515003");
		community.setBoardDong("용두동");
		
		int cnt = mapper.insertCommunity(community);
		log.info("체크용:{}", cnt);
	}
	
	@Test
	@Disabled
	void testUpdate() {
		CommunityVO community = new CommunityVO();
		community.setPstSj("최프언제끝나");
		community.setPstCn("최프빨리끝나");
		community.setPstNo("Q240524018");
		int cnt = mapper.updateCommunity(community);
		log.info("체크용:{}", cnt);
	}
	
	@Test
	@Disabled
	void testDelete() {
		int cnt = mapper.DeleteCommunity("Q240524018");
		log.info("체크용:{}", cnt);
	}
	
	@Test
	@Disabled
	void testREPORT() {
		PostingReportVO vo = new PostingReportVO();
		vo.setPstRprtSj("시끄러");
		vo.setPstRprtCn("시끄러");
		vo.setManagerNo("U240520006");
		vo.setWrtrNo("U240525010");
		vo.setPstNo("Q240522010");
	    
		
		int cnt = mapper.insertPostingReport(vo);
		log.info("체크용:{}", cnt);
	}
	@Test
	void testREPORTT() {
		
//		int cnt = mapper.updateCommunityCnt("Q240529025");
		log.info("체크용:{}", mapper.updateCommunityCnt("Q240529025"));
	}

}
