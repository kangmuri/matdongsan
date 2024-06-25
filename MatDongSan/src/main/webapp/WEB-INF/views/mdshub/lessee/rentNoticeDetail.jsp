<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/rentNoticeDetail.css" rel="stylesheet">
<style>
.list-y7w{
width: 89%;
}
.list-y7w .mt2-5ax{
border-top: 1px solid #e2e2e2;
}
.list-y7w tr:first-child th  { 
    border-top: 1px solid #e2e2e2;
} 
.list-y7w th  { 
    padding: 16px 10px; 
    font-size: 14px; 
    font-weight: bold; 
    color: #747474; 
    text-align: left; 
    border-bottom: 1px solid #e2e2e2; 
    background-color: #fafafa;
} 
.list-y7w td  { 
    padding: 16px 10px; 
    font-size: 14px; 
    font-weight: normal; 
    color: #202020; 
    text-align: left; 
    border-bottom: 1px solid #e2e2e2; 
    border-top: 1px solid #e2e2e2; 
} 
.text-7yy[data-v-bd6faeac] { 
    font-size: 16px; 
    font-weight: 700;
	margin-bottom: 20px;
} 
.not-s5c .button-svc .can-i8w[data-v-33e25de6]  { 
    align-items: center; 
    border-radius: 5px; 
    box-sizing: border-box; 
    display: flex; 
    height: 35px; 
    justify-content: center; 
    width: 100px;
    background-color: #eee; 
    color: #555; 
    margin-right: 10px;
} 

.btn-7td {
    display: flex;
    justify-content: center;
    align-items: center;
    color: #747474;
    background-color: #e5e6eb;
    border: 1px solid #e2e2e2;
    width: 130px;
    height: 35px;
    border-radius: 5px;
    font-size: 14px;
    margin: 20px;
    margin-left: 150%;
    }
    .titleCont{
    margin-left: 38px;
    margin-top: 40px;
    }
    .kang{
    margin-bottom: 20px;
    }
</style>

<div data-v-abe864cc="" class="cont-nwf att-av7 pmc-8em">
    <div data-v-abe864cc="" class="tit-eq5 header-gj1">
        <h2 data-v-abe864cc="" class="kakxs">공지사항 </h2>
    </div>
    <div data-v-bd6faeac="" class="set-c71 w84-5g7 titleCont">
        <div data-v-bd6faeac="" class="text-7yy mb1-5qv kang">${noticeDetail.noticeSj }</div>
        <div data-v-bd6faeac="" class="fle-neb spa-e6h w10-z51 kang">
            <div data-v-bd6faeac="">${noticeDetail.users.userNm} | ${noticeDetail.noticeDt} | 조회수 ${noticeDetail.noticeCnt}</div>
        </div>
        <table data-v-bd6faeac="" class="list-y7w mt2-5ax">
            <colgroup data-v-bd6faeac="">
                <col data-v-bd6faeac="" width="200">
                <col data-v-bd6faeac="" width="*">
            </colgroup>
            <tbody data-v-bd6faeac="">
                <tr data-v-bd6faeac="">
                    <th data-v-bd6faeac="">건물정보</th>
                    <td data-v-bd6faeac="">
                        <div data-v-bd6faeac="" class="list-mdl"> ${noticeDetail.bldgs.bldgNm} </div>
                    </td>
                </tr>
            </tbody>
        </table>
     </div>
    <div data-v-abe864cc="" class="set-6vc w84-6kv">
        <div data-v-abe864cc="" class="mt3-sox w10-iyl">
            <div data-v-33e25de6="" data-v-abe864cc="" class="not-fzp w10-iyl">
                <div data-v-33e25de6="" class="not-1ev">
                    <div data-v-7cb2bca4="" data-v-33e25de6=""><textarea data-v-7cb2bca4="" readonly="readonly">${noticeDetail.noticeCn}</textarea></div>
                </div>
                <div data-v-33e25de6=""></div>
            </div>
        </div>
        <button data-v-33e25de6="" class="btn-7td" onclick="location.href='${pageContext.request.contextPath}/lessee/rentNotice'">목록으로</button>
    </div>

</div>
