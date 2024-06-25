package kr.or.mat.login.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.login.vo.AuthUserVO;

@Mapper
public interface LoginMapper {
	public AuthUserVO selectUserForAuth(String username);
	public AuthUserVO selectUser(String username);
}
