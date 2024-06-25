package kr.or.mat.admin.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.mat.admin.vo.AdminUserVO;
import kr.or.mat.paging.PaginationInfo;

/**
 *  파일명 : AdminQnaMapper.java
 *  설 명 : 관리자 1:1 문의를 위한 클래스
 *  작성자 : 한요한
 *  작성일 : 2024. 05. 26
 *  최종 수정일 : 2024. 05. 28
 */

@Mapper
public interface AdminUserMapper {
	
	/**
	 * 회원 전체 리스트를 조회
	 * @param paging
	 * @return
	 */
	public List<AdminUserVO> selectAdminUserList(PaginationInfo paging);
	
	/**
	 * 해당 회원의 상세 정보를 조회
	 * @param userNo
	 * @return
	 */
	public AdminUserVO selectAdminUser(String userNo);
	
	/**
	 * 해당 회원의 상세 정보를 조회(프로필 이미지 없을때)
	 * @param userNo
	 * @return
	 */
	public AdminUserVO selectAdminUser2(String userNo);
	
	/**
	 * 해당 회원 정보를 삭제하는 메소드
	 * @return
	 */
	public int deleteAdminUser(String userNo);
	
	/**
	 * 회원 전체 페이지 정보 가져오기
	 * @return 
	 */
	public int selectTotalRecord(PaginationInfo paging);
	
	
}
