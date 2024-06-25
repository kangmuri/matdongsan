package kr.or.mat.lessee.complaints.vo;

import java.util.Set;

import javax.validation.constraints.NotBlank;

import kr.or.mat.rentBuilding.vo.RentBldgVO;
import kr.or.mat.rentNotice.vo.UserVO;
import kr.or.mat.signup.vo.SignupVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "cvlcpNo")
public class ComplaintsVO {
	private int rnum;
	@NotBlank
	private String cvlcpNo;
	@NotBlank
	private String cvlcpCn;
	private String cvlcpAns;
	@NotBlank
	private String cvlcpKnd;
	@NotBlank
	private String cvlcpStts;
	private String unityAtchmnflNo;
	@NotBlank
	private String rentBldgNo;
	@NotBlank
	private String lesseeNo;
	private String lessorNo;
	private String cvlcpDt;
	private String cvlcpHopeDt;
	private String cvlcpDelYn;

	private RentBldgVO rentBldg;
	private UserVO users;
}
