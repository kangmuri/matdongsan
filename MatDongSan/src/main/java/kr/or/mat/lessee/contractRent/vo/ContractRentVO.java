package kr.or.mat.lessee.contractRent.vo;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import kr.or.mat.rentRoom.vo.RentRoomVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "cntrctRentNo")
public class ContractRentVO {
	private int rnum;
	@NotNull
	private Long mtRcpmnyAmt;
	private String ctpUpddeDt;
	private String ctpDelYn;
	private String rentRoomNo;
	private String lesseeNo;
	@NotBlank
	private String cntrctRentNo;
	@NotBlank
	private String cntrctrNm;
	@NotBlank
	private String mbtlnum;
	private String emailAdres;
	private String vhcleYn;
	private String animalYn;
	private String ctpPicName;
	private String ctpPicEmail;
	private String ctpPicMbtlnum;
	@NotNull
	private String dctRentAr; //계약 등록 javascript에서 고쳐야할듯?
	@NotBlank
	private String dctClsf;
	@NotBlank
	private String rentCnd;
	@NotBlank
	private String dctBgng;
	@NotBlank
	private String dctEnd;
	@NotBlank
	private String cntrctDe;
	@NotBlank
	private String ctpVatApplcYn;//계약 등록 javascript에서 고쳐야할듯?
	private String grnteAmt;//계약 등록 javascript에서 고쳐야할듯?
	private String mhlAmt;//계약 등록 javascript에서 고쳐야할듯?
	private String managectAmt;//계약 등록 javascript에서 고쳐야할듯?
	@NotBlank
	private String ctpRcpmnyer;
	@NotBlank
	private String ctpBlDtStdr;
	
	private long ctpDedtDe;
	
	private RentRoomVO rentRoom;
}
