package kr.or.mat.index;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.mat.index.service.IndexService;
import kr.or.mat.login.vo.AuthUserVO;
import kr.or.mat.login.vo.UserVOWrapper;
import kr.or.mat.rentPayData.vo.RentPayDataVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/hubMain")
public class HubIndexController {

	@Autowired
	IndexService service;
	
	@GetMapping
	public String index(Authentication authentication, Model model){
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		String userNo = vo.getUserNo();
		Map<String,Object> mainMap = service.mainToptotalCount(userNo);
		model.addAttribute("mainMap", mainMap);
		return "mdshub/index";
	}
	
	@ResponseBody
	@GetMapping("/chart")
	public List<RentPayDataVO> chartData(Authentication authentication){
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		String userNo = vo.getUserNo();
		List<RentPayDataVO> payList = service.chart(userNo);
		log.info("차틍 :{}",payList);
		return payList;
	}
	@ResponseBody
	@GetMapping("/chart2")
	public List<RentPayDataVO> chartData2(Authentication authentication){
		UserVOWrapper wrapper = (UserVOWrapper) authentication.getPrincipal();
		AuthUserVO vo = wrapper.getRealUser();
		String userNo = vo.getUserNo();
		List<RentPayDataVO> payList2 = service.chart2(userNo);
		log.info("차틍2 :{}",payList2);
		return payList2;
	}
	
	
}
