package kr.or.mat.signup.service;

import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import kr.or.mat.signup.mapper.SignupMapper;
import kr.or.mat.signup.vo.SignupVO;
import lombok.RequiredArgsConstructor;

/**
 *  파일명 : SignupMapper.java
 *  설 명 : 회원가입을 위한 ServiceImpl클래스
 *  작성자 : 한요한
 *  작성일 : 2024. 05. 14
 *  최종 수정일 : 2024. 05. 16
 *  수정내용 : 비밀번호 암호화 추가
 */
@Service
@RequiredArgsConstructor
public class SignupServiceImpl implements SignupService{
	
	private final SignupMapper mapper;
	
	private void encryptMember(SignupVO vo) {
		String plain = vo.getUserPw();
		PasswordEncoder encoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
		String encoded = encoder.encode(plain);
		vo.setUserPw(encoded);
	}
	
	
	@Override
	public ServiceResult createUser(SignupVO vo) {
		ServiceResult result = null;
		// 넘어온 vo의 id를 이용해 null-> 중복검사 통과, not null -> 중복검사 미통과
		if(mapper.selectUser(vo.getUserId()) == 0) {
			encryptMember(vo);
			int cnt = mapper.insertUser(vo);
			if(cnt > 0) {
				result = ServiceResult.OK;
			}else {
				result = ServiceResult.FAIL;
			}
		}else {
			result = ServiceResult.PKDUPLICATED;
		}
		return result;
	}

	
	@Override
	public int checkId(String userId) {
		return mapper.selectUser(userId);
	}
	
	
	
	
}