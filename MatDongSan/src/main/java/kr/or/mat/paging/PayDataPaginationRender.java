package kr.or.mat.paging;

public class PayDataPaginationRender implements PaginationRenderer {

    @Override
    public String renderPagination(PaginationInfo pagingVO, String funcName) {
        // 모든 a 태그에 data-page 속성이 있음에 주의할 것.
        String firstPtrn = "<a data-v-7136ea58='' class='btn-3lh ini-klj' href='javascript:;' %2$s data-page='1' onclick='return false;'></a>";
        String lastPtrn = "<a data-v-7136ea58='' class='btn-3lh ynkyl' href='javascript:;' %2$s data-page='%3$d' onclick='return false;'></a>";
        String previousPtrn = "<a data-v-7136ea58='' class='btn-3lh pre-t6o' href='javascript:;' %2$s data-page='%3$d' onclick='return false;'></a>";
        String nextPtrn = "<a data-v-7136ea58='' class='btn-3lh nex-tyc' href='javascript:;' %2$s data-page='%3$d' onclick='return false'></a>";
        String pagePtrn = "<a data-v-7136ea58='' class='qnwcn' href='javascript:;' data-page='%1$d' onclick='return false;'>%1$d</a>";
        String currentPtrn = "<a data-v-7136ea58='' class='qnwcn act-goa' href='javascript:;'>%d</a>";

        int totalPage = pagingVO.getTotalPage();
        int firstPage = pagingVO.getFirstPage();
        int lastPage = pagingVO.getLastPage();
        lastPage = lastPage > totalPage ? totalPage : lastPage;
        int currentPage = pagingVO.getCurrentPage();

        StringBuffer html = new StringBuffer();
        html.append("<div data-v-7136ea58='' class='paging-5g9 mt3-z7i'>");

        // First page button
        boolean firstDisabled = firstPage <= 1;
        html.append(
            String.format(firstPtrn,
                firstDisabled ? "disabled" : "",
                firstDisabled ? "" : "href='javascript:;'"
            )
        );

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

        // Last page button
        boolean lastDisabled = lastPage >= totalPage;
        html.append(
            String.format(lastPtrn,
                lastDisabled ? "disabled" : "",
                lastDisabled ? "" : "href='javascript:;'",
                lastDisabled ? totalPage : lastPage
            )
        );

        html.append("</div>");

        return html.toString();
    }
}
