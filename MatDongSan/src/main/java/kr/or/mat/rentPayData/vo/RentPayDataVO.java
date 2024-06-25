package kr.or.mat.rentPayData.vo;

import kr.or.mat.rentContract.vo.RentContractVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of="payNo")
public class RentPayDataVO {
	private String payNo;
	private String blNm;
	private long rqestAmt;
	private String dedtDe;
	private String payDe;
	private String payStts;
	private String cntrctRentNo;
	
	int knum;
	long boogase;
	
	//has a
	private RentContractVO rentContract;
	
	//차트
	String payMonth;
	int payCount;
	int totalAmount;
	int totalAmount2;
}
