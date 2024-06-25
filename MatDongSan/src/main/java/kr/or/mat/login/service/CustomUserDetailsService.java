package kr.or.mat.login.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import kr.or.mat.login.mapper.LoginMapper;
import kr.or.mat.login.vo.AuthUserVO;
import kr.or.mat.login.vo.UserVOWrapper;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@Service
public class CustomUserDetailsService implements UserDetailsService{
	@Autowired
	private LoginMapper mapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		log.info("넘어온 username값==>{}",username);
		AuthUserVO realUser = mapper.selectUserForAuth(username);
		if(realUser==null) {
			throw new UsernameNotFoundException(String.format("%s 사용자 없음.", username));
		}
		String userRole = realUser.getUserSe();
		List<GrantedAuthority> authorities = AuthorityUtils.createAuthorityList(userRole);
		authorities.addAll( loadAuthrotiesByRole(userRole) );
		
		UserVOWrapper userDetails = new UserVOWrapper(realUser, authorities);
		return userDetails;
	}
	
	private List<GrantedAuthority> loadAuthrotiesByRole(String role) {
		List<GrantedAuthority> authorities = new ArrayList<>();
		if(role.endsWith("ROLE_ADMIN")) {
			authorities.add(new SimpleGrantedAuthority("READ"));
			authorities.add(new SimpleGrantedAuthority("WRITE"));
		}else {
			authorities.add(new SimpleGrantedAuthority("READ"));
		}
		return authorities;
	}
}
