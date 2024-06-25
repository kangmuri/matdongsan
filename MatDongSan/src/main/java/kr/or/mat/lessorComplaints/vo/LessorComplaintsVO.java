package kr.or.mat.lessorComplaints.vo;

import javax.validation.constraints.NotBlank;

import kr.or.mat.rentBuilding.vo.RentBldgVO;
import kr.or.mat.rentContract.vo.RentContractVO;
import kr.or.mat.rentNotice.vo.UserVO;
import kr.or.mat.rentRoom.vo.RentRoomVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "cvlcpNo")
public class LessorComplaintsVO {
	
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
	private String cvlcpOkDt;

	private RentBldgVO rentBldg;
	private RentRoomVO rentRoom;
	private RentContractVO rentContract;
	private UserVO users;
	int rnum; //paging
}
