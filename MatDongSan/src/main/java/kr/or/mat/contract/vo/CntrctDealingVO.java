package kr.or.mat.contract.vo;

import java.io.Serializable;
import java.util.List;

import kr.or.mat.attachFile.vo.TbAttachFileVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "delngCntrctNo")
public class CntrctDealingVO implements Serializable{
	private int rnum;
	
	private String roomDelngNo;
	private String lesseePhone;
	private String lessorNm;
	private String lesseeNm;
	private String delngCntrctNo;
	private String dctLocplc;
	private String dctLadLndcgr;
	private Long dctLadAr;
	private Long dctBuldAr;
	private String dctBuldRescue;
	private String dctRentDc;
	private Long dctRentAr;
	private Long grnteAmt;
	private Long downAmt;
	private Long intermAmt;
	private String intermDe;
	private Long surlusAmt;
	private String surlusDe;
	private Long mhlAmt;
	private String mhlDe;
	private Long lshlAmt;
	private Long pasAmt;
	private Long loanAmt;
	private String dctBgng;
	private String dctEnd;
	private String lesseeAtchmnflNo;
	private Long roomFloor;
	private Long roomUnit;
	private String lessorAdres;
	private String lessorIhidnum;
	private String lesseeAdres;
	private String lesseeIhidnum;
	private String lessorAtchmnflNo;
	private String lessorPhone;
	private String lessorActno;
	private String dctClsf;
	private String dctAgreYn;
	private String dctDelYn;
	private String dctStts;
	private String lessorUserNo;
	private String lesseeUserNo;
	private String lessorSignPath;
	private String lesseeSignPath;
	
	
	private List<TbAttachFileVO> tbAttachFileList;
}
