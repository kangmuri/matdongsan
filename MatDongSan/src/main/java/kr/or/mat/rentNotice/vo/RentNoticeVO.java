package kr.or.mat.rentNotice.vo;

import java.util.List;
import java.util.Set;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

import kr.or.mat.attachFile.vo.TbAttachFileVO;
import kr.or.mat.rentBuilding.vo.RentBldgVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = {"noticeNo","rentBldgNo"})
public class RentNoticeVO {
	private int rnum;
	@NotNull
	private String noticeNo;
	@NotNull
	private String rentBldgNo;
	@NotBlank
	private String noticeSj;
	@NotBlank
	private String noticeCn;
	@NotBlank
	private String noticeDt;
	private String noticeUpddeDt;
	private String noticeDelDt;
	@NotBlank
	private String noticeDelYn;
	@NotNull
	private String userNo;
	
	private UserVO users;
	private RentBldgLesseeVO bldgs;
	private String unityAtchmnflNo;
	
	private RentBldgVO rentBldg;
	private List<TbAttachFileVO> attachFileList;
	private MultipartFile[] uploadFiles;
	private int noticeCnt;
	int knum; //paging
}
