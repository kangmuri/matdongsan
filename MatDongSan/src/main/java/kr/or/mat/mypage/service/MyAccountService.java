package kr.or.mat.mypage.service;

import kr.or.mat.login.vo.AuthUserVO;

public interface MyAccountService {
	/**
	 * 페이지에 출력하는 계정의 아이디, 프로필이미지를 조회
	 * @param userNo, unityAtchmnflNo 조회할 사용자 번호와 첨부파일(프로필이미지)여부
	 * @return 해당 계정의 아이디, 프로필 Web경로 반환
	 */
	public AuthUserVO retrieveAccount(String userNo, String unityAtchmnflNo);
	

}
