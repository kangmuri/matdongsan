<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="${pageContext.request.contextPath}/resources/NiceAdmin/assets/vendor/lessor/recptAccount.css" rel="stylesheet">
<div class="content-rmk">
    <div class="inB-cl6">
        <div data-v-36a6145e="" class="cont-loo att-j6p">
            <div data-v-36a6145e="" class="tit-dqc">
                <h2 data-v-36a6145e="" class="onndj">수납계좌</h2>
            </div>
            <div data-v-36a6145e="" class="con-ow9 style-dMhb7" id="style-dMhb7">
                <div data-v-36a6145e="" class="storage-acc-d6t">
                    <div data-v-36a6145e="" class="ser-pdg">
                        <p data-v-36a6145e="" class="title-d1y">임대료 자동입금확인 계좌등록 안내</p>
                        <p data-v-36a6145e="" class="sub-6nx"> ① 등록 절차 : 인터넷뱅킹 가입 → 빠른조회서비스(명칭은 은행별 상이) 가입 → 수납계좌 등록 → 계좌상태 확인(약 10분 소요) → 건물 연동</p>
                        <p data-v-36a6145e="" class="sub-6nx"> ② 자동입금확인 수행 조건 : 임대계약의 입금자/월입금액과 수납계좌 입금내역의 입금자명/거래금액이 일치</p>
                        <p data-v-36a6145e="" class="sub-6nx">③ 수납계좌 자동삭제 이유 : 계좌상태 오류, 자동입금확인 서비스 해지, 서비스 이용료 미납으로 인한 자동해지</p>
                    </div> <a data-v-36a6145e="" class="btn-9r4 ogjor sto-dpn">수납계좌 추가</a> <a data-v-36a6145e="" href="https://linkhoushelp.zendesk.com/hc/ko/articles/360050740373" class="btn-9r4 pjeoo sto-l3o">은행별 빠른조회 서비스 설정 가이드 보기</a>
                    <div data-v-69adb0d6="" data-v-36a6145e="" class="list-jhl">
                        <div data-v-69adb0d6="" class="cus-92j">● 수납계좌 </div>
                        <div data-v-69adb0d6="" class="list-b8r onndj">
                            <table data-v-69adb0d6="" class="list-ole ptb-31r">
                                <colgroup data-v-69adb0d6="">
                                    <col data-v-69adb0d6="" width="100">
                                    <col data-v-69adb0d6="" width="180">
                                    <col data-v-69adb0d6="" width="180">
                                    <col data-v-69adb0d6="" width="180">
                                    <col data-v-69adb0d6="" width="180">
                                    <col data-v-69adb0d6="" width="180">
                                    <col data-v-69adb0d6="" width="180">
                                </colgroup>
                                <thead data-v-69adb0d6="">
                                    <tr data-v-69adb0d6="">
                                        <th data-v-69adb0d6="">
                                            <p data-v-69adb0d6="" class="row-w2x">금융사명 <br data-v-69adb0d6="">(계좌구분)</p>
                                        </th>
                                        <th data-v-69adb0d6="">계좌번호</th>
                                        <th data-v-69adb0d6="">계좌상태</th>
                                        <th data-v-69adb0d6="">건물 연동 현황</th>
                                        <th data-v-69adb0d6="">정상계좌 확인일시</th>
                                        <th data-v-69adb0d6="">사용제한 일시</th>
                                        <th data-v-69adb0d6="">관리</th>
                                    </tr>
                                </thead>
                                <tbody data-v-69adb0d6="">
                                    <tr data-v-69adb0d6="" class="emp-a29">
                                        <td data-v-69adb0d6="" class="noB-a3z">
                                            <p data-v-69adb0d6="" class="noD-l3t">내역이 존재하지 않습니다.</p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div data-v-69adb0d6="" data-v-36a6145e="" class="list-jhl">
                        <div data-v-69adb0d6="" class="cus-92j">● 수납계좌 삭제내역</div>
                        <div data-v-69adb0d6="" class="list-b8r onndj">
                            <table data-v-69adb0d6="" class="list-ole ptb-31r">
                                <colgroup data-v-69adb0d6="">
                                    <col data-v-69adb0d6="" width="100">
                                    <col data-v-69adb0d6="" width="180">
                                    <col data-v-69adb0d6="" width="180">
                                    <col data-v-69adb0d6="" width="180">
                                    <col data-v-69adb0d6="" width="180">
                                    <col data-v-69adb0d6="" width="180">
                                    <col data-v-69adb0d6="" width="180">
                                </colgroup>
                                <thead data-v-69adb0d6="">
                                    <tr data-v-69adb0d6="">
                                        <th data-v-69adb0d6="">
                                            <p data-v-69adb0d6="" class="row-w2x">금융사명 <br data-v-69adb0d6="">(계좌구분)</p>
                                        </th>
                                        <th data-v-69adb0d6="">계좌번호</th>
                                        <th data-v-69adb0d6="">계좌상태</th>
                                        <th data-v-69adb0d6=""></th>
                                        <th data-v-69adb0d6="">정상계좌 확인일시</th>
                                        <th data-v-69adb0d6="">사용제한 일시</th>
                                        <th data-v-69adb0d6="">삭제일시</th>
                                    </tr>
                                </thead>
                                <tbody data-v-69adb0d6="">
                                    <tr data-v-69adb0d6="" class="emp-a29">
                                        <td data-v-69adb0d6="" class="noB-a3z">
                                            <p data-v-69adb0d6="" class="noD-l3t">내역이 존재하지 않습니다.</p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <ul data-v-36a6145e="" class="info-dco mt1-fro">
                        <li data-v-36a6145e="">
                            <p data-v-36a6145e="" class="twdkm">수납계좌 등록 절차 TIP!</p>
                            <p data-v-36a6145e="">수납받는 계좌의 인터넷 뱅킹과 빠른 조회서비스를 이용하시는 경우 수납계좌를 등록해서 수납여부를 자동으로 확인할 수 있습니다.</p>
                        </li>
                        <li data-v-36a6145e="">
                            <p data-v-36a6145e="">1.홈버튼 유료 사용자 / 2.수납계좌의 인터넷 뱅킹 이용중 / 3.수납계좌의 빠른조회 서비스 이용</p>
                        </li>
                    </ul>
                </div>
            </div>
            <div data-v-36a6145e=""></div>
        </div>
    </div>
</div>