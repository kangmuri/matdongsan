package kr.or.mat.mypage.vo;

import lombok.Data;

@Data
public class OfficeVO {
	private String userNo;      // 사용자 번호
	private String ofcNm;       // 사무소 상호
	private String ofcRegistNo; // 중개 등록번호
	private String ofcBizrno;   // 사업자 등록번호
	private String ofcAdres;    // 사무소 기본주소
	private String ofcDadres;   // 사무소 상세주소
	private String ofcTelno;    // 사무소 전화번호
	private String ofcRprsntvNm;// 사무소 대표자명
	private String ofcPicNm;    // 사무소 담당자명
	private String ofcDelYn;    // 사무소 등록 여부
}