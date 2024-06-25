package kr.or.mat.rentNotice.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.paging.PaginationInfo;
import kr.or.mat.rentNotice.vo.RentNoticeVO;

@Mapper
public interface RentNoticeMapper {
	
	public int selectTotalRecord(PaginationInfo paging);
	
	public List<RentNoticeVO> selectListRentNotice(PaginationInfo paging);
	
	/**
	 * 공지사항 상세조회
	 * @param notice
	 * @return
	 */
	public RentNoticeVO selectRentNotice(RentNoticeVO notice);
	
	/**
	 * 임차인이 임대하고 있는 건물의 번호와 이름 조회
	 * @param lesseeNo
	 * @return
	 */
	public List<RentNoticeVO> selectRentBldgList(String lesseeNo);
}
