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
@RequestMapping("/lessee")
public class ScheduleController {
	
	private final ScheduleService service;
	
	
	@GetMapping("schedule")
	public String retriveSchedulee(){
		return "mdshub/lessee/schedule";
	}
	
	@GetMapping("schedule/{userId}")
	public List<ScheduleVO> retrieveScheduleLise(@PathVariable String userId) {
		log.info("흐흐흐{}",service.retriveScheduleList(userId));
		return service.retriveScheduleList(userId);
	}
	

	@PostMapping
	public String createSchedule() {
		return "";
	}
}

