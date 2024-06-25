package kr.or.mat.lessee.community.vo;

import javax.validation.constraints.NotBlank;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "boardNo")
public class BoardVO {
	
	@NotBlank
	private String boardNo;
	@NotBlank
	private String boardNm;
	@NotBlank
	private String answerYn;
	@NotBlank
	private String atchmnflYn;
}
