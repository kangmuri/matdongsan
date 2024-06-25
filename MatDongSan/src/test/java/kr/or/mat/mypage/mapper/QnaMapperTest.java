package kr.or.mat.mypage.mapper;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.Iterator;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.mat.AbstractRootContextTest;
import kr.or.mat.mypage.vo.QnaVO;
import lombok.extern.slf4j.Slf4j;

/**
 *  파일명 : QnaMapperTest.java
 *  설 명 : 1:1 문의를 위한 Test클래스
 *  작성자 : 한요한
 *  작성일 : 2024. 05. 17
 *  최종 수정일 : 2024. 05. 17
 */
@Slf4j
class QnaMapperTest extends AbstractRootContextTest{

	@Autowired
	QnaMapper mapper;
	
	@Test
	void testInsertQna() {
		for(int i=1; i<=10; i++) {
			QnaVO vo = new QnaVO();
			vo.setUserNo("U240517004");
			vo.setPstSj("새로 만들어진 게시글 제목"+i);
			vo.setPstCn("새로 만들어진 게시글 내용"+i);
			mapper.insertQna(vo);
		}
	}

	@Test
	void testSelectQnaList() {
//		List<QnaVO> list = mapper.selectQnaList("");
	}

	@Test
	void testSelectQna() {
		QnaVO vo = new QnaVO();
		vo.setPstNo("Q240518001");
		vo.setUserNo("U240517004");
		QnaVO qnavo = mapper.selectQna(vo);
		log.info("반환된 vo ==>{}",qnavo);
	}

	@Test
	void testUpdateQna() {
		QnaVO vo = new QnaVO();
		vo.setPstSj("수정한 게시글 제목");
		vo.setPstCn("수정한 게시글 내용");
		vo.setPstNo("P011");
		vo.setUserNo("U240517004");
		int cnt = mapper.updateQna(vo);
		assertEquals(cnt, 1);
	}

	@Test
	void testDeleteQna() {
		QnaVO vo = new QnaVO();
		vo.setPstNo("P011");
		vo.setUserNo("U240517004");
		int cnt = mapper.deleteQna(vo);
		assertEquals(cnt, 1);
	}

}
