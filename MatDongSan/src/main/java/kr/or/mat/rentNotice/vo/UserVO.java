package kr.or.mat.rentNotice.vo;

import java.util.List;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "userNo")
public class UserVO {
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
	@NotNull
	private String userSe;
	@NotBlank
	private String userDelYn;
	private String proflImageCours;
	
	private List<CntrctRentVO> cntrctList;
}
