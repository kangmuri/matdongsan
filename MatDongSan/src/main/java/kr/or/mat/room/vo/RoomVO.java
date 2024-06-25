package kr.or.mat.room.vo;

import java.io.Serializable;
import java.util.List;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import kr.or.mat.attachFile.vo.TbAttachFileVO;
import kr.or.mat.rentNotice.vo.UserVO;
import kr.or.mat.rentRoom.vo.RentRoomVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "roomNo")
public class RoomVO implements Serializable{
	@NotBlank
	private String roomNo;
	private String bldgAddr;
	private String region1depthNm;
	private String region2depthNm;
	private String region3depthNm;
	private String bun;
	private String ji;
	
	@JsonProperty("bCode")
    private String bCode;
    @JsonProperty("hCode")
    private String hCode;
	
	private Double x;
	private Double y;
	
	private Long floorCnt;
	private Long rentDong;
//	@NotNull
	private Long roomFloor;
	private Long roomUnit;
	private Long roomBtrCnt;
//	@NotNull
	private String dctLadLndcgr;
	private Long dctLadAr;
	private Long buldAr;
	private String buldPrpos;
	private String buldMprpos;
	private Long rentAr;
//	@NotBlank
	private String roomTy;
//	@NotBlank
	private String roomParkngYn;
//	@NotBlank
	private String roomElvtrYn;
	@NotBlank
	private String unityAtchmnflNo;
	@NotBlank
	private String userNo;
	
	
	
	//has many
	private List<TbAttachFileVO> tbAttachFileList;
	private List<RoomLvlhVO> roomLvlhList;
	private List<RoomDealingVO> roomDealingList;
	private List<RentRoomVO> rentRoomList;
	private UserVO userVO;
	
	
}
