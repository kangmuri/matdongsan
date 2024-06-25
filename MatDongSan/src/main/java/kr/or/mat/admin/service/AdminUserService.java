package kr.or.mat.admin.service;

import java.util.List;

import kr.or.mat.admin.vo.AdminUserVO;
import kr.or.mat.paging.PaginationInfo;

public interface AdminUserService {
	
	/**
	 * 회원 전체 리스트를 조회
	 * @param paging
	 * @return
	 */
	public List<AdminUserVO> retrieveAdminUserList(PaginationInfo paging);
	
	/**
	 * 해당 회원의 상세 정보를 조회
	 * @param userNo
	 * @return
	 */
	public AdminUserVO retrieveAdminUser(String userNo);
	
	/**
	 * 해당 회원 정보를 삭제하는 메소드
	 * @return
	 */
	public int removeAdminUser(String userNo);

}
