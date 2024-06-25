package kr.or.mat.util.cmmnCode.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import kr.or.mat.util.cmmnCode.vo.CmmnCodeVO;

/**
 *  파일명 : CmmnCodeMapper.java
 *  설 명 : 공통코드 mapper
 *  작성자 : 이성경
 *  작성일 : 2024. 05. 19
 *  최종 수정일 : 2024. 05. 19
 */
@Mapper
public interface CmmnCodeMapper {
	/**
	 * 공통코드 리스트 전체 조회
	 * @return List<CmmnCodeVO>
	 */
	public List<CmmnCodeVO> selectCmmnCodList();
	
}
