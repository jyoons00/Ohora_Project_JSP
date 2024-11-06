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
<link rel="stylesheet" href="../resources/cdn-main/myreview.css">
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
            <span class="eng_font">my 1:1</span>
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
        
        <div class="SP_layoutFix">
          <div class="widget_managing_reviews js-pagination-list">
		      <div class="widget_managing_reviews__head">
		        <div class="managing_reviews_header">
		          <ul class="managing_reviews_header__tab_list">
		            <li
		              class="managing_reviews_header__tab managing_reviews_header__tab--active"
		            >
		              <a
		                href="/ohora.kr/my/managing_reviews?secure_username=V22f4eb7ce780134f8410b45f40206779b&amp;tab_type=pending&amp;widget_env=100"
		                class="managing_reviews_header__tab_link"
		                data-remote="true"
		              >
		                작성 가능한 리뷰 0
		              </a>
		            </li>
		            <li class="managing_reviews_header__tab">
		              <a
		                href="/ohora.kr/my/managing_reviews?secure_username=V22f4eb7ce780134f8410b45f40206779b&amp;tab_type=written&amp;widget_env=100"
		                class="managing_reviews_header__tab_link js-widget-header-basic-reviews-count"
		                data-remote="true"
		              >
		                내가 작성한 리뷰 0
		              </a>
		            </li>
		          </ul>
		
		          <div
		            class="managing_reviews_header__message managing_reviews_header__message--pending_reviews"
		          >
		            현재 작성 가능한 리뷰가 없습니다.
		          </div>
		          <div class="managing_reviews_header__pending_reviews_description">
		            배송이 완료된 상품만 목록에 노출됩니다.
		          </div>
		        </div>
		      </div>
		      <div class="widget_managing_reviews__list">
		        <ul></ul>
		      </div>
		    </div>
      </div>
     
      

      <%@include file="footer.jsp" %>
    </body>

</html>