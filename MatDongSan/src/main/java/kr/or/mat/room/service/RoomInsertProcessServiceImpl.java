package kr.or.mat.room.service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.mat.attachFile.mapper.TbAttachFileMapper;
import kr.or.mat.attachFile.service.TbAttachFileService;
import kr.or.mat.attachFile.vo.TbAttachFileVO;
import kr.or.mat.room.exception.RoomProcessException;
import kr.or.mat.room.vo.RoomDealingVO;
import kr.or.mat.room.vo.RoomLvlhVO;
import kr.or.mat.room.vo.RoomParamDTO;
import kr.or.mat.room.vo.RoomVO;

/**
 * 
 * @author Seongmin Park
 *  작성내용 : 매물등록 프로세스 로직
 *  작성일 : 2024.05.18
 *  수정일 : 2024.05.19
 */
@Service
public class RoomInsertProcessServiceImpl implements RoomInsertProcessService {
	
	@Autowired
	RoomDealingService roomDealingService;
	@Autowired
	RoomLvlhService roomLvlhService;
	@Autowired
	RoomService roomService;
	@Autowired
	TbAttachFileService tbAttachFileService;
	
	@Transactional
	@Override
	public void createRoomProcess(RoomParamDTO roomParamDTO) {
		try {
			//값 꺼내기
			List<TbAttachFileVO> tbAttachFileList = roomParamDTO.getFileArr();
			RoomVO roomVO = roomParamDTO.getRoomVO();
			RoomDealingVO roomDealingVO = roomParamDTO.getRoomDealingVO();
			List<RoomLvlhVO> roomLvlhList = roomParamDTO.getRoomLvlhList();
			
			
			//첨부파일등록먼저
			tbAttachFileService.createTbAttachFile(tbAttachFileList);
			
			//첨부파일번호 방정보에 세팅
			roomVO.setUnityAtchmnflNo(tbAttachFileList.get(0).getUnityAtchmnflNo());
			
			//방정보 등록
			roomService.createRoom(roomVO);
			
			//방번호 거래방정보에 세팅
			roomDealingVO.setRoomNo(roomVO.getRoomNo());
			
			//거래 방정보 등록
			roomDealingService.createRoomDealing(roomDealingVO);
			
			//시설등록
			for(RoomLvlhVO rlVO : roomLvlhList) {
				rlVO.setRoomNo(roomVO.getRoomNo());
				roomLvlhService.createRoomLvlh(rlVO);
			}
		}catch (Exception e) {
			throw new RoomProcessException("매물등록 실패", e);
		}
	}

	@Override
	@Transactional
	public void modifyRoomProcess(RoomParamDTO roomParamDTO) {
		try {
			//값 받아오기
			List<TbAttachFileVO> tbAttachFileList = setFileList(roomParamDTO);
			RoomVO roomVO = roomParamDTO.getRoomVO();
			RoomDealingVO roomDealingVO = roomParamDTO.getRoomDealingVO();
			List<RoomLvlhVO> roomLvlhList = roomParamDTO.getRoomLvlhList();
			
			if(tbAttachFileList != null) {
				//첨부파일등록먼저
				tbAttachFileService.createTbAttachFile(tbAttachFileList);
				// 원래 파일 테이블 삭제
		        tbAttachFileService.deleteAttatch(roomVO.getUnityAtchmnflNo());
				//첨부파일번호 방정보에 세팅
				roomVO.setUnityAtchmnflNo(tbAttachFileList.get(0).getUnityAtchmnflNo());
			}else {
				// 원래 파일 테이블 삭제
		        tbAttachFileService.deleteAttatch(roomVO.getUnityAtchmnflNo());
				//첨부파일번호 방정보에 세팅
				roomVO.setUnityAtchmnflNo(null);
				
			}
			
			
			//방정보 등록
			roomService.modifyRoom(roomVO);
			
			//방번호 거래방정보에 세팅
			roomDealingVO.setRoomNo(roomVO.getRoomNo());
			
			//거래 방 정보 업데이트
			roomDealingService.modifyRoomDealing(roomDealingVO);
			
			//시설정보 삭제
			roomLvlhService.removeRoomLvlh(roomVO.getRoomNo());
			
			//시설등록
			for(RoomLvlhVO rlVO : roomLvlhList) {
				rlVO.setRoomNo(roomVO.getRoomNo());
				roomLvlhService.createRoomLvlh(rlVO);
			}
			

			
			
		}catch (Exception e) {
			throw new RoomProcessException("매물수정 실패", e);
		}
		
	}

	@Override
	public List<TbAttachFileVO> setFileList(RoomParamDTO roomParamDTO) {
		// 값 꺼내기
	    List<TbAttachFileVO> tbAttachFileList = roomParamDTO.getFileArr();
	    List<TbAttachFileVO> oldFileList = roomParamDTO.getOldFileList();
	    String userNo = roomParamDTO.getUserNo();
	    long squence = 0;
	    
	    // null 체크 및 초기화
	    if (tbAttachFileList == null) {
	        tbAttachFileList = new ArrayList<>();
	    }
	    if (oldFileList == null) {
	        oldFileList = new ArrayList<>();
	    }
	    
	    // 파일 목록이 모두 비어있으면 빈 리스트 반환
	    if (oldFileList.isEmpty() && tbAttachFileList.isEmpty()) {
	        return null;
	    }
	    
	    List<TbAttachFileVO> newFileList = new ArrayList<>();

	    if (!oldFileList.isEmpty()) {
	        // 파일 가져와서 있는 것만 비교해서 정보 가져오기
	        newFileList = tbAttachFileService.retrieveTbAttachFileList(oldFileList.get(0));
	        
	        newFileList = newFileList.stream().filter(oldFileList::contains).collect(Collectors.toList());
	        
	       
	        
	        // 배열 합치기
	        newFileList.addAll(tbAttachFileList);
	        
	        
	        for (TbAttachFileVO file : newFileList) {
	            file.setUnityAtchmnflNo(null);
	            file.setAtchmnflSn(++squence);
	            file.setRegUserId(userNo);
	        }
	        
	        return newFileList;
	    } else {
	    	
	        // oldFileList가 비어 있고 tbAttachFileList가 비어 있지 않으면
	        return tbAttachFileList;
	    }
	}

}
