package kr.or.mat.login.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.login.vo.AuthUserVO;

@Mapper
public interface FindIdPasswordMapper {
	
	/**
	 * @param userVO 클라이언트에서 입력받은 이름과 이메일이 들어있는 vo
	 * @return 해당하는 아이디가 있을 경우 1을 반환, 없을경우 0을 반환
	 */
	public int selectIdCk(AuthUserVO userVO);
	
	/**
	 * @param userVO 클라이언트에서 입력받은 이름과 이메일이 들어있는 vo
	 * @return 해당하는 계정의 아이디를 반환
	 */
	public AuthUserVO selectId(AuthUserVO userVO);
	
	/**
	 * @param userVO 클라이언트에서 입력받은 아이디와 이름과 이메일이 들어있는 vo
	 * @return 해당하는 비밀번호가 있을 경우 1을 반환, 없을경우 0을 반환
	 */
	public int selectPassCk(AuthUserVO userVO);
	
	/**
	 * @param userVO 인증된 사용자의 userNo값을 조회
	 * @return 
	 */
	public AuthUserVO selectUserNo(AuthUserVO userVO);
}
