package kr.or.mat.rentNotice.vo;

import java.util.List;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import kr.or.mat.lessee.payData.vo.PayDataVO;
import kr.or.mat.rentRoom.vo.RentRoomVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "cntrctRentNo")
public class CntrctRentVO {
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
	private Long dctRentAr;
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
	private String ctpVatApplcYn;
	private Long grnteAmt;
	private Long mhlAmt;
	private Long managectAmt;
	@NotBlank
	private String ctpRcpmnyer;
	@NotBlank
	private String ctpBlDtStdr;
	private Long ctpDedtDe;
	private Long mtRcpmnyAmt;
	private String ctpUpddeDt;
	@NotBlank
	private String ctpDelYn;
	@NotBlank
	private String rentRoomNo;
	private String lesseeNo;
	
	private String prufNm;
	private String prufKnd;
	private String prufMthd;
	
	private RentRoomVO rentRoom;
	private List<PayDataVO> payDataList; 
}
