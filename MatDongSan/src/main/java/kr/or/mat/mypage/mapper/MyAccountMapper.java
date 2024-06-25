package kr.or.mat.mypage.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.login.vo.AuthUserVO;

/**
 * @author PC-20
 *
 */
@Mapper
public interface MyAccountMapper {
	
	/**
	 * 페이지에 출력하는 계정의 아이디, 프로필이미지를 조회 ( 이미지가 존재하지 않을경우)
	 * @param userNo
	 * @return 해당 계정의 아이디, 프로필 Web경로 반환
	 */
	public AuthUserVO selectAccount(String userNo);
	
	/**
	 * 페이지에 출력하는 계정의 아이디, 프로필이미지를 조회 ( 이미지가 존재할 경우)
	 * @param userNo
	 * @return 해당 계정의 아이디, 프로필 Web경로 반환
	 */
	public AuthUserVO selectAccount2(String userNo);
	
	
	/**
	 * 현재 계정 정보를 조회
	 * @param userNo
	 * @return 해당 계정의 아이디, 프로필 Web경로 반환
	 */
	public AuthUserVO nowAccount(String userNo);
}
