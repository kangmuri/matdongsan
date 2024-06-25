package kr.or.mat.mypage.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.mat.mypage.mapper.MyPageMapper;
import kr.or.mat.mypage.vo.MyRoomLikeVO;
import kr.or.mat.mypage.vo.QnaVO;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class MyPageServiceImpl implements MyPageService{
	
	private final MyPageMapper mapper;
	
	/**
	 * 등록 매물 조회
	 * @param userNo
	 * @return
	 */
	@Override
	public int retrieveMyRoom(String userNo) {
		return mapper.selectRoomCount(userNo);
	}

	/**
	 * 계약 진행 조회
	 * @param userNo
	 * @return
	 */
	@Override
	public int retrieveMyRoomDealing(String userNo) {
		//임대인 기준 횟수
		int lesseeCnt = mapper.selectRoomDealingLessee(userNo);
		//임차인 기준 횟수
		int lessorCnt =mapper.selectRoomDealingLessor(userNo);
		return lesseeCnt + lessorCnt;
	}

	/**
	 * 신고 횟수 조회
	 * @param userNo
	 * @return
	 */
	@Override
	public int retrieveMyRoomReport(String userNo) {
		return 0;
	}

	/**
	 * 1:1 문의 게시글 리스트 조회
	 * @param userNo
	 * @return
	 */
	@Override
	public List<QnaVO> retrieveMyQnaList(String userNo) {
		return mapper.selectQnaList(userNo);
	}

	/**
	 * 찜 목록 리스트 조회
	 * @param userNo
	 * @return
	 */
	@Override
	public List<MyRoomLikeVO> retrieveMyRoomLikeList(String userNo) {
		return mapper.selectRoomLikeList(userNo);
	}

}
