package kr.or.mat.lessee.community.vo;

import java.util.List;

import javax.validation.constraints.NotBlank;

import org.springframework.web.multipart.MultipartFile;

import kr.or.mat.attachFile.vo.TbAttachFileVO;
import kr.or.mat.rentNotice.vo.UserVO;
import kr.or.mat.util.file.AttachFileUtill;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "pstNo")
public class CommunityVO {
	private int rnum;
	
	private String boardDong;
	@NotBlank
	private String pstNo;
	@NotBlank
	private String pstSj;
	@NotBlank
	private String pstCn;
	private Long pstRdcnt;
	@NotBlank
	private String pstWrtDe;
	private String pstUpddeDt;
	private String pstDelDt;
	@NotBlank
	private String pstMngrYn;
	@NotBlank
	private String pstOthbcYn;
	@NotBlank
	private String pstDelYn;
	private String unityAtchmnflNo;
	@NotBlank
	private String boardNo;
	@NotBlank
	private String userNo;
	
	private UserVO users;
	private BoardVO board;
	private List<CommentsVO> commentList;
	private List<PostingReportVO> postingReportList;
	private List<TbAttachFileVO> attachFileList;
	private MultipartFile[] uploadFiles;
	
}
