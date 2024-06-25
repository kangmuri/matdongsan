package kr.or.mat.signup.service;

import kr.or.mat.signup.vo.SignupVO;
/**
 *  파일명 : SignupService.java
 *  설 명 : 회원가입을 위한 Service클래스
 *  작성자 : 한요한
 *  작성일 : 2024. 05. 14
 *  최종 수정일 : 2024. 05. 15
 */

public interface SignupService {
	
	/**
	 * 회원가입
	 * @param vo -> 회원정보
	 * @return 회원등록 성공,실패, 아이디 중복
	 */
	public ServiceResult createUser(SignupVO vo);
	
	
	/**
	 * id 중복체크
	 * @param userId -> 입력받은 id(중복체크할 대상)
	 * @return 1: id가 존재(실패), 0: id가 존재하지않음(성공)
	 */
	public int checkId(String userId);
}
