package kr.or.mat.attachFile.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.mat.attachFile.mapper.TbAttachFileMapper;
import kr.or.mat.attachFile.vo.TbAttachFileVO;

/**
 * @author Seongmin Park
 *	작성일 : 2024.05.18
 *	내용	 : 통합첨부파일 등록 로직
 */
@Service
public class TbAttachFileServiceImpl implements TbAttachFileService {

	@Autowired
	TbAttachFileMapper mapper;
	
	//첫번째파일 입력한다음 pk반환받아서 나머지 입력
	@Override
	public int createTbAttachFile(List<TbAttachFileVO> tbAttachFileVO) {
		long cnt = 0;
		String attachFilePk = null;
		for(int i = 0; i < tbAttachFileVO.size(); i++) {
			
		    TbAttachFileVO vo = tbAttachFileVO.get(i);
		    vo.setAtchmnflSn(++cnt);
		    if(i == 0) {
		        mapper.insertTbAttachFile(vo); // 첫 번째 파일 삽입
		        attachFilePk = vo.getUnityAtchmnflNo(); // 삽입된 첫 번째 파일의 PK 가져오기
		    } else {
		        vo.setUnityAtchmnflNo(attachFilePk); // 이후 파일들의 PK 설정
		        mapper.insertTbAttachFile(vo); // 두 번째 이후 파일 삽입
		    }
		}
		return 1;
	}

	@Override
	public int deleteAttatch(String unityAtchmnflNo) {
		return mapper.deleteAttatch(unityAtchmnflNo);
	}

	@Override
	public List<TbAttachFileVO> retrieveTbAttachFileList(TbAttachFileVO tbAttachFileVO) {
		
		return mapper.selectTbAttachFileList(tbAttachFileVO);
	}

}
