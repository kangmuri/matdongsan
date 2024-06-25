package kr.or.mat.rentContract.vo;


import java.util.List;

import kr.or.mat.rentPayData.vo.RentPayDataVO;
import kr.or.mat.rentRoom.vo.RentRoomVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of="cntrctRentNo")
public class RentContractVO {
	private String prufKnd;
	private String prufMthd;
	private long prufDe;
	private String cntrctStts;
	private String cntrctRentNo;
	private String cntrctrNm;
	private String mbtlnum;
	private String emailAdres;
	private String vhcleYn;
	private String animalYn;
	private String ctpPicName;
	private String ctpPicEmail;
	private String ctpPicMbtlnum;
	private long dctRentAr;  
	private String dctClsf;
	private String rentCnd;
	private String dctBgng;
	private String dctEnd;
	private String cntrctDe;
	private String ctpVatApplcYn;
	private long grnteAmt;  //계약 등록 javascript에서 고쳐야할듯?
	private long mhlAmt;  //계약 등록 javascript에서 고쳐야할듯?
	private long managectAmt;  //계약 등록 javascript에서 고쳐야할듯?
	private String ctpRcpmnyer;
	private String prufNm;
	private long ctpDedtDe;
	private long mtRcpmnyAmt;  //계약 등록 javascript에서 고쳐야할듯?
	private String ctpUpddeDt;
	private String ctpDelYn;
	private String rentRoomNo;
	private String lesseeNo;
	private long booga; // 부가세 계산 (db에 없음)
	private String secureCode; //임차인 전송 보안코드
	private String midwayDt;
	
	//has a
	private RentRoomVO rentRoom;
	//has many
	private List<RentPayDataVO> rentPayData;
	
}
