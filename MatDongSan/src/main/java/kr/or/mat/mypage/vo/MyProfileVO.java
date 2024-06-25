package kr.or.mat.mypage.vo;

import java.io.Serializable;
import java.util.List;

import kr.or.mat.attachFile.vo.TbAttachFileVO;
import lombok.Data;

@Data
public class MyProfileVO implements Serializable{
	
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
	private String userSe;
	private String userDelYn;
	private String unityAtchmnflNo;
	
	private TbAttachFileVO tbAttachFileVO;
}
