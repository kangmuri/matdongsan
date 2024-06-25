package kr.or.mat.mypage.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.mat.mypage.mapper.QnaMapper;
import kr.or.mat.mypage.vo.QnaReplyVO;
import kr.or.mat.mypage.vo.QnaVO;
import kr.or.mat.paging.PaginationInfo;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@RequiredArgsConstructor
@Service
public class QnaServiceImpl implements QnaService{

	private final QnaMapper mapper;
	
	@Override
	public int createQna(QnaVO inputData) {
		return mapper.insertQna(inputData);
	}
	@Override
	public List<QnaVO> retrieveQnaList(PaginationInfo page) {
		
		page.setTotalRecord(mapper.selectTotalRecord(page));
		log.info("현제 Qna 전체 수==>{}",mapper.selectTotalRecord(page));
		
		List<QnaVO> qnaVO = mapper.selectQnaList(page);
		
		//댓글 여부를 확인후 정보를 넣기
		for (QnaVO vo : qnaVO) {
			int cnt = mapper.selectReplyCk(vo.getPstNo());
			if(cnt > 0) {
				vo.setCmtYn("Y");
			}else {
				vo.setCmtYn("N");
			}
		}
		return qnaVO;
	}

	@Override
	public QnaVO retrieveQna(QnaVO pstNo) {
		return mapper.selectQna(pstNo);
	}

	@Override
	public int modifyQna(QnaVO inputData) {
		return mapper.updateQna(inputData);
	}
	
	@Override
	public int removeQna(QnaVO inputData) {
		return mapper.deleteQna(inputData);
	}
	
	@Override
	public List<QnaReplyVO> retrieveQnaReply(String pstNo) {
		return mapper.selectQnaReplyList(pstNo);
	}
	
}
