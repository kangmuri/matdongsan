package kr.or.mat.login.vo;

import java.io.Serializable;

import javax.validation.constraints.NotBlank;

import kr.or.mat.attachFile.vo.TbAttachFileVO;
import lombok.Data;
import lombok.EqualsAndHashCode;
@Data
@EqualsAndHashCode(of = "userNo")
public class AuthUserVO implements Serializable{
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
