package kr.or.mat.lessee.community.vo;

import javax.validation.constraints.NotBlank;

import kr.or.mat.rentNotice.vo.UserVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "cmntNo")
public class CommentsVO {
	@NotBlank
	private String cmntNo;
	@NotBlank
	private String cmntWrtDt;
	@NotBlank
	private String cmntCn;
	private String cmntUpddeDt;
	private String cmntDelDt;
	@NotBlank
	private String cmntDelYn;
	@NotBlank
	private String pstNo;
	@NotBlank
	private String userNoCmnt;
	
	private UserVO user;
}
