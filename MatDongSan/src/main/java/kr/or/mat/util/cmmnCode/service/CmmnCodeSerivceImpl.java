package kr.or.mat.util.cmmnCode.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.mat.util.cmmnCode.mapper.CmmnCodeMapper;
import kr.or.mat.util.cmmnCode.vo.CmmnCodeVO;
import lombok.RequiredArgsConstructor;

/**
 *  파일명 : CmmnCodeSerivceImpl.java
 *  설 명 : 공통코드 serviceImpl
 *  작성자 : 이성경
 *  작성일 : 2024. 05. 19
 *  최종 수정일 : 2024. 05. 19
 */
@Service
@RequiredArgsConstructor
public class CmmnCodeSerivceImpl implements CmmnCodeService {
	private final CmmnCodeMapper cmmncodeMapper;

	@Override
	public List<CmmnCodeVO> retrieveCmmnCodeList() {
		return cmmncodeMapper.selectCmmnCodList();
	} 
	

}
