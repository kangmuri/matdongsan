package kr.or.mat.signup.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.attachFile.vo.TbAttachFileVO;
import kr.or.mat.signup.vo.SignupVO;

/**
 *  파일명 : SignupMapper.java
 *  설 명 : 회원가입을 위한 클래스
 *  작성자 : 한요한
 *  작성일 : 2024. 05. 13
 *  최종 수정일 : 2024. 05. 13
 */
@Mapper
public interface SignupMapper {
	
	/**
	 * 회원가입
	 * @param vo -> 회원정보
	 * @return 회원등록 성공,실패
	 */
	public int insertUser(SignupVO vo); 
	
	/**
	 * 중복 검사를 위한 회원 상세 조회(엔터티의 모든 컬럼 조회)
	 * @param Id
	 * @return 존재하지 않으면 null반환
	 */
	public int selectUser(String Id);
	
	/**
	 * 유저 프로필 이미지 생성
	 * @return
	 */
	public int inserUserImg(TbAttachFileVO inputData);
}
