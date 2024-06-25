package kr.or.mat.login.service;

import java.util.Map;

import kr.or.mat.login.vo.AuthUserVO;

public interface FindIdPasswordService {
	/**
	 * @param userVO 클라이언트에서 입력받은 이름과 이메일이 들어있는 vo
	 * @return 해당하는 아이디가 있을 경우 1을 반환, 없을경우 0을 반환
	 */
	public int retrieveIdCk(AuthUserVO userVO);
	
	/**
	 * @param userVO 클라이언트에서 입력받은 이름과 이메일이 들어있는 vo
	 * @return 해당하는 아이디가 있을 경우 1을 반환, 없을경우 0을 반환
	 */
	public AuthUserVO retrieveId(AuthUserVO userVO);
	
	/**
	 * @param userVO 클라이언트에서 입력받은 아이디와 이름과 이메일이 들어있는 vo
	 * @return 해당하는 아이디가 있을 경우 1을 반환, 없을경우 0을 반환
	 */
	public Map<String,Object> retrievePassCk(AuthUserVO userVO);
	
	
}
