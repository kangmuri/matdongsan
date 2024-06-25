package kr.or.mat.room.service;

import java.util.List;

import kr.or.mat.attachFile.vo.TbAttachFileVO;
import kr.or.mat.room.vo.RoomParamDTO;

public interface RoomInsertProcessService {
	
	/**
	 * 매물 등록
	 * @param roomParamDTO
	 */
	public void createRoomProcess(RoomParamDTO roomParamDTO);
	
	/**
	 * 매물 수정
	 * @param roomParamDTO
	 */
	public void modifyRoomProcess(RoomParamDTO roomParamDTO);
	
	/**
	 * 파일 수정시 파일목록 합치기
	 */
	public List<TbAttachFileVO> setFileList(RoomParamDTO roomParamDTO);
}
