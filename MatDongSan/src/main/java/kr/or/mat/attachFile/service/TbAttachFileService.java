package kr.or.mat.attachFile.service;

import java.util.List;

import kr.or.mat.attachFile.vo.TbAttachFileVO;

/**
 * @author Seongmin Park
 * 작성일 : 2024.05.18
 * 내용 : 통합 첨부파일 등록 비즈니스로직
 */
public interface TbAttachFileService {
	
	/**
	 * 첨부파일 등록 
	 * @param tbAttachFileVO
	 * @return
	 */
	public int createTbAttachFile(List<TbAttachFileVO>  tbAttachFileVO);
		

	/**
	 * 첨부파일 삭제를 위한 메소드
	 */
	public int deleteAttatch(String unityAtchmnflNo);
	
	public List<TbAttachFileVO> retrieveTbAttachFileList(TbAttachFileVO tbAttachFileVO);
}
