package kr.or.mat.mypage.service;

import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.or.mat.attachFile.vo.TbAttachFileVO;
import kr.or.mat.mypage.mapper.ProfileMapper;
import kr.or.mat.mypage.vo.MyProfileVO;
import kr.or.mat.signup.vo.SignupVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class ProfileServiceImpl implements ProfileService{
	
	private final ProfileMapper mapper;
	//암호화된 비밀번호 의 비교를 위한 객체
	private PasswordEncoder encoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
	
	private void encryptMember(MyProfileVO vo) {
		String plain = vo.getUserPw();
		PasswordEncoder encoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
		String encoded = encoder.encode(plain);
		vo.setUserPw(encoded);
	}
	
	
	//프로필 insert하고 이미지의 PK값을 반환하는 메소드
	public String ImgInsertgetPk(TbAttachFileVO inputData) {
		
		int cnt = mapper.insertProfileImg(inputData);
		log.info("insert확인==>{}",cnt);
		if(cnt > 0) {
			//insert한 정보를 가지고 PK값을 리턴
			TbAttachFileVO selectVO = mapper.selectProfilePkImg(inputData);
			return selectVO.getUnityAtchmnflNo();
		}
		return "fail";
	}
	
	@Override
	public int modifyProfile(MyProfileVO inputData) {
		TbAttachFileVO profileImgVO = inputData.getTbAttachFileVO();
		log.info("server에서 추출된 TbAttachFileVO==>{}",profileImgVO);
		
		//이미지를 수정하지 않고 수정버튼을 눌렀을때
		if(inputData.getTbAttachFileVO().getUnityAtchmnflNo() == null) {
			log.info("첨부파일을 선택하지 않고 수정버튼을 누르면 여기로 와야해요..");
			int cnt = mapper.updateProfile(inputData);
			return cnt;
		}
		
		//처음으로 프로필 사진을 등록
		if(profileImgVO.getUnityAtchmnflNo().isEmpty()) {
			log.info("처음 프로필일경우 이쪽으로 와야된다.");
			//이미지 파일을 insert하고 PK값을 반환
			String pkData = ImgInsertgetPk(profileImgVO);
			
			//반환된 pk값을 myProflieVO에 저장
			inputData.setUnityAtchmnflNo(pkData);
			log.info("반환된 pk값을 저장한 profileImgVO==>{}",inputData);
			
			//반환된 pk값을 저장한 myProflieVO로 profile update
			int cnt = mapper.updateProfile(inputData);
			return cnt;
		}
		
		//이미 등록된 프로필 컬럼이 있으면 프로필 update를 진행
		mapper.updateProfile(inputData);
		
		//프로필 이미지 update 진행
		mapper.updateProfileImg(profileImgVO);
		
		
		return 1;
	}
	
	//현재 비밀번호 비교 
	@Override
	public int ckPassword(MyProfileVO inputData) {
		int cnt = 0;
		//해당 아이디로 조회한 정보
		MyProfileVO vo = mapper.passwordCk(inputData);
		
		//DB의 패스워드
		String dbPass = vo.getUserPw();
		
		//입력받은 패스워드
		String inputPass = inputData.getUserPw();
		
		//입력받은 패스워드와 DB의 패스워드를 비교
		if(encoder.matches(inputPass, dbPass)) {
			cnt = 1;
		}else {
			cnt = 0;
		}
		return cnt;
	}
	
	//비밀번호 암호화 및 update
	@Override
	public int updatePassword(MyProfileVO vo) {
		encryptMember(vo);
		int cnt = mapper.updatePassword(vo);
		return cnt;
	}
}
