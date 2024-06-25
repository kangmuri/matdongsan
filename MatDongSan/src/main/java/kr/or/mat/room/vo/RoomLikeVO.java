package kr.or.mat.room.vo;

import java.util.List;

import kr.or.mat.rentNotice.vo.UserVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of = "roomLikeNo")
public class RoomLikeVO {
	private String roomLikeNo;
	private String roomLikeDt;
	private String userNo;
	private String roomDelngNo;
	
	
	private List<UserVO> userList;
	private RoomDealingVO roomDealingVO;
}
