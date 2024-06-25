package kr.or.mat.lessee.payData.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.lessee.payData.vo.PayDataVO;
import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.rentNotice.vo.RentNoticeVO;
import lombok.extern.slf4j.Slf4j;

@Mapper
public interface PayDataMapper {
	
	public PayDataVO selectPayData(String payNo);
	
	public int selectTotalRecord(PaginationInfo paging);// 얘랑 페이징 처리하려는 애는 무조건 세트
	public List<PayDataVO> selectPayDataList(PaginationInfo paging);
	/**
	 * 임차인이 임대하고 있는 건물의 번호와 이름 조회
	 * @param lesseeNo
	 * @return
	 */
	public List<PayDataVO> selectRentBldgList(String lesseeNo);
	
}
