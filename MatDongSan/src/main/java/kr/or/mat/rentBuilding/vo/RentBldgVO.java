package kr.or.mat.rentBuilding.vo;

import java.util.List;

import kr.or.mat.rentRoom.vo.RentRoomVO;
import lombok.Data;

@Data
public class RentBldgVO {
	private String rentBldgNo;
	private String bldgDe;
	private String bldgNm;
	private String bldgAddr;
	private long bldgHomeCnt;
	private String bldgDong;
	private String bldgDelYn;
	private String userNo;
	private String bldgSe;
	private String region1depthNm;
	private String region2depthNm;
	private String region3depthNm;
	
	private long bldgAllCnt;
	
	private String subsNm;
	int roomCount; //방 개수
	
	private List<RentRoomVO> rentRoomList;
	/* 건물 리스트 조회시 건물이름 옆에 동그라미 안에 2글자 표시 */
	public void setBldgNm(String bldgNm) {
		this.bldgNm = bldgNm;
		
		if(bldgNm.length() > 2) {
			this.subsNm = bldgNm.substring(0, 2);
		}else {
			this.subsNm = bldgNm;
		}
	}
}
