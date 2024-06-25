package kr.or.mat.paging;

public class AdminPaginationRender implements PaginationRenderer{

	@Override
	public String renderPagination(PaginationInfo pagingVO, String funcName) {
//		log.info("랜더러로 들어온 페이지값==>{}",pagingVO);
		// 모든 a 태그에 data-page 속성이 있음에 주의할 것.
		
//		String previousPtrn ="<li class='datatable-pagination-list-item %1$s'><a class='page-link paging' href='javascript:;' %2$s data-page='%3$d' onclick='return false;'><</a></li>";
		String previousPtrn ="<li class='datatable-pagination-list-item %1$s'>"
							+ "<button class='datatable-pagination-list-item-link' %2$s data-page='%3$d'>‹</button>"
							+ "</li>";
		
//		String nextPtrn = "<li class='datatable-pagination-list-item %1$s'><a class='page-link paging' href='javascript:;' %2$s data-page='%3$d' onclick='return false'>></a></li>";
		String nextPtrn = "<li class='datatable-pagination-list-item %1$s'>"
						+ "<button %2$s data-page='%3$d' class='datatable-pagination-list-item-link'>›</button>"
						+ "</li>";
		
//		String pagePtrn = "<li class='datatable-pagination-list-item'><a class='page-link paging' href='javascript:;' data-page='%1$d' onclick='return false;'>%1$d</a></li>";
		String pagePtrn = "<li class='datatable-pagination-list-item'>"
						+ "<button data-page='%1$d' class='datatable-pagination-list-item-link'>%1$d</button>"
						+ "</li>";

//		String currentPtrn ="<li class=datatable-pagination-list-item-active' aria-current='page'><a class='page-link paging' href='javascript:;'>%d</a></li>";
		String currentPtrn ="<li class='datatable-pagination-list-item datatable-active' aria-current='page'>"
						    + "<button class='datatable-pagination-list-item-link' aria-label='Page 2'>%d</button>"
							+ "</li>";
		
		int totalPage = pagingVO.getTotalPage();
		int firstPage = pagingVO.getFirstPage();
		int lastPage = pagingVO.getLastPage();
		lastPage = lastPage > totalPage ? totalPage : lastPage;
		int currentPage = pagingVO.getCurrentPage();
		
		StringBuffer html = new StringBuffer();
		html.append("<div class='datatable-pagination'>");
		html.append("<ul class='datatable-pagination-list'>");
		
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
