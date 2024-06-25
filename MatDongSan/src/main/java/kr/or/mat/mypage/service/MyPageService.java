package kr.or.mat.mypage.service;

import java.util.List;

import kr.or.mat.mypage.vo.MyRoomLikeVO;
import kr.or.mat.mypage.vo.QnaVO;

public interface MyPageService {
	
	/**
	 * 등록 매물 조회
	 * @param userNo
	 * @return
	 */
	public int retrieveMyRoom(String userNo);
	
	/**
	 * 계약 진행 조회
	 * @param userNo
	 * @return
	 */
	public int retrieveMyRoomDealing(String userNo);
	
	/**
	 * 신고 횟수 조회
	 * @param userNo
	 * @return
	 */
	public int retrieveMyRoomReport(String userNo);
	
	/**
	 * 1:1 문의 게시글 리스트 조회
	 * @param userNo
	 * @return
	 */
	public List<QnaVO> retrieveMyQnaList(String userNo);
	
	/**
	 * 찜 목록 리스트 조회
	 * @param userNo
	 * @return
	 */
	public List<MyRoomLikeVO> retrieveMyRoomLikeList(String userNo);
}
