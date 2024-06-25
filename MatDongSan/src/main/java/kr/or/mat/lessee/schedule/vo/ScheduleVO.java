package kr.or.mat.lessee.schedule.vo;

import javax.validation.constraints.NotBlank;

import kr.or.mat.rentNotice.vo.UserVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "schdulNo")
public class ScheduleVO {
	@NotBlank
	private String schdulNo;
	@NotBlank
	private String schdulSj;
	private String schdulCn;
	@NotBlank
	private String schdulBgnde;
	private String schdulEndde;
	private String schdulDelYn;
	@NotBlank
	private String userNo; //임차인번호
	@NotBlank
	private String chttRoomNo;
	private String payNo;
	
	private UserVO users;//임대인번호
	
}
