package kr.or.mat.rentNotice.vo;

import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "rentBldgNo")
public class RentBldgLesseeVO {
	@NotBlank
	private String rentBldgNo;
	@NotBlank
	private String bldgDe;
	@NotBlank
	private String bldgNm;
	@NotBlank
	private String bldgAddr;
	private Long bldgHomeCnt;
	private Long bldgGrCnt;
	private Long bldgUgrCnt;
	@NotBlank
	private String bldgDelYn;
	@NotBlank
	private String userNo;
	private String roomNo;
	private String bldgSe;
}
