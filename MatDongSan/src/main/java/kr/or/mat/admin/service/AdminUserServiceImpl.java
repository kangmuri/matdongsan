package kr.or.mat.admin.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.mat.admin.mapper.AdminUserMapper;
import kr.or.mat.admin.vo.AdminUserVO;
import kr.or.mat.paging.PaginationInfo;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@RequiredArgsConstructor
@Service
public class AdminUserServiceImpl implements AdminUserService{

	private final AdminUserMapper mapper;
	
	@Override
	public List<AdminUserVO> retrieveAdminUserList(PaginationInfo paging) {
		paging.setTotalRecord(mapper.selectTotalRecord(paging));
		log.info("mapper로 들어갈 정보==>{}",paging);
		List<AdminUserVO> userList = mapper.selectAdminUserList(paging);
		for (AdminUserVO vo : userList) {
			if(vo.getUserSexdstn().equals("M")) {
				vo.setUserSexdstn("남성");
			}else {
				vo.setUserSexdstn("여성");
			}
		}
		
		return userList;
	}

	@Override
	public AdminUserVO retrieveAdminUser(String userNo) {
		
		AdminUserVO userVO =  mapper.selectAdminUser(userNo);
		if(userVO.getUnityAtchmnflNo() != null) {
			userVO =  mapper.selectAdminUser2(userNo);
		}
		
		if(userVO.getUserSexdstn().equals("F")) {
			userVO.setUserSexdstn("여성");
		}else {
			userVO.setUserSexdstn("남성");
		}
		String bir = userVO.getUserBir().substring(0,10);
		userVO.setUserBir(bir);
		
		String date = userVO.getUserCreatOn().substring(0, 10);
		userVO.setUserCreatOn(date);
		
		return userVO;
	}

	@Override
	public int removeAdminUser(String userNo) {
		return mapper.deleteAdminUser(userNo);
	}

}
