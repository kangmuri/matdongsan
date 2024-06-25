package kr.or.mat.paging;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class BootstrapPaginationRender implements PaginationRenderer {

	@Override
	public String renderPagination(PaginationInfo pagingVO, String funcName) {
		// 모든 a 태그에 data-page 속성이 있음에 주의할 것.
		String previousPtrn ="<li class='page-item %1$s'><a class='page-link paging' href='javascript:;' %2$s data-page='%3$d' onclick='return false;'><span aria-hidden='true'>&laquo;</span></a></li>";
		String nextPtrn =    "<li class='page-item %1$s'><a class='page-link paging' href='javascript:;' %2$s data-page='%3$d' onclick='return false'><span aria-hidden='true'>&raquo;</span></a></li>";
		String pagePtrn = "<li class='page-item'><a class='page-link paging' href='javascript:;' data-page='%1$d' onclick='return false;'>%1$d</a></li>";
		String currentPtrn ="<li class='page-item active' aria-current='page'><a class='page-link paging' href='javascript:;'>%d</a></li>";
		
		int totalPage = pagingVO.getTotalPage();
		int firstPage = pagingVO.getFirstPage();
		int lastPage = pagingVO.getLastPage();
		lastPage = lastPage > totalPage ? totalPage : lastPage;
		int currentPage = pagingVO.getCurrentPage();
		
		StringBuffer html = new StringBuffer();
		html.append("<nav aria-label='...'>");
		html.append("<ul class='pagination pagination-sm'>");
		
        // Previous page button
        boolean previousDisabled = currentPage <= 1;
        html.append(
            String.format(previousPtrn,
                previousDisabled ? "disabled" : "",
                previousDisabled ? "" : "href='javascript:;'",
                previousDisabled ? 1 : currentPage - 1
            )
        );

        // Page buttons
        for (int page = firstPage; page <= lastPage; page++) {
            if (page == currentPage) {
                html.append(
                    String.format(currentPtrn, page)
                );
            } else {
                html.append(
                    String.format(pagePtrn, page)
                );
            }
        }

        // Next page button
        boolean nextDisabled = currentPage >= totalPage;
        html.append(
            String.format(nextPtrn,
                nextDisabled ? "disabled" : "",
                nextDisabled ? "" : "href='javascript:;'",
                nextDisabled ? totalPage : currentPage + 1
            )
        );

		
		html.append("</ul>");
		html.append("</nav>");
		
		return html.toString();
	}

}

















