package kr.or.mat.login.vo;

import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class UserVOWrapper extends User{
	private final AuthUserVO realUser;

	public UserVOWrapper(AuthUserVO realUser, List<GrantedAuthority> authorities) {
		super(realUser.getUserId(), realUser.getUserPw(), authorities);
		this.realUser = realUser;
	}
	
	public AuthUserVO getRealUser() {
		return realUser;
	}
}