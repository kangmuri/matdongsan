package kr.or.mat.mypage.service;

import kr.or.mat.mypage.vo.MyProfileVO;

public interface ProfileService {
	/**
	 * 회원정보 수정
	 * @param vo -> 회원정보
	 * @return 회원등록 성공,실패
	 */
	public int modifyProfile(MyProfileVO inputData);
	
	/**
	 * 현재 비밀번호가 맞는지 체크
	 * @param vo -> 회원정보
	 * @return 회원등록 성공,실패
	 */
	public int ckPassword(MyProfileVO vo);
	
	/**
	 * 회원 비밀번호 수정
	 * @param vo -> 회원정보
	 * @return 회원정보 수정 성공,실패
	 */
	public int updatePassword(MyProfileVO vo);
	
	
}
