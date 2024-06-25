package kr.or.mat.paging;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class MypagePaginationRender implements PaginationRenderer{

	@Override
	public String renderPagination(PaginationInfo pagingVO, String funcName) {
		log.info("랜더러로 들어온 페이지값==>{}",pagingVO);
		// 모든 a 태그에 data-page 속성이 있음에 주의할 것.
//		String previousPtrn ="<li class='page-item %1$s'><a class='page-link paging' href='javascript:;' %2$s data-page='%3$d' onclick='return false;'>Previous</a></li>";
		String previousPtrn ="<li class='page-item %1$s'><a href='javascript:;' %2$s data-page='%3$d' onclick='return false;'><i class='lni lni-chevron-left'></i></a></li>";
//		String nextPtrn =    "<li class='page-item %1$s'><a class='page-link paging' href='javascript:;' %2$s data-page='%3$d' onclick='return false'>Next</a></li>";
		String nextPtrn =    "<li class='page-item %1$s'><a href='javascript:;' %2$s data-page='%3$d' onclick='return false'><i class='lni lni-chevron-right'></i></a></li>";
		
//		String pagePtrn = "<li class='page-item'><a class='page-link paging' href='javascript:;' data-page='%1$d' onclick='return false;'>%1$d</a></li>";
		String pagePtrn = "<li class='page-item'><a href='javascript:;' data-page='%1$d' onclick='return false;'>%1$d</a></li>";
//		String currentPtrn ="<li class='page-item active' aria-current='page'><a class='page-link paging' href='javascript:;'>%d</a></li>";
		String currentPtrn ="<li class='active' aria-current='page'><a href='javascript:;'>%d</a></li>";
		
		int totalPage = pagingVO.getTotalPage();
		int firstPage = pagingVO.getFirstPage();
		int lastPage = pagingVO.getLastPage();
		
		log.info("랜더러로 들어온 totalPage==>{}",totalPage);
		log.info("랜더러로 들어온 firstPage==>{}",firstPage);
		log.info("랜더러로 들어온 lastPage==>{}",lastPage);
		
		lastPage = lastPage > totalPage ? totalPage : lastPage;
		int currentPage = pagingVO.getCurrentPage();
		
		StringBuffer html = new StringBuffer();
		html.append("<div class='pagination left'>");
		html.append("<ul class='pagination-list'>");
		
		boolean disabled =  firstPage <= 1;
		html.append(
			String.format(previousPtrn
						, disabled?"disabled":"" 
						, disabled?"":"href='javascript:;'"
						, disabled?1:firstPage-1
					)	
		);
		
		for(int page=firstPage; page<=lastPage; page++) {
			if(page==currentPage) {
				html.append(
					String.format(currentPtrn, page)
				);
			}else {
				html.append(
					String.format(pagePtrn, page)
				);
			}
		}
		
		disabled = lastPage >= totalPage;
		html.append(
			String.format(nextPtrn
					, disabled?"disabled":""
					, disabled?"":"href='javascript:;'"
					, disabled?totalPage:lastPage+1
			)	
		);
		
		
		html.append("</ul>");
		html.append("</div>");
//		log.info("나가기전 html값==>{}",html);
		return html.toString();
	}
}
