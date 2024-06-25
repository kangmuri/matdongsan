package kr.or.mat.attachFile.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.or.mat.attachFile.vo.TbAttachFileDTO;
import kr.or.mat.attachFile.vo.TbAttachFileVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/api")
public class TbAttachFileController {
	@Autowired
	TbAttachFileDTO tbAttachFileDTO;
	
	@PostMapping(value = "img")
	@ResponseBody
	public List<TbAttachFileVO> createImgFile(@RequestPart("attachFile") MultipartFile[] attachFile) throws IllegalStateException, IOException {
		log.info("tb {}",attachFile);
		List<TbAttachFileVO> attachFileList = tbAttachFileDTO.setAttachFile(attachFile);
		return attachFileList;
	}
	
	
}