package kr.or.mat.login.service;

import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Service;

import kr.or.mat.lessor.service.MailSendService;
import kr.or.mat.login.mapper.FindIdPasswordMapper;
import kr.or.mat.login.vo.AuthUserVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class FindIdPasswordServiceImpl implements FindIdPasswordService{
	
	private final FindIdPasswordMapper mapper;
	
	@Autowired
	private PassMailService mailService;
	
	@Override
	public int retrieveIdCk(AuthUserVO userVO) {
		return mapper.selectIdCk(userVO);
	}

	@Override
	public AuthUserVO retrieveId(AuthUserVO userVO) {
		return mapper.selectId(userVO);
	}

	@Override
	public Map<String,Object> retrievePassCk(AuthUserVO userVO) {
		Map<String,Object> param = new LinkedHashMap<>();
		
		//이름 아이디 이메일을 비교해 회원 여부를 판단
		int cnt = mapper.selectPassCk(userVO);
		//비밀번호 수정을 위한 userNo 값 조회
		AuthUserVO vo = mapper.selectUserNo(userVO);
		
		//회원 여부가 참이면 이메일로 코드 전송
		if(cnt > 0) {
			String code = mailService.joinEmail(userVO.getUserEmail());
			log.info("만들어진 Code값 ==>{}",code);
			param.put("result", "ok");
			param.put("code", code);
			param.put("userNo", vo.getUserNo());
			return param;
		}
		param.put("result", "fail");
		return param;
	}

}
