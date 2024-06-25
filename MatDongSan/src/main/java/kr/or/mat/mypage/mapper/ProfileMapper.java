package kr.or.mat.mypage.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.attachFile.vo.TbAttachFileVO;
import kr.or.mat.mypage.vo.MyProfileVO;


/**
 *  파일명 : ProfileMapper.java
 *  설 명 : 회원정보 수정을 위한 클래스
 *  작성자 : 한요한
 *  작성일 : 2024. 05. 16
 *  최종 수정일 : 2024. 06. 09
 *  수정 내용 : 유저번호로 유저 찾기 메소드 추가
 *  수정자 : 박성민
 */
@Mapper
public interface ProfileMapper {
	/**
	 * 회원정보 수정
	 * @param vo -> 회원정보
	 * @return 회원등록 성공,실패
	 */
	public int updateProfile(MyProfileVO vo);
	
	/**
	 * 회원정보 수정 (이미지는 수정 No)
	 * @param vo -> 회원정보
	 * @return 회원등록 성공,실패
	 */
	public int noImgupdateProfile(MyProfileVO vo);
	
	/**
	 * 유저 프로필 이미지 등록
	 * @param vo -> 회원정보
	 * @return 유저 프로필 이미지 등록 성공,실패
	 */
	public int insertProfileImg(TbAttachFileVO vo);
	
	/**
	 * 유저 프로필 이미지 수정
	 * @param vo -> 회원정보
	 * @return 프로필이미지 수정 성공,실패
	 */
	public int updateProfileImg(TbAttachFileVO vo);
	
	
	/**
	 * 유저 프로필 이미지 PK 정보 조회
	 * @param vo -> 회원 프로필 이미지정보
	 * @return 유저 프로필 이미지 PK 정보
	 */
	public TbAttachFileVO selectProfilePkImg(TbAttachFileVO vo);
	
	/**
	 * 회원 비밀번호 수정
	 * @param vo -> 회원정보
	 * @return 회원정보 수정 성공,실패
	 */
	public int updatePassword(MyProfileVO vo);
	
	/**
	 * 현재 비밀번호가 맞는지 체크
	 * @param vo -> 회원정보
	 * @return 비밀번호 확인 성공,실패
	 */
	public MyProfileVO passwordCk(MyProfileVO vo);
	
	/**
	 * 유저 정보 조회
	 * @param myProfileVO
	 * @return
	 */
	public MyProfileVO selectUser(MyProfileVO myProfileVO);
	
	/**
	 * 유저 정보 조회(유저 pk로 찾기)
	 * @param myProfileVO
	 * @return
	 */
	public MyProfileVO selectUserByUserNo(MyProfileVO myProfileVO);
	

	
}
