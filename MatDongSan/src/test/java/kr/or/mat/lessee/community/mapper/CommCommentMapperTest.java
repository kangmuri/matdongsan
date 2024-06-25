package kr.or.mat.lessee.community.mapper;

import static org.junit.jupiter.api.Assertions.fail;

import java.util.List;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.mat.AbstractRootContextTest;
import kr.or.mat.lessee.community.vo.CommentsVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
class CommCommentMapperTest extends AbstractRootContextTest{
	@Autowired
	private CommCommentMapper mapper;
	
	@Test
	void testSelectCommentList() {
		List<CommentsVO> list = mapper.selectCommentList("Q240529025");
		
		log.info("강무리 {}", list);
	}

	@Test
	void testInsertComment() {
		CommentsVO comment = new CommentsVO();
		comment.setCmntCn("강무리");
		comment.setPstNo("Q240529025");
		comment.setUserNoCmnt("U240525010");
		int cnt = mapper.insertComment(comment);
		log.info("인서트 확인{}", cnt);
	}

	@Test
	void testUpdateComment() {
		CommentsVO comment = new CommentsVO();
		comment.setCmntCn("초코링");
		comment.setCmntNo("CM240531017");
		int cnt = mapper.updateComment(comment);
		log.info("수정 확인{}", cnt);
	}

	@Test
	void testDeleteComment() {
		mapper.deleteComment("CM240531013");
	}

}
