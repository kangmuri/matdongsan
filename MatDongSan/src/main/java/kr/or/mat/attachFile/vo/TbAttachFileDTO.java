package kr.or.mat.attachFile.vo;

import java.io.File;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.multipart.MultipartFile;

import kr.or.mat.util.file.AttachFileUtill;
import lombok.Getter;
import lombok.extern.slf4j.Slf4j;

@Slf4j

@Getter
public class TbAttachFileDTO implements Serializable{
	
	@Autowired
	private AttachFileUtill attachFileUtill;
	
	private List<MultipartFile> attachFile;	
	
	
	public List<TbAttachFileVO> setAttachFile(MultipartFile[] attachFile) throws IllegalStateException, IOException {
		return attachFileUtill.setAttachFile(attachFile);
	}
	
	
}
