<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오호라</title>
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/jspPro/images/SiSt.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="google" content="notranslate">
<link rel="stylesheet" href="../resources/cdn-main/addr.css">
<script src="http://localhost/jspPro/resources/cdn-main/example.js"></script>
<style>
 span.material-symbols-outlined{
    vertical-align: text-bottom;
 }  
</style>
</head>
 <body>
      <%@include file="header.jsp" %>
      <div id="SP_mypage_wrap">
        <div class="SP_subSection">
          <h2 class="SP_subTitle Nunito_Sans_font">
            <span class="eng_font">address list</span>
          </h2>
        </div>

       
        <div
          class="xans-element- xans-myshop xans-myshop-asyncbenefit SP_mypageInfomation_wrap"
        >
          <div class="mypageInformation_inner memberInfo">
            <div class="SP_Message">
              <div class="SP_information">
           
                <div id="gauge1" class="gauge-container one displaynone">
                  <svg viewBox="8 8 84 84" class="gauge">
                    <path
                      class="dial"
                      fill="none"
                      stroke="#eee"
                      stroke-width="2"
                      d="M 50 10 A 40 40 0 1 1 49.999 10"
                    ></path>
                    <text
                      x="50"
                      y="50"
                      fill="#999"
                      class="value-text"
                      font-size="100%"
                      font-family="sans-serif"
                      font-weight="normal"
                      text-anchor="middle"
                      alignment-baseline="middle"
                      dominant-baseline="central"
                    >
                      0%
                    </text>
                    <path
                      class="value"
                      fill="none"
                      stroke="#666"
                      stroke-width="2.5"
                      d="M 50 10 A 40 40 0 0 1 50 10"
                    ></path>
                  </svg>
                </div>

                <!-- progress -->

                <div class="member-radius">
                  <div class="radius-box" id="radiusBox">
                    <canvas id="doughnut1" width="170" height="170"></canvas>

                    <!-- 원 그리는 스크립트 -->
                    <script>
                      // 1. canvas 엘리먼트 취득
                      const canvas = document.getElementById("doughnut1");

                      // 2. 2d모드의 그리기 객체 취득
                      const ctx = canvas.getContext("2d");

                      // 3. path 그리기 시작 설정
                      ctx.beginPath();

                      // 4. 외곽선
                      ctx.lineWidth = 1.5; // 선 굵기 설정 (5픽셀)
                      ctx.strokeStyle = "gray"; // 외곽선 색상 설정

                      // 5. 원 모양 설정
                      // 중심 (85, 85), 반지름 85, 시작 각도 0, 끝 각도 2*Math.PI (완전한 원)
                      ctx.arc(85, 85, 80, 0, 2 * Math.PI);

                      // 6. 내부 채우기 및 외곽선 그리기

                      ctx.stroke();
                    </script>
                  </div>
                </div>
                <!-- //progress -->

                <div class="SP_infoMegBox_wrap">
                  <p class="ment" style="margin-bottom: 12px">
                    <strong
                      ><span
                        ><span class="xans-member-var-name">이시훈</span></span
                      ></strong
                    >님 반갑습니다.
                  </p>
                  <p class="grade">
                    회원님의 등급은
                    <!--img src="" alt="" class="myshop_benefit_group_icon_tag" / --><strong
                      class="group"
                      >[<span class="groupName" id="groupName"
                        ><span class="xans-member-var-group_name">Friend</span
                        ><span
                          class="myshop_benefit_ship_free_message"
                        ></span></span
                      >]</strong
                    >입니다.
                  </p>
                  <p class="gradeValue gradeGuide" id="sGradeAutoDisplayArea">
                    다음 등급까지
                    <span id="changePrd" class="price sAutoGradeDisplay"
                      ><span class="xans-member-var-sGradeIncreasePrice"
                        >150,000</span
                      >원</span
                    >
                    남았습니다.
                  </p>
                  <p class="order_total_ 현재까지주문금액">
                    <span class="xans-member-var-sPeriodOrderPrice">0</span>
                  </p>
                  <div class="SP_infoUserUtilLink_wrap">
                    <a
                      href="/article/%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD/1/1/%20%20"
                      >등급 혜택보기</a
                    >
                    <a
                      href="/myshop/order/list.html?order_status=shipped_complate"
                      >후기쓰러가기</a
                    >
                    <a href="https://oe9lp.channel.io/home">1:1문의하기</a>
                    <!--<a href="/myshop/board_list.html">내 게시글</a>-->
                  </div>
                </div>
              </div>
            </div>
            <!-- 추가 -->
            <div
              class="gBlank5"
              id="sAutomaticGradeShowArea"
              style="display: none"
            >
              <p class="sAutoGradeDisplay">
                구매금액
                <span class="xans-member-var-sPeriodOrderPrice">0</span>으로
                회원님의 예상등급은 [<span
                  class="xans-member-var-sRealtimeGrade"
                  >Friend</span
                >] 입니다.
              </p>
              <p class="displaynone sAutoGradeDisplay">
                구매건수
                <span class="xans-member-var-sPeriodOrderCount">0건</span>으로
                회원님의 예상등급은 [<span
                  class="xans-member-var-sRealtimeGrade"
                  >Friend</span
                >] 입니다.
              </p>
              <p class="displaynone sAutoGradeDisplay">
                구매금액
                <span class="xans-member-var-sPeriodOrderPrice">0</span>,
                구매건수
                <span class="xans-member-var-sPeriodOrderCount">0건</span>으로
                회원님의 예상등급은 [<span
                  class="xans-member-var-sRealtimeGrade"
                  >Friend</span
                >] 입니다.
              </p>
              <p class="displaynone sAutoGradeDisplay">
                구매금액
                <span class="xans-member-var-sPeriodOrderPrice">0</span>, 또는
                구매건수
                <span class="xans-member-var-sPeriodOrderCount">0건</span>으로
                회원님의 예상등급은 [<span
                  class="xans-member-var-sRealtimeGrade"
                  >Friend</span
                >] 입니다.
              </p>
              <p class="sAutoGradeDisplay">
                [<span class="xans-member-var-sCurrentGrade">Friend</span>]
                유지를 위해서 구매금액
                <span class="xans-member-var-sCurrentGradeIncreasePrice">0</span
                >이 추가로 필요합니다.
              </p>
              <p class="displaynone sAutoGradeDisplay">
                [<span class="xans-member-var-sCurrentGrade">Friend</span>]
                유지를 위해서 구매건수
                <span class="xans-member-var-sCurrentGradeIncreaseCount"
                  >0건</span
                >이 추가로 필요합니다.
              </p>
              <p class="displaynone sAutoGradeDisplay">
                [<span class="xans-member-var-sCurrentGrade">Friend</span>]
                유지를 위해서 구매금액
                <span class="xans-member-var-sCurrentGradeIncreasePrice">0</span
                >, 구매건수
                <span class="xans-member-var-sCurrentGradeIncreaseCount"
                  >0건</span
                >이 추가로 필요합니다.
              </p>
              <p class="displaynone sAutoGradeDisplay">
                [<span class="xans-member-var-sCurrentGrade">Friend</span>]
                유지를 위해서 구매금액
                <span class="xans-member-var-sCurrentGradeIncreasePrice">0</span
                >, 또는 구매건수
                <span class="xans-member-var-sCurrentGradeIncreaseCount"
                  >0건</span
                >이 추가로 필요합니다.
              </p>
              <p class="sAutoGradeDisplay">
                또한 [<span class="xans-member-var-sNextGrade">Family</span>]
                승급을 원하시면 구매금액
                <span class="xans-member-var-sGradeIncreasePrice">150,000</span
                >이 추가로 필요합니다
              </p>
              <p class="displaynone sAutoGradeDisplay">
                또한 [<span class="xans-member-var-sNextGrade">Family</span>]
                승급을 원하시면 구매건수
                <span class="xans-member-var-sGradeIncreaseCount">0건</span>이
                추가로 필요합니다.
              </p>
              <p class="displaynone sAutoGradeDisplay">
                또한 [<span class="xans-member-var-sNextGrade">Family</span>]
                승급을 원하시면 구매금액
                <span class="xans-member-var-sGradeIncreasePrice">150,000</span
                >, 구매건수
                <span class="xans-member-var-sGradeIncreaseCount">0건</span>이
                추가로 필요합니다.
              </p>
              <p class="displaynone sAutoGradeDisplay">
                또한 [<span class="xans-member-var-sNextGrade">Family</span>]
                승급을 원하시면 구매금액
                <span class="xans-member-var-sGradeIncreasePrice">150,000</span
                >, 또는 구매건수
                <span class="xans-member-var-sGradeIncreaseCount">0건</span>이
                추가로 필요합니다.
              </p>
              <p class="txtInfo txt11">
                승급 기준에 따른 예상 금액이므로 총주문 금액과 다를 수 있습니다.
              </p>
            </div>
            


            <div class="SP_myOrderInfo_wrap">
              <div
                class="xans-element- xans-myshop xans-myshop-bankbook orderinfo_pay"
              >
                <ul class="SP_myOrderInfoList">
                  <li>
                    <div class="SP_displayTable">
                      <div class="SP_displayTableInr">
                        <div class="SP_myOrderInfoTitle">my point</div>
                        <div class="SP_myOrderInfoCont">
                          <a
                            href="/myshop/mileage/historyList.html"
                            class="SP_mileageCount"
                            style=""
                            >0</a
                          >
                        </div>
                      </div>
                    </div>
                  </li>
                  <li class="">
                    <div class="SP_displayTable">
                      <div class="SP_displayTableInr">
                        <div class="SP_myOrderInfoTitle">my coupon</div>
                        <div class="SP_myOrderInfoCont">
                          <a href="/myshop/coupon/coupon.html">0</a>
                        </div>
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
     
       <!-- 주소록 -->
         <div class="SP_layoutFix">
	 	<div class="xans-element- xans-myshop xans-myshop-addrlist">
      <div class="SP_subSection">
        <table border="1" summary="" class="SP_tableSt01_isThead">
          <caption>
            배송 주소록 목록
          </caption>
          <colgroup>
            <col style="width: 100px" />
            <col style="width: 150px" />
            <col style="width: 95px" />
            <col style="width: 95px" />
            <col style="width: 120px" />
            <col style="width: 120px" />
            <col style="width: 180px" />
            <col style="width: 76px" />
          </colgroup>
          <thead>
            <tr>
              <th scope="col">
                <span class=""
                  ><input
                    id="allCheck"
                    onclick="myshopAddr.checkAll(this)"
                    value=""
                    type="checkbox"
                /></span>
              </th>
              <th scope="col">주소록 고정</th>
              <th scope="col">배송지명</th>
              <th scope="col">수령인</th>
              <th scope="col">일반전화</th>
              <th scope="col">휴대전화</th>
              <th scope="col">주소</th>
              <th scope="col">수정</th>
            </tr>
          </thead>
          <tbody class="center">
            <tr class="xans-record-">
              <td><input name="ma_idx[]" value="4864123" type="checkbox" /></td>
              <td class="SP_link">
                <a
                  href="/exec/front/Myshop/Addr/?mode=Fix&amp;ma_idx=4864123&amp;ma_fixed_flag=F&amp;return_url=%2Fmyshop%2Faddr%2Flist.html"
                  class="SP_cm_btn SP_btn_gray_bd displaynone"
                  >해제</a
                ><a
                  href="/exec/front/Myshop/Addr/?mode=Fix&amp;ma_idx=4864123&amp;ma_fixed_flag=F&amp;return_url=%2Fmyshop%2Faddr%2Flist.html"
                  class="SP_cm_btn SP_btn_gray_bd displaynone"
                  >고정</a
                ><span class="">-</span>
              </td>
              <td>
                <img
                  src="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/ico_addr_default.gif"
                  class=""
                  alt="기본"
                />
                <span>학원</span>
              </td>
              <td><span>원충희</span></td>
              <td><span>02--</span></td>
              <td><span>010-2731-6401</span></td>
              <td class="left">
                (<span>06235</span>)<span
                  >서울 강남구 테헤란로 132 한독약품빌딩</span
                >
                <span>8층</span>
              </td>
              <td class="SP_link">
                <a
                  href="modify.html?ma_idx=4864123"
                  class="SP_cm_btn SP_btn_gray_bd"
                  >수정</a
                >
              </td>
            </tr>
            <tr class="xans-record-">
              <td><input name="ma_idx[]" value="4864298" type="checkbox" /></td>
              <td class="SP_link">
                <a
                  href="/exec/front/Myshop/Addr/?mode=Fix&amp;ma_idx=4864298&amp;ma_fixed_flag=F&amp;return_url=%2Fmyshop%2Faddr%2Flist.html"
                  class="SP_cm_btn SP_btn_gray_bd"
                  >해제</a
                >
                <a
                  href="/exec/front/Myshop/Addr/?mode=Fix&amp;ma_idx=4864298&amp;ma_fixed_flag=F&amp;return_url=%2Fmyshop%2Faddr%2Flist.html"
                  class="SP_cm_btn SP_btn_gray_bd displaynone"
                  >고정</a
                >
                <span class="displaynone">-</span>
              </td>
              <td>
                <img
                  src="//img.echosting.cafe24.com/skin/base_ko_KR/myshop/ico_addr_default.gif"
                  class="displaynone"
                  alt="기본"
                />
                <span>미지정</span>
              </td>
              <td><span>원충희</span></td>
              <td><span>82-</span></td>
              <td><span>010-2731-6401</span></td>
              <td class="left">
                (<span>06235</span>)<span
                  >서울 강남구 테헤란로 132 한독약품빌딩</span
                >
                <span>8층</span>
              </td>
              <td class="SP_link">
                <a
                  href="modify.html?ma_idx=4864298"
                  class="SP_cm_btn SP_btn_gray_bd 1"
                  >수정</a
                >
              </td>
            </tr>
          </tbody>
          <tbody class="displaynone">
            <tr>
              <td colspan="8" class="SP_message">등록된 주소가 없습니다.</td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="SP_submitBtn_wrap type2">
        <div class="SP_submitBtn_left" >
          <a
            href="#none"
            class="SP_cm_btn SP_btn_gray_bd"
            onclick="myshopAddr.deleteAddress(); return false;"
            style="border: 1px solid #000"
            >선택 주소록 삭제</a
          >
        </div>
        <div class="SP_submitBtn_right">
          <a href="/projectOhora/ohora/addr_manage.jsp" class="SP_cm_btn SP_btn_gray_bd"
        	  style="border: 1px solid #000"
            >배송지등록</a
          >
        </div>
      </div>
    </div>
    </div>
   
		<!-- 유의사항 -->   

        <div
          class="xans-element- xans-myshop xans-myshop-head SP_pageGuideText_wrap"
        >
          <div class="inner SP_layoutFix">
            <h3 class="SP_pageGuideTxt_tt bottom">배송주소록 유의사항</h3>
            <div class="SP_pageGuideTxt_cont bottom">
              <ol class="xans-element- xans-myshop xans-myshop-historyinfo">
                <li class="item1" style="width: 120%;">
                  - 배송 주소록은 최대 10개까지 등록할 수 있으며, 별도로 등록하지 않을 경우 최근 배송 주소록 기준으로 자동 업데이트 됩니다.
                </li>
                <li class="item2">
                  - 자동 업데이트를 원하지 않을 경우 주소록 고정 선택을 선택하시면 선택된 주소록은 업데이트 대상에서 제외됩니다.
                </li>
                <li class="item3">
                  - 기본 배송지는 1개만 저장됩니다. 다른 배송지를 기본 배송지로 설정하시면 기본 배송지가 변경됩니다.
                </li>
              </ol>
            </div>
          </div>
        </div>
      </div>

      <%@include file="footer.jsp" %>
    </body>

</html>