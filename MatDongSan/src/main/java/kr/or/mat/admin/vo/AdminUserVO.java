package kr.or.mat.admin.vo;

import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "userNo")
public class AdminUserVO {
	
	private String rnum;
	
	@NotBlank
	private String userNo;
	private String userNm;
	@NotBlank
	private String userId;
	@NotBlank
	private String userPw;
	@NotBlank
	private String userEmail;
	@NotBlank
	private String userMbtlnum;
	private String userSexdstn;
	private String userBir;
	private String userCreatOn;
	private String userLastLoginDe;
	private String userRentYn;
	@NotBlank
	private String userSe;
	@NotBlank
	private String userDelYn;
	private String unityAtchmnflNo;
	
	private String webPath;

}
