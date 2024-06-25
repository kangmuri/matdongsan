package kr.or.mat.signup.mapper;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import kr.or.mat.AbstractRootContextTest;
import kr.or.mat.signup.vo.SignupVO;

class SignupMapperTest extends AbstractRootContextTest{

	@Autowired
	SignupMapper mapper;
	
	@Test
	void testCreateUser() {
		SignupVO vo = new SignupVO();
		vo.setUserNm("요요요");
		vo.setUserId("AAA");
		vo.setUserPw("AAA");
		vo.setUserMbtlnum("010-1111-1111");
		vo.setUserSexdstn("M");
		vo.setUserEmail("fmfmfmgk@naver.com");
		vo.setUserDelYn("N");
		int cnt = mapper.insertUser(vo);
		assertEquals(1, cnt);
	}
	
}