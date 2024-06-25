package kr.or.mat.lessee.community.vo;

import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "pstRprtNo")
public class PostingReportVO {

	@NotBlank
	private String pstRprtNo;
	@NotBlank
	private String pstRprtDt;
	@NotBlank
	private String pstRprtSj;
	@NotBlank
	private String pstRprtCn;
	@NotBlank
	private String pstStts;
	private String returnReason;
	private String managerNo;
	@NotBlank
	private String wrtrNo;
	@NotBlank
	private String pstNo;
}
