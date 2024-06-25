package kr.or.mat.index.service;

import java.util.List;
import java.util.Map;

import kr.or.mat.rentPayData.vo.RentPayDataVO;

public interface IndexService {
	
	
	/**
	 * 메인 화면 윗부분 통계
	 */
	public Map<String,Object> mainToptotalCount(String userNo);
	
	/**
	 * 차트
	 */
	public List<RentPayDataVO> chart(String userNo);
	/**
	 * 차트
	 */
	public List<RentPayDataVO> chart2(String userNo);
	
}
