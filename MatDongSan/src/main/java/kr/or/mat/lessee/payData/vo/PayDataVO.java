package kr.or.mat.lessee.payData.vo;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import kr.or.mat.rentNotice.vo.CntrctRentVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "payNo")
public class PayDataVO {
	private int rnum;
	
	@NotBlank
	private String payNo;
	@NotBlank
	private String blNm;
	@NotNull
	private Long rqestAmt;
	@NotBlank
	private String dedtDe;
	@NotBlank
	private String payDe;
	@NotBlank
	private String payStts;
	private String cntrctRentNo;
	
	private CntrctRentVO cntrctRent;
}
