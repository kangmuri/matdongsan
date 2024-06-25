package kr.or.mat.contract.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.server.ResponseStatusException;

import kr.or.mat.attachFile.service.TbAttachFileService;
import kr.or.mat.contract.service.ContractService;
import kr.or.mat.contract.vo.CntrctDealingVO;
import kr.or.mat.login.vo.UserVOWrapper;
import kr.or.mat.mypage.vo.MyProfileVO;
import kr.or.mat.room.service.RoomDealingService;
import kr.or.mat.room.vo.RoomDealingVO;
import lombok.extern.slf4j.Slf4j;
import oracle.jdbc.proxy.annotation.Post;

@Slf4j
@Controller
@RequestMapping("/contract")
public class ContractController {
	
	@Autowired
	private RoomDealingService roomDealingService;
	@Autowired
	private ContractService contractService;
	@Autowired
	private TbAttachFileService tbAttachFileService;
	
	//문서 다운로드 화면 보내기
	@GetMapping("loadDoc/{delngCntrctNo}")
	public String loadCntrDoc() {
		return "mds/contract/contractDoc";
	}
	
	//임차인 계약 화면
	@GetMapping("lessee/{delngCntrctNo}")
	public String lesseeContract(@PathVariable String delngCntrctNo, Authentication authentication) {
		return "mds/contract/contractForm";
	}
	//임차인 계약 등록
	@PostMapping("lessee/{delngCntrctNo}")
	@ResponseBody
	public Map<String, String> lesseeContractModify(@RequestBody CntrctDealingVO cntrctDealingVO, Authentication authentication) {
		
		log.info("cntrctDealingVO ====> {}", cntrctDealingVO);
		
		UserVOWrapper userVOWrapper = (UserVOWrapper) authentication.getPrincipal();
		cntrctDealingVO.setLesseeUserNo(userVOWrapper.getRealUser().getUserNo());
		cntrctDealingVO.getTbAttachFileList().get(0).setRegUserId(userVOWrapper.getRealUser().getUserNo());
		Map<String, String> result = new HashMap<String, String>();
		//파일 등록
		tbAttachFileService.createTbAttachFile(cntrctDealingVO.getTbAttachFileList());

		String filePk = cntrctDealingVO.getTbAttachFileList().get(0).getUnityAtchmnflNo();
		cntrctDealingVO.setLesseeAtchmnflNo(filePk);
		//계약서 등록
		int cnt = contractService.updateContractDealing(cntrctDealingVO);
		if(cnt > 0) {
			result.put("success", "success");
			String roomDelngNo = cntrctDealingVO.getRoomDelngNo();
			
		}
		else {
			result.put("success", "fail");
		}
		return result;
	}
	
	//임대인 계약 수정 또는 확인 화면
	@GetMapping("lessor/{delngCntrctNo}")
	public String lessorContract(@PathVariable String delngCntrctNo, Authentication authentication) {
		
		return "mds/contract/lessorUpdateForm";
	}
	
	//임대인 계약 수정 또는 확인 화면
	@PostMapping("lessor/{delngCntrctNo}")
	@ResponseBody
	public Map<String, String> lessorModifyContract(@RequestBody CntrctDealingVO cntrctDealingVO, Authentication authentication) {
		log.info("cntrVO ==> {}", cntrctDealingVO);
		Map<String, String> result = new HashMap<String, String>();
		UserVOWrapper userVOWrapper = (UserVOWrapper) authentication.getPrincipal();
		
		if(!userVOWrapper.getRealUser().getUserNo().equals(cntrctDealingVO.getLessorUserNo())) {
			result.put("success", "fail");
			return result;
		}
		
		if(cntrctDealingVO.getTbAttachFileList() != null && !cntrctDealingVO.getTbAttachFileList().isEmpty()&& cntrctDealingVO.getTbAttachFileList().get(0) != null) {
			//파일 삭제
			tbAttachFileService.deleteAttatch(cntrctDealingVO.getLessorAtchmnflNo());
			
			//파일 신규 등록
			cntrctDealingVO.getTbAttachFileList().get(0).setRegUserId(userVOWrapper.getRealUser().getUserNo());
			tbAttachFileService.createTbAttachFile(cntrctDealingVO.getTbAttachFileList());
			String filePk = cntrctDealingVO.getTbAttachFileList().get(0).getUnityAtchmnflNo();
			cntrctDealingVO.setLessorAtchmnflNo(filePk);
	
		}
		int cnt = contractService.updateLessorContractDealing(cntrctDealingVO);
		
		if(cnt > 0) {
			result.put("success", "success");
		}else {
			result.put("success", "fail");
		}
		return result;
	}
	
	/**
	 * 임대인 계약서 작성 화면
	 * @param roomDelngNo
	 * @param model
	 * @return
	 */
	@GetMapping("create/{roomDelngNo}")
	public String createContractView(@PathVariable String roomDelngNo, Model model) {
		
		RoomDealingVO roomDealing = roomDealingService.retrieveDetailRoom(roomDelngNo);		
		
		if(roomDealing == null) {
			throw new ResponseStatusException(HttpStatus.NOT_FOUND, "잘못된 요청입니다.");
		}
		model.addAttribute("room", roomDealing);
		log.info("model ===> {}", model);
		return "mds/contract/createContractForm";
	}
	
	/**
	 * 임대인 계약서 작성 완료
	 */
	@PostMapping("create/{roomDelngNo}")
	@ResponseBody
	public Map<String, String> createContract(@RequestBody CntrctDealingVO cntrctDealingVO, Authentication authentication) {
		log.info("cntrctDealingVO ====> {}", cntrctDealingVO);
		UserVOWrapper userVOWrapper = (UserVOWrapper) authentication.getPrincipal();
		cntrctDealingVO.setLessorUserNo(userVOWrapper.getRealUser().getUserNo());
		cntrctDealingVO.getTbAttachFileList().get(0).setRegUserId(userVOWrapper.getRealUser().getUserNo());
		Map<String, String> result = new HashMap<String, String>();
		//파일 등록
		tbAttachFileService.createTbAttachFile(cntrctDealingVO.getTbAttachFileList());

		String filePk = cntrctDealingVO.getTbAttachFileList().get(0).getUnityAtchmnflNo();
		cntrctDealingVO.setLessorAtchmnflNo(filePk);
		//계약서 등록
		int cnt = contractService.createContractDealing(cntrctDealingVO);
		if(cnt > 0) {
			result.put("success", "success");
			String roomDelngNo = cntrctDealingVO.getRoomDelngNo();
			
		}
		else {
			result.put("success", "fail");
		}
		return result;
	}
	
	/**
	 * 피계약자 찾기
	 * @param userId
	 * @return
	 */
	@GetMapping("/user/{userId}")
	public MyProfileVO retreieveUser(@PathVariable String userId) {
		log.info("======================> {}", userId);
		
		MyProfileVO myProfileVO = new MyProfileVO();
		myProfileVO.setUserId(userId);
		
		return contractService.retrieveUser(myProfileVO);
		
	}
	
	/**
	 * 피계약자 찾기
	 * @param userNo
	 * @return
	 */
	@GetMapping("/user")
	public MyProfileVO retreieveUserByUserNo(@RequestParam String userNo) {
		log.info("======================> {}", userNo);
		
		MyProfileVO myProfileVO = new MyProfileVO();
		myProfileVO.setUserNo(userNo);
		
		return contractService.retrieveUser(myProfileVO);
		
	}
	
	/**
	 * 계약 정보 가져오기
	 */
	@GetMapping("cntrInfo/{delngCntrctNo}")
	public CntrctDealingVO retrieveCntrInfo(@PathVariable String delngCntrctNo) {

		CntrctDealingVO cntrctDealingVO = new CntrctDealingVO();
		cntrctDealingVO.setDelngCntrctNo(delngCntrctNo);
		CntrctDealingVO result = new CntrctDealingVO();
		result = contractService.retrieveCntrctDealing(cntrctDealingVO);
		
		log.info("vo ===> {}", result);
		return result;
	}
	
}