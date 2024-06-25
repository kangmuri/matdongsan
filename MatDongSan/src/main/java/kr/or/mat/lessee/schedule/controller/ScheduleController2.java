package kr.or.mat.lessee.schedule.controller;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.mat.lessee.schedule.service.ScheduleService;
import kr.or.mat.lessee.schedule.vo.ScheduleVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequiredArgsConstructor
@RequestMapping("/lessor")
public class ScheduleController2 {
	
	private final ScheduleService service;
	
	@GetMapping("schedulee")
	public String retriveSchedulee(){
		return "mdshub/lessor/schedule2";
	}
	
	@GetMapping("schedulee/{userId}")
	public List<ScheduleVO> retrieveScheduleList(@PathVariable String userId) {
		return service.retriveScheduleLessorList(userId);
	}
	

}

