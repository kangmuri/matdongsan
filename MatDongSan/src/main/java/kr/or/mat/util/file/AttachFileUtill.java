package kr.or.mat.util.file;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import kr.or.mat.attachFile.vo.TbAttachFileVO;


@Component
public class AttachFileUtill {
	
	@Value("#{appInfo.imagePath}")
	private File directory;
	
	public void init() {
		if(!directory.exists()) {
			directory.mkdir();
		}
	}
	
	public List<TbAttachFileVO> setAttachFile(MultipartFile[] attachFile) throws IllegalStateException, IOException {
		List<TbAttachFileVO> attachFileList = new ArrayList<>();
		
		long cnt = 0;
		for(MultipartFile mf : attachFile) {
			UUID uuid = UUID.randomUUID();
			//vo 생성
			TbAttachFileVO attachFileVo = new TbAttachFileVO();
			
			//파일 순번
			attachFileVo.setAtchmnflSn(++cnt);
			
			//저장파일명
            String storedFileName = uuid.toString();
            attachFileVo.setStreFileNm(storedFileName);
			//파일 크기
			attachFileVo.setFileSize(mf.getSize());
			
			//파일유형
			attachFileVo.setFileType(mf.getContentType());
			
            File saveFile = new File(directory,storedFileName);
            //파일 저장경로 생성
            attachFileVo.setFilePath(saveFile.getAbsolutePath());
            mf.transferTo(saveFile);
            			
			//웹경로 생성
			attachFileVo.setWebPath("/sm/" + storedFileName);
			
			attachFileList.add(attachFileVo);
		}
		return attachFileList;
		
	}
	
}
