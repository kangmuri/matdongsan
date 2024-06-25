package kr.or.mat.lessee.rdReview.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("lessee/rdReview")
@Controller
public class RdReviewController {
	
	@GetMapping
	public String rdReview() {
		return "mdshub/lessee/rdReview";
	}
	
}
