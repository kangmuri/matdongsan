package kr.or.mat.util.cmmnCode.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import kr.or.mat.util.cmmnCode.service.CmmnCodeService;
import kr.or.mat.util.cmmnCode.vo.CmmnCodeVO;
import lombok.extern.slf4j.Slf4j;

/**
 *  파일명 : CmmnCodeController.java
 *  설 명 : 공통코드 Controller
 *  작성자 : 이성경
 *  작성일 : 2024. 05. 19
 *  최종 수정일 : 2024. 05. 19
 *  
 *  24.05.25 Tip
 *  다른 컨트롤러에서 해당 Controller를 주입받은 뒤에 서비스로 필요한 공통코드 불러오기
 *  (이렇게 하려면 파라미터 받을 수 있게 수정해야함)
 */

@Slf4j
@RestController
public class CmmnCodeController {
	@Autowired
	private CmmnCodeService service;
	
	@GetMapping("/cmmnCode")
	public List<CmmnCodeVO> retrieveCmmnCode() {
		List<CmmnCodeVO> cmmnCodeList = service.retrieveCmmnCodeList();
		log.info("cmmnCodeList : {}", cmmnCodeList);
		return cmmnCodeList;
	}
}
