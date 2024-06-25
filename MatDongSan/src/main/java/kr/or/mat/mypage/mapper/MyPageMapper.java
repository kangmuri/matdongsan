package kr.or.mat.mypage.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.mypage.vo.MyRoomLikeVO;
import kr.or.mat.mypage.vo.QnaVO;

@Mapper
public interface MyPageMapper {
	
	/**
	 * 올린 매물 갯수 조회
	 * @param userNo
	 * @return
	 */
	public int selectRoomCount(String userNo);
	
	/**
	 * 진행중인 계약 건수 조회(임대인)
	 * @param userNo
	 * @return
	 */
	public int selectRoomDealingLessor(String userNo);
	
	/**
	 * 진행중인 계약 건수 조회(임차인)
	 * @param userNo
	 * @return
	 */
	public int selectRoomDealingLessee(String userNo);
	
	/**
	 * 허위매물 신고 건수 조회
	 * @param userNo
	 * @return
	 */
	public int selectRoomReport(String userNo);
	
	/**
	 * 1:1 문의 게시글 리스트 조회
	 * @param userNo
	 * @return
	 */
	public List<QnaVO> selectQnaList(String userNo);
	
	/**
	 * 찜 목록 게시글 조회
	 * @param userNo
	 * @return
	 */
	public List<MyRoomLikeVO> selectRoomLikeList(String userNo);
	
	
}
