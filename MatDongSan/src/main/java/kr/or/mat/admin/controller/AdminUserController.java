package kr.or.mat.admin.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.mat.admin.service.AdminUserService;
import kr.or.mat.admin.vo.AdminUserVO;
import kr.or.mat.paging.AdminPaginationRender;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.paging.PaginationRenderer;
import kr.or.mat.paging.SimpleCondition;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
@Slf4j
@RequiredArgsConstructor
@Controller
public class AdminUserController {
	
	private final AdminUserService service;
	
	@RequestMapping("/adminUser")
	public String adminUserController(
			  Model model
			, @RequestParam(required = false, defaultValue = "1", name = "currentPage") int currentPage
			, @ModelAttribute("condition") SimpleCondition simplecondition
	)	{
		PaginationInfo paging = new PaginationInfo(10, 5);
		paging.setCurrentPage(currentPage);
		paging.setSimpleCondition(simplecondition);
		
		List<AdminUserVO> userList = service.retrieveAdminUserList(paging);
		log.info("DB를 거쳐온 vo=>{}",userList);
		
		PaginationRenderer render = new AdminPaginationRender();
		
		model.addAttribute("simplecondition", simplecondition);
		model.addAttribute("userList", userList);
		model.addAttribute("pagingHTML", render.renderPagination(paging, null));
		
		return "mds/admin/adminUser";
	} 
	
	@GetMapping("adminUser/{userNo}")
	public String retrieveAdminUserDetail(
			Model model 
			,@PathVariable("userNo") String userNo
	) {
		log.info("넘어온 userNo값==>{}",userNo);
		
		AdminUserVO userVO = service.retrieveAdminUser(userNo);
		model.addAttribute("userVO", userVO);
		log.info("DB에서 받아온 userVO값==>{}",userVO);
		
		return "mds/admin/adminUserProfile";
	}
	@ResponseBody
	@PostMapping("adminUser/delete")
	public String removeAdminUser(
			@RequestBody AdminUserVO userVO
	) {
		log.info("넘어온 userNo값==>{}",userVO.getUserNo());
		
		int cnt = service.removeAdminUser(userVO.getUserNo());
		if(cnt > 0) {
			return "ok";
		}
		return "fail";
	}
	
}
