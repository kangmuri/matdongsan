package kr.or.mat.signup.vo;

import java.io.Serializable;

import lombok.Data;

@Data
public class SignupVO implements Serializable{
	private Long unityAtchmnflNo;
	private String userNo;
	private String userNm;
	private String userId;
	private String userPw;
	private String userEmail;
	private String userMbtlnum;
	private String userSexdstn;
	private String userBir;
	private String userCreatOn;
	private String userLastLoginDe;
	private String userRentYn;
	private Long userSe;
	private String userDelYn;
	
}
