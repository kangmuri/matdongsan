package kr.or.mat.attachFile.vo;

import java.io.Serializable;
import java.util.Objects;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = {"unityAtchmnflNo","atchmnflSn"})
public class TbAttachFileVO implements Serializable{
	private String unityAtchmnflNo;
	private Long atchmnflSn;
	private String filePath;
	private String webPath;
	private String streFileNm;
	private Long fileSize;
	private String fileType;
	private String regDt;
	private String regUserId;
	private String updDt;
	private String updUserId;
	
   
}
