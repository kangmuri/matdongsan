package kr.or.mat.util.cmmnCode.mapper;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.mat.AbstractRootContextTest;
import kr.or.mat.mypage.mapper.QnaMapper;
import kr.or.mat.util.cmmnCode.vo.CmmnCodeVO;
import lombok.extern.slf4j.Slf4j;


@Slf4j
class CmmnCodeMapperTest extends AbstractRootContextTest{

	@Autowired
	CmmnCodeMapper mapper;
	
	@Test
	void testSelectCmmnCode() {
		List<CmmnCodeVO> list =  mapper.selectCmmnCodList();
		log.info("공통코드 : {}",list);
	}

}
