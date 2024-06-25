package kr.or.mat.attachFile.mapper;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.mat.AbstractRootContextTest;
import kr.or.mat.attachFile.vo.TbAttachFileVO;

class TbAttachFileMapperTest extends AbstractRootContextTest{

	@Autowired
	TbAttachFileMapper mapper;
	@Test
	void testInsertTbAttachFile() {
		List<TbAttachFileVO> list = new ArrayList<TbAttachFileVO>();
		
		TbAttachFileVO attachFileVO = new TbAttachFileVO();
        attachFileVO.setAtchmnflSn(1L);
        attachFileVO.setFilePath("d:/sm/cf100192-8c90-4d45-8c31-b2eaaac65365Untitled (3).png");
        attachFileVO.setWebPath("/sm/cf100192-8c90-4d45-8c31-b2eaaac65365Untitled (3).png");
        attachFileVO.setStreFileNm("cf100192-8c90-4d45-8c31-b2eaaac65365Untitled (3).png");
        attachFileVO.setFileSize(68492L);
        attachFileVO.setFileType("image/png");
        attachFileVO.setRegUserId("U240515003");
        
        TbAttachFileVO attachFileVO1 = new TbAttachFileVO();
        attachFileVO.setAtchmnflSn(2L);
        attachFileVO.setFilePath("d:/sm/cf100192-8c90-4d45-8c31-b2eaaac65365Untitled (3).png");
        attachFileVO.setWebPath("/sm/cf100192-8c90-4d45-8c31-b2eaaac65365Untitled (3).png");
        attachFileVO.setStreFileNm("cf100192-8c90-4d45-8c31-b2eaaac65365Untitled (3).png");
        attachFileVO.setFileSize(68492L);
        attachFileVO.setFileType("image/png");
        attachFileVO.setRegUserId("U240515003");
        
        
        list.add(attachFileVO);
        list.add(attachFileVO1);
        
      
       
	}

}
