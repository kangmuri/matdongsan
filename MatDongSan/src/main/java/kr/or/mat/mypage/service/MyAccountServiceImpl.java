package kr.or.mat.mypage.service;

import org.springframework.stereotype.Service;

import kr.or.mat.login.vo.AuthUserVO;
import kr.or.mat.mypage.mapper.MyAccountMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class MyAccountServiceImpl implements MyAccountService{
	
	private final MyAccountMapper mapper;
	
	@Override
	public AuthUserVO retrieveAccount(String userNo, String unityAtchmnflNo) {
		AuthUserVO vo = new AuthUserVO();
		log.info("service로 넘어온 userNo==>{}",userNo);
		log.info("service로 넘어온 unityAtchmnflNo==>{}",unityAtchmnflNo);
		
		//principal객체를 가지고 현재 사용자 정보를 조회
		vo = mapper.selectAccount(userNo);
		
		//첨부파일(프로필 이미지 번호)이 이미 존재할 경우 프로필 이미지 web경로를 같이 포함해 조회한다.
		if(vo.getUnityAtchmnflNo()!=null) {
			vo = mapper.selectAccount2(userNo);
		}
		return vo;
	}
}
