/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.76
 * Generated at: 2023-07-17 09:10:03 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.project;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

public final class dry_002dgrade3_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/C:/JSP/MyWorkSpace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/jwbook/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1688702281347L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.sql.SQLException");
    _jspx_imports_classes.add("java.sql.Connection");
    _jspx_imports_classes.add("java.sql.ResultSet");
    _jspx_imports_classes.add("java.sql.Statement");
    _jspx_imports_classes.add("java.sql.DriverManager");
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!doctype html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("  <head>\r\n");
      out.write("  	<meta charset='UTF-8'>\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("    <meta name=\"description\" content=\"\">\r\n");
      out.write("    <meta name=\"author\" content=\"Mark Otto, Jacob Thornton, and Bootstrap contributors\">\r\n");
      out.write("    <meta name=\"generator\" content=\"Hugo 0.104.2\">\r\n");
      out.write("    <title>냥바냥</title>\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"canonical\" href=\"https://getbootstrap.com/docs/5.2/examples/blog/\">\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("    <style>\r\n");
      out.write("    a{text-decoration:none;\r\n");
      out.write("    }\r\n");
      out.write("    \r\n");
      out.write("      .bd-placeholder-img {\r\n");
      out.write("        font-size: 1.125rem;\r\n");
      out.write("        text-anchor: middle;\r\n");
      out.write("        -webkit-user-select: none;\r\n");
      out.write("        -moz-user-select: none;\r\n");
      out.write("        user-select: none;\r\n");
      out.write("      }\r\n");
      out.write("\r\n");
      out.write("      @media (min-width: 768px) {\r\n");
      out.write("        .bd-placeholder-img-lg {\r\n");
      out.write("          font-size: 3.5rem;\r\n");
      out.write("        }\r\n");
      out.write("      }\r\n");
      out.write("\r\n");
      out.write("      .b-example-divider { \r\n");
      out.write("        height: 3rem;\r\n");
      out.write("        background-color: rgba(0, 0, 0, .1);\r\n");
      out.write("        border: solid rgba(0, 0, 0, .15);\r\n");
      out.write("        border-width: 1px 0;\r\n");
      out.write("        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);\r\n");
      out.write("      }\r\n");
      out.write("\r\n");
      out.write("      .b-example-vr {\r\n");
      out.write("        flex-shrink: 0;\r\n");
      out.write("        width: 1.5rem;\r\n");
      out.write("        height: 100vh;\r\n");
      out.write("      }\r\n");
      out.write("\r\n");
      out.write("      .bi {\r\n");
      out.write("        vertical-align: -.125em;\r\n");
      out.write("        fill: currentColor;\r\n");
      out.write("      }\r\n");
      out.write("\r\n");
      out.write("      .nav-scroller {\r\n");
      out.write("        position: relative;\r\n");
      out.write("        z-index: 2;\r\n");
      out.write("        height: 2.75rem;\r\n");
      out.write("        overflow-y: hidden;\r\n");
      out.write("      }\r\n");
      out.write("\r\n");
      out.write("      .nav-scroller .nav {\r\n");
      out.write("        display: flex;\r\n");
      out.write("        flex-wrap: nowrap;\r\n");
      out.write("        padding-bottom: 1rem;\r\n");
      out.write("        margin-top: -1px;\r\n");
      out.write("        overflow-x: auto;\r\n");
      out.write("        text-align: center;\r\n");
      out.write("        white-space: nowrap;\r\n");
      out.write("        -webkit-overflow-scrolling: touch;\r\n");
      out.write("      }\r\n");
      out.write("      \r\n");
      out.write("      .lead my-3 {\r\n");
      out.write("    font-family: 'Dovemayo_gothic';\r\n");
      out.write("    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.1/Dovemayo_gothic.woff2') format('woff2');\r\n");
      out.write("    font-weight: normal;\r\n");
      out.write("    font-style: normal;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("	.margin-top{\r\n");
      out.write("	margin-top: 10px;\r\n");
      out.write("	color: black;\r\n");
      out.write("	}\r\n");
      out.write("	.basic-color{\r\n");
      out.write("	color:#252221;\r\n");
      out.write("	}\r\n");
      out.write("	.nav-font-color{\r\n");
      out.write("	color:#202020;}\r\n");
      out.write("	\r\n");
      out.write("	.login-hover:hover{\r\n");
      out.write("	background-color:#252221;\r\n");
      out.write("	}\r\n");
      out.write("\r\n");
      out.write("	.button-color:hover{\r\n");
      out.write("	color: #490D0D;\r\n");
      out.write("	}\r\n");
      out.write("\r\n");
      out.write("    </style>\r\n");
      out.write("\r\n");
      out.write("    <!-- Custom styles for this template -->\r\n");
      out.write("    <link href=\"blog.css\" rel=\"stylesheet\">\r\n");
      out.write("   \r\n");
      out.write("    \r\n");
      out.write("  </head>\r\n");
      out.write("  <body>\r\n");
      out.write("    \r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("  <header class=\"blog-header lh-1\" style=\"padding-top: 20px\">\r\n");
      out.write("    <div class=\"row flex-nowrap justify-content-between align-items-center\">\r\n");
      out.write("      <div class=\"col-4 pt-1\">\r\n");
      out.write("      	<img src=\"https://i.esdrop.com/d/f/bkx1JZ8DmV/SuSEUgXOna.png\" alt=\"아로몰로로고\" style=\"width:200px; padding:0; margin:0;\"/>\r\n");
      out.write("      </div>\r\n");
      out.write("      \r\n");
      out.write("      ");
      out.write("\r\n");
      out.write("      <div class=\"col-4 text-center\">\r\n");
      out.write("      	<a class=\"blog-header-logo basic-color button-color\" href=\"mainhome.jsp\" style=\"font-size:4rem;\">냥by냥</a>\r\n");
      out.write("      </div>\r\n");
      out.write("      \r\n");
      out.write("      ");
      out.write("\r\n");
      out.write("      <div class=\"col-4 d-flex justify-content-end align-items-center\">\r\n");
      out.write("     	<input type=\"text\"  name=\"searchblock\"/>\r\n");
      out.write("     	");
      out.write("\r\n");
      out.write("        <a class=\"link-secondary\" href=\"https://naver.com\" aria-label=\"Search\">\r\n");
      out.write("          <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"20\" height=\"20\" fill=\"none\" stroke=\"currentColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"2\" class=\"mx-2\" role=\"img\" viewBox=\"0 0 24 24\"><title>Search</title><circle cx=\"10.5\" cy=\"10.5\" r=\"7.5\"/><path d=\"M21 21l-5.2-5.2\"/></svg>\r\n");
      out.write("        </a>\r\n");
      out.write("        <a class=\"btn btn-sm btn-outline-secondary login-hover\" href=\"join.jsp\">회원가입</a>  \r\n");
      out.write("\r\n");
      out.write("        <a class=\"btn btn-sm btn-outline-secondary login-hover\" href=\"login.jsp\" style=\"margin: 10px;\">로그인</a>  \r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </header>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"nav-scroller py-1 mb-2\">\r\n");
      out.write("    <nav class=\"nav d-flex justify-content-around\" style=\"text-align:center\">\r\n");
      out.write("      <a class=\"p-2 link-secondary nav-font-color\" href=\"dry.jsp\">건식 사료</a>\r\n");
      out.write("      <a class=\"p-2 link-secondary nav-font-color\" href=\"#\">습식 사료(준비중)</a>\r\n");
      out.write("      <a class=\"p-2 link-secondary nav-font-color\" href=\"community.jsp\">커뮤니티</a> <a class=\"p-2 link-secondary nav-font-color\" href=\"question.jsp\">건의사항</a>\r\n");
      out.write("    </nav>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<main class=\"container\">\r\n");
      out.write("  <div class=\"p-4 p-md-5 mb-4 rounded\" style=\"background-color:#252221\">\r\n");
      out.write("    <div class=\"col-md-10 px-0\">\r\n");
      out.write("      <h1 class=\"display-4 fst-italic\" style=\"color:white\">고양이 사료 <br> 왜 이렇게 한눈에  보기 힘들까!</h1>\r\n");
      out.write("      <p class=\"lead my-3\" style=\"color:white\">냥바냥이 집사님들의 사료 선택을 도와드립니다.</p>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  <div class=\"row g-5\">\r\n");
      out.write("    <div class=\"\" \">\r\n");
      out.write("      <h1 class=\"pb-4 mb-4 border-bottom basic-color\">\r\n");
      out.write("        주성분 냥바냥 등급\r\n");
      out.write("      </h1>\r\n");
      out.write("\r\n");
      out.write("      <article class=\"blog-post\">  \r\n");
      out.write("		    ");

      // 1. JDBC 드라이버 로딩
      Class.forName("org.h2.Driver");
  
      Connection conn = null; // DBMS와 Java연결객체
      Statement stmt = null; // SQL구문을 실행
      ResultSet rs = null; // SQL구문의 실행결과를 저장
  
      try
      {
            String jdbcDriver = "jdbc:h2:tcp://localhost/~/pt";
   
            String query = "select * from nyeong";
   
            // 2. 데이터베이스 커넥션 생성
            conn = DriverManager.getConnection(jdbcDriver);
   
            // 3. Statement 생성
            stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
   
            // 4. 쿼리 실행
            rs = stmt.executeQuery(query);
     
      out.write("\r\n");
      out.write("            \r\n");
      out.write("        <p>\r\n");
      out.write(" 	       <h5 class=\"margin-top\"><a href=\"\" class=\"basic-color button-color\">3 등급</a></h5> \r\n");
      out.write("		       원료 통칭(가금육) <br />		<hr />\r\n");
      out.write("           \r\n");
      out.write(" 		<table class=\"table\" style=\"font-size:14px\" >\r\n");
      out.write(" 			<tr>\r\n");
      out.write(" 	 			<th>사료명</th>\r\n");
      out.write(" 	 			<th style=\"text-align:center\">그레인<br />프리</th>\r\n");
      out.write(" 	 			<th style=\"text-align:center\">주성분</th>\r\n");
      out.write(" 	 			<th style=\"text-align:center\">탄수화물<br />(%)</th>\r\n");
      out.write(" 	 			<th style=\"text-align:center\">단백질<br />(%)</th>\r\n");
      out.write(" 	 			<th style=\"text-align:center\">지방<br />(%)</th>\r\n");
      out.write(" 	 			<th style=\"text-align:center\">조섬유<br />(%)</th>\r\n");
      out.write(" 	 			<th style=\"text-align:center\">조회분<br />(%)</th>\r\n");
      out.write(" 	 			<th style=\"text-align:center\">인<br />(%)</th>\r\n");
      out.write(" 	 			<th style=\"text-align:center\">냥바냥<br />등급</th>\r\n");
      out.write(" 		    </tr>\r\n");
      out.write("            \r\n");
      out.write("         ");
  while (rs.next()) {
			if (rs.getInt("grade") == 3) { 
      out.write("\r\n");
      out.write("\r\n");
      out.write("			<tr>\r\n");
      out.write("			   <td>");
      out.print( rs.getString("catfoodname") );
      out.write("</td>\r\n");
      out.write("			   <td style=\"text-align:center\">\r\n");
      out.write("			    ");
 if (rs.getString("grainfree").equals("1")) { 
      out.write("\r\n");
      out.write("			            ○\r\n");
      out.write("			    ");
 } else { 
      out.write("\r\n");
      out.write("			         X\r\n");
      out.write("				 ");
 } 
      out.write("\r\n");
      out.write("			     </td>\r\n");
      out.write("			    <td style=\"text-align:center\">");
      out.print( rs.getString("first") );
      out.write("</td>\r\n");
      out.write("			    <td style=\"text-align:center\">");
      out.print( rs.getDouble("carbo") );
      out.write("</td>\r\n");
      out.write("			     <td style=\"text-align:center\">");
      out.print( rs.getDouble("protein") );
      out.write("</td>\r\n");
      out.write("			    <td style=\"text-align:center\">");
      out.print( rs.getDouble("fat") );
      out.write("</td>\r\n");
      out.write("			    <td style=\"text-align:center\">");
      out.print( rs.getDouble("ca") );
      out.write("</td>\r\n");
      out.write("			    <td style=\"text-align:center\">\r\n");
      out.write("			        ");
 if (rs.getString("ca") == null) { 
      out.write("\r\n");
      out.write("			            알수없음\r\n");
      out.write("			        ");
 } else { 
      out.write("\r\n");
      out.write("			            ");
      out.print( rs.getDouble("ca") );
      out.write("\r\n");
      out.write("			        ");
 } 
      out.write("\r\n");
      out.write("			        </td>\r\n");
      out.write("			        <td style=\"text-align:center\">");
      out.print( rs.getDouble("p") );
      out.write("</td>\r\n");
      out.write("			       	<td style=\"text-align:center\">");
      out.print( rs.getInt("grade") );
      out.write("</td>\r\n");
      out.write("		    </tr>\r\n");
      out.write("		    \r\n");
      out.write("\r\n");

	            }
		      }
 
		
      out.write("\r\n");
      out.write("			</table>\r\n");
      out.write("         \r\n");
      out.write("         ");
 }catch(SQLException ex){
		            out.println(ex.getMessage());
		            ex.printStackTrace();
		      }finally{
		            // 6. 사용한 Statement 종료
		            if(rs != null) try { rs.close(); } catch(SQLException ex) {}
		            if(stmt != null) try { stmt.close(); } catch(SQLException ex) {}
		   
		            // 7. 커넥션 종료
		            if(conn != null) try { conn.close(); } catch(SQLException ex) {}
		      }
		
      out.write("\r\n");
      out.write("		       \r\n");
      out.write("		   \r\n");
      out.write("        </p>\r\n");
      out.write("    </article>\r\n");
      out.write("   </div>\r\n");
      out.write("\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("</main>\r\n");
      out.write("\r\n");
      out.write("<footer class=\"blog-footer\">\r\n");
      out.write("    <a href=\"mainhome.jsp\">상단으로 돌아가기</a>\r\n");
      out.write("</footer>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
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
