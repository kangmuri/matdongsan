
package kr.or.mat.rentRoom.vo;

import java.util.List;

import javax.validation.constraints.NotBlank;

import kr.or.mat.rentBuilding.vo.RentBldgVO;
import kr.or.mat.rentContract.vo.RentContractVO;
import kr.or.mat.room.vo.RoomVO;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(of="rentRoomNo")
public class RentRoomVO {
	@NotBlank
	private String rentRoomNo;
	@NotBlank
	private String rentRoomDe;
	@NotBlank
	private String roomDelYn;
	@NotBlank
	private String userNo;
	@NotBlank
	private String rentBldgNo;
	private String roomNo;
	private String roomUngrYn;
	private int roomCnt;
	private String livingType;
	private String gonsil;
	
	//has a
	private RoomVO room;
	private RentBldgVO rentBldg;
	
	//has many
	private List<RentContractVO> rentContractList;
	
	//메인화면 건물 1개당 방개수
	private int totalRooms;
	//메인화면 방1개당 	계약 여부 카운트
	private int roomsWithContract;
	//공실률 퍼센트
	private double percentage;
	//공실 경과일
	private int sinceEnd;
	//호실 개수
}
