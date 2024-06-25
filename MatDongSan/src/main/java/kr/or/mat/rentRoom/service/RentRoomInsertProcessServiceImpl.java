package kr.or.mat.rentRoom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.mat.attachFile.service.TbAttachFileService;
import kr.or.mat.attachFile.vo.TbAttachFileVO;
import kr.or.mat.rentRoom.vo.RentRoomDTO;
import kr.or.mat.rentRoom.vo.RentRoomVO;
import kr.or.mat.room.exception.RoomProcessException;
import kr.or.mat.room.service.RoomDealingService;
import kr.or.mat.room.service.RoomLvlhService;
import kr.or.mat.room.service.RoomService;
import kr.or.mat.room.vo.RoomDealingVO;
import kr.or.mat.room.vo.RoomLvlhVO;
import kr.or.mat.room.vo.RoomVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class RentRoomInsertProcessServiceImpl implements RentRoomInsertProcessService{
	@Autowired
	RentRoomService rentRoomService;
	@Autowired
	RoomLvlhService roomLvlhService;
	@Autowired
	RoomService roomService;
	@Autowired
	TbAttachFileService tbAttachFileService;
	
	@Transactional
	@Override
	public void createRoomProcess(RentRoomDTO roomParamDTO) {
		try {
//			값 꺼내기
			List<TbAttachFileVO> tbAttachFileList = roomParamDTO.getFileArr();
			RoomVO roomVO = roomParamDTO.getRoomVO();
			RentRoomVO rentRoomVO = roomParamDTO.getRentRoomVO();
			List<RoomLvlhVO> roomLvlhList = roomParamDTO.getRoomLvlhList();
			
			
			//첨부파일등록먼저
			tbAttachFileService.createTbAttachFile(tbAttachFileList);
			
			//첨부파일번호 방정보에 세팅
			roomVO.setUnityAtchmnflNo(tbAttachFileList.get(0).getUnityAtchmnflNo());
			
			//방정보 등록
			int cnt = roomService.createRoom(roomVO);
			log.info("createRoom결과:{}",cnt);
			
			//방번호 거래방정보에 세팅
			rentRoomVO.setRoomNo(roomVO.getRoomNo());
			log.info("여기까진 와써?:{}",roomVO.getRoomNo());
			//거래 방정보 등록
			rentRoomService.createRentRoom(rentRoomVO);
			log.info("ㅎㅇ:{}",rentRoomVO);
			
			//시설등록
			for(RoomLvlhVO rlVO : roomLvlhList) {
				rlVO.setRoomNo(roomVO.getRoomNo());
				roomLvlhService.createRoomLvlh(rlVO);
			}
		}catch (Exception e) {
			throw new RoomProcessException("매물등록 실패", e);
		}
	}

}
