/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.93
 * Generated at: 2024-11-11 13:53:35 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.ohora;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1730336729000L));
    _jspx_dependants.put("jar:file:/C:/Users/USER/Desktop/OhoraTest/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/projectOhora/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(4);
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>오호라</title>\r\n");
      out.write("<link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"http://localhost/jspPro/images/SiSt.ico\">\r\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js\"></script>\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("<meta name=\"google\" content=\"notranslate\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"../resources/cdn-main/header.css\">\r\n");
      out.write("<script src=\"http://localhost/jspPro/resources/cdn-main/example.js\"></script>\r\n");
      out.write("<style>\r\n");
      out.write(" span.material-symbols-outlined{\r\n");
      out.write("    vertical-align: text-bottom;\r\n");
      out.write(" }  \r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("   \r\n");
      out.write("    <!-- 아래 필수 -->\r\n");
      out.write("    <div style=\"margin-top: 12%\"></div>\r\n");
      out.write("    <div class=\"footer\">\r\n");
      out.write("      <div class=\"chat\">\r\n");
      out.write("        <div class=\"top_left\">\r\n");
      out.write("          <span class=\"kakao_chat\">\r\n");
      out.write("            <a href=\"https://oe9lp.channel.io/home\"\r\n");
      out.write("              >1:1 문의하기</a\r\n");
      out.write("            >\r\n");
      out.write("          </span>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"top_right\">\r\n");
      out.write("          <a href=\"https://www.instagram.com/ohora_official/\" target=\"_blank\">\r\n");
      out.write("            <img src=\"https://www.ohora.kr/web/upload/common/ft_insta.png\" />\r\n");
      out.write("          </a>\r\n");
      out.write("          <a href=\"https://www.facebook.com/ohora.official\" target=\"_blank\">\r\n");
      out.write("            <img src=\"https://www.ohora.kr/web/upload/common/ft_facebook.png\" />\r\n");
      out.write("          </a>\r\n");
      out.write("          <a href=\"https://pf.kakao.com/_axjYfj\" target=\"_blank\">\r\n");
      out.write("            <img src=\"https://www.ohora.kr/web/upload/common/ft_kakao.png\" />\r\n");
      out.write("          </a>\r\n");
      out.write("          <a\r\n");
      out.write("            href=\"https://www.youtube.com/channel/UCV72a2QWRpEZjZYkWjXHZWQ\"\r\n");
      out.write("            target=\"_blank\"\r\n");
      out.write("          >\r\n");
      out.write("            <img src=\"https://www.ohora.kr/web/upload/common/ft_youtube.png\" />\r\n");
      out.write("          </a>\r\n");
      out.write("          <a\r\n");
      out.write("            href=\"https://post.naver.com/my.nhn?memberNo=47439708\"\r\n");
      out.write("            target=\"_blank\"\r\n");
      out.write("          >\r\n");
      out.write("            <img src=\"https://www.ohora.kr/web/upload/common/ft_naver.png\" />\r\n");
      out.write("          </a>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <br />\r\n");
      out.write("      <div class=\"line\"></div>\r\n");
      out.write("      <div class=\"center_menu\">\r\n");
      out.write("        <div class=\"list\" id=\"a\">\r\n");
      out.write("          주문\r\n");
      out.write("          <div class=\"sub\" id=\"aa\">\r\n");
      out.write("            <a\r\n");
      out.write("              href=\"/projectOhora/ohora/orderlist_log.jsp\"\r\n");
      out.write("              >주문·배송내역</a\r\n");
      out.write("            ><br /><br />\r\n");
      out.write("            <a\r\n");
      out.write("              href=\"/projectOhora/ohora/orderlist_cancel.jsp\"\r\n");
      out.write("              >취소/교환/반품내역</a\r\n");
      out.write("            ><br /><br />\r\n");
      out.write("            <a href=\"");
      out.print(contextPath );
      out.write("/cart/useriscart.do\">장바구니</a>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"line\"></div>\r\n");
      out.write("      <div class=\"center_menu\">\r\n");
      out.write("        <div class=\"list\" id=\"b\">\r\n");
      out.write("          회원\r\n");
      out.write("          <div class=\"sub\" id=\"bb\">\r\n");
      out.write("            <a href=\"");
      out.print( contextPath );
      out.write("/ohora.do?event=eventnew\">신규 혜택</a><br /><br />\r\n");
      out.write("            <a href=\"");
      out.print( contextPath );
      out.write("/ohora.do?membership=membership\">멤버십 혜택</a><br /><br />\r\n");
      out.write("            <a href=\"");
      out.print( contextPath );
      out.write("/mypage/mypage.do?user_id=userId\">마이페이지</a><br /><br />\r\n");
      out.write("            <a href=\"");
      out.print( contextPath );
      out.write("/mypage/mypage.do?user_id=userId\">적립금·쿠폰내역</a><br /><br />\r\n");
      out.write("            <a href=\"");
      out.print(contextPath );
      out.write("/member/modify.do?userId=");
      out.print(userId);
      out.write("\">회원정보변경</a>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"line\"></div>\r\n");
      out.write("      <div class=\"center_menu\">\r\n");
      out.write("        <div class=\"list\" id=\"c\">\r\n");
      out.write("          서비스\r\n");
      out.write("          <div class=\"sub\" id=\"cc\">\r\n");
      out.write("            <a href=\"");
      out.print( contextPath );
      out.write("/ohora.do?FAQ=FAQ\">FAQ</a><br /><br />\r\n");
      out.write("            <a href=\"https://oe9lp.channel.io/home\">상담톡</a><br /><br />\r\n");
      out.write("            <a href=\"");
      out.print( contextPath );
      out.write("/ohora.do?howto=howto\">사용법</a><br /><br />\r\n");
      out.write("            <a href=\"");
      out.print( contextPath );
      out.write("/ohora.do?notice=notice\">공지사항</a>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"line\"></div>\r\n");
      out.write("      <div class=\"company\" style=\"margin-top: 10px; margin-bottom: 10px;\">\r\n");
      out.write("        <p>\r\n");
      out.write("          대표 : 유기현<br />\r\n");
      out.write("          회사 : 주식회사 글루가<br />\r\n");
      out.write("          주소 : 충남 천안시 서북구 2공단8길 45 2층 (업성동)<br />\r\n");
      out.write("          사업자등록번호 : 722-87-00061<br />\r\n");
      out.write("          통신판매업신고번호 : 2017-충남천안-1055호 사업자 정보 확인<br />\r\n");
      out.write("          개인정보처리담당자 : 유태규<br />\r\n");
      out.write("          고객센터 : 1566-0554<br />\r\n");
      out.write("          평일 09:00~18:00 (Lunch 12:30~13:30)<br />\r\n");
      out.write("          영업문의 : ohora_official@ohora.com<br />\r\n");
      out.write("          제휴 & 파트너십 문의 : ohora_partnership@ohora.com<br />\r\n");
      out.write("          글로벌 제휴 & 파트너십 문의 : Global-Business@ohora.com\r\n");
      out.write("        </p>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"line\"></div>\r\n");
      out.write("      <div class=\"bottom\">\r\n");
      out.write("        <span class=\"a\"><a href=\"");
      out.print( contextPath );
      out.write("/ohora.do?about=about\">브랜드 소개</a></span>\r\n");
      out.write("        <span class=\"b\"><a href=\"");
      out.print( contextPath );
      out.write("/ohora.do?termsofservice=termsofservice\">이용약관</a></span>\r\n");
      out.write("        <span class=\"c\"><a href=\"");
      out.print( contextPath );
      out.write("/ohora.do?policy=policy\">개인정보처리방침</a></span>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </body>\r\n");
      out.write("  <script>\r\n");
      out.write("  let sw = true;\r\n");
      out.write("  \r\n");
      out.write("  let a = document.querySelector(\"#a\");\r\n");
      out.write("  let aa = document.querySelector(\"#aa\");\r\n");
      out.write("  a.onclick = function(){\r\n");
      out.write("     if(sw){\r\n");
      out.write("        aa.style.display = \"block\";\r\n");
      out.write("     }else if(!sw){\r\n");
      out.write("        aa.style.display = \"none\";\r\n");
      out.write("     }\r\n");
      out.write("     sw = !sw;\r\n");
      out.write("  }\r\n");
      out.write("  \r\n");
      out.write("  let b = document.querySelector(\"#b\");\r\n");
      out.write("  let bb = document.querySelector(\"#bb\");\r\n");
      out.write("  b.onclick = function(){\r\n");
      out.write("     if(sw){\r\n");
      out.write("        bb.style.display = \"block\";\r\n");
      out.write("     }else if(!sw){\r\n");
      out.write("        bb.style.display = \"none\";\r\n");
      out.write("     }\r\n");
      out.write("     sw = !sw;\r\n");
      out.write("  }\r\n");
      out.write("  \r\n");
      out.write("  let c = document.querySelector(\"#c\");\r\n");
      out.write("  let cc = document.querySelector(\"#cc\");\r\n");
      out.write("  c.onclick = function(){\r\n");
      out.write("     if(sw){\r\n");
      out.write("        cc.style.display = \"block\";\r\n");
      out.write("     }else if(!sw){\r\n");
      out.write("        cc.style.display = \"none\";\r\n");
      out.write("     }\r\n");
      out.write("     sw = !sw;\r\n");
      out.write("  }\r\n");
      out.write("</script>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
