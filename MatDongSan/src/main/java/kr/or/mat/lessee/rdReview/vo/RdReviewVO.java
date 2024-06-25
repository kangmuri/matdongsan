package kr.or.mat.lessee.rdReview.vo;

import java.util.Set;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "rdRevNo")
public class RdReviewVO {
	@NotNull
	private Long rdRevNo;
	@NotBlank
	private String rdRevSj;
	@NotBlank
	private String rdRevCn;
	@NotBlank
	private String rdRevDt;
	private String revUpddeDt;
	@NotNull
	private Long rdRevScr;
	private String unityAtchmnflNo;
	@NotBlank
	private String rdDelYn;
	@NotNull
	private Long lesseeNo;
	private Long rentRoomNo;
}
