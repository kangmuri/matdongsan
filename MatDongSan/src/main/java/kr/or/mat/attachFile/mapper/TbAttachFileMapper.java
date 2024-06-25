package kr.or.mat.attachFile.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.mat.attachFile.vo.TbAttachFileVO;

/**
 * @author Seongmin Park
 *	작성일 : 2024.05.18
 *	내용  : 통합 첨부파일 등록 
 */
@Mapper
public interface TbAttachFileMapper {
	
	/**
	 * 통합 첨부파일 등록 
	 * @param tbAttachFileVO
	 * @return call by reference로 통합 첨부파일 번호 받아올수 있음
	 */
	public int insertTbAttachFile(TbAttachFileVO tbAttachFileVO);
	
	/**
	 * 첨부파일 삭제를 위한 메소드
	 */
	public int deleteAttatch(String unityAtchmnflNo);
	
	/**
	 * 첨부파일 조회
	 * @param tbAttachFileVO
	 * @return
	 */
	public List<TbAttachFileVO> selectTbAttachFileList(TbAttachFileVO tbAttachFileVO);

}
