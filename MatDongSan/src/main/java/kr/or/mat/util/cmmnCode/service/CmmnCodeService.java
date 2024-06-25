package kr.or.mat.util.cmmnCode.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.mat.rentBuilding.vo.RentBldgVO;
import kr.or.mat.util.cmmnCode.vo.CmmnCodeVO;

/**
 *  파일명 : CmmnCodeService.java
 *  설 명 : 공통코드 service
 *  작성자 : 이성경
 *  작성일 : 2024. 05. 19
 *  최종 수정일 : 2024. 05. 19
 */
@Service
public interface CmmnCodeService {
	
	/**
	 * 공통코드 리스트 전체 조회
	 * @return List<CmmnCodeVO>
	 */
	public List<CmmnCodeVO> retrieveCmmnCodeList();
}
