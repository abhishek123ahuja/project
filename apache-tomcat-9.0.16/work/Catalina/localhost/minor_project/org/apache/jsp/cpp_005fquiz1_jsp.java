/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.16
 * Generated at: 2020-04-27 10:25:46 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class cpp_005fquiz1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
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
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        \n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" \n");
      out.write("              integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" \n");
      out.write("              crossorigin=\"anonymous\">\n");
      out.write("        \n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            textarea\n");
      out.write("            {\n");
      out.write("                background-color: #97e6dc;\n");
      out.write("                border-radius: 25px;\n");
      out.write("                height : auto;\n");
      out.write("                width: 80%;\n");
      out.write("                resize : none;\n");
      out.write("                \n");
      out.write("                text-align: left;\n");
      out.write("             \n");
      out.write("                padding: 50px;\n");
      out.write("                margin: 50px;\n");
      out.write("                border: 2px solid greenyellow;\n");
      out.write("                font-weight: bold;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .disable-text{ \n");
      out.write("                -webkit-user-select:none; \n");
      out.write("                -webkit-touch-callout:none; \n");
      out.write("                     -moz-user-select:none; \n");
      out.write("                     -ms-user-select:none; \n");
      out.write("                     user-select:none;\n");
      out.write("                   \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            #opt\n");
      out.write("            {\n");
      out.write("                background-color: white;\n");
      out.write("                border-radius: 25px;\n");
      out.write("                width: 80%;\n");
      out.write("                border: 1px solid black;\n");
      out.write("                margin-left: 50px;\n");
      out.write("                margin-right:  50px;\n");
      out.write("                padding: 50px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .id1\n");
      out.write("            {\n");
      out.write("                border: 2px solid #047a91;\n");
      out.write("                background-color: #4abd96;\n");
      out.write("                border-radius: 25px;\n");
      out.write("                margin-top: 50px;\n");
      out.write("                margin-bottom: 30px;\n");
      out.write("                padding: 40px;\n");
      out.write("                font-size: 200%;\n");
      out.write("                color: #91042c;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            body{\n");
      out.write("                background-image: url(\"hd2.jpg\");\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("  \n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            \n");
      out.write("            \n");
      out.write("             var total_seconds = 60*1;\n");
      out.write("            \n");
      out.write("            var minutes = parseInt(total_seconds/60);\n");
      out.write("            var seconds = parseInt(total_seconds%60);\n");
      out.write("            function countDownTimer(){\n");
      out.write("                if(seconds < 10){\n");
      out.write("                    seconds= \"0\"+ seconds ;\n");
      out.write("                }if(minutes < 10){\n");
      out.write("                    minutes= \"0\"+ minutes ;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                document.getElementById(\"quiz-time-left\").innerHTML = \"Time Left : \"+minutes+\"minutes \"+seconds+\"seconds\";\n");
      out.write("                if(total_seconds <= 1){\n");
      out.write("                    sessionStorage.removeItem('total_seconds');\n");
      out.write("                    document.forms[\"xyz\"].submit();\n");
      out.write("                } else {\n");
      out.write("                    total_seconds = total_seconds -1 ;\n");
      out.write("                    minutes = parseInt(total_seconds/60);\n");
      out.write("                    seconds = parseInt(total_seconds%60);\n");
      out.write("                    sessionStorage.setItem(\"total_seconds\",total_seconds)\n");
      out.write("                    setTimeout(\"countDownTimer()\",1000);\n");
      out.write("\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            setTimeout(\"countDownTimer()\",1000);\n");
      out.write("            \n");
      out.write("        </script>\n");
      out.write("        \n");
      out.write("        <script>\n");
      out.write("            function formSubmit()\n");
      out.write("            {  \n");
      out.write("                sessionStorage.clear();\n");
      out.write("                document.forms[\"xyz\"].submit();\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <SCRIPT type=\"text/javascript\">\n");
      out.write("            window.history.forward();\n");
      out.write("            function noBack() { window.history.forward(); }\n");
      out.write("         </SCRIPT>\n");
      out.write("\n");
      out.write("            </head>\n");
      out.write("            <BODY onLoad=\"noBack();\"\n");
      out.write("            onpageshow=\"if (event.persisted) noBack();\" onUnload=\"\">   \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <form action=\"after_submit.jsp\" method=\"post()\" id=\"xyz\" class=\"container\" >\n");
      out.write("            \n");
      out.write("        <div class=\"id1\" id=\"quiz-time-left\" > </div>\n");
      out.write("        \n");
      out.write("        ");

         Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/quiz_system";
        String uname = "root";
        String pass = "";
        
        Connection conn = DriverManager.getConnection(url, uname, pass);
        Statement st = conn.createStatement();
        String q = "select * from cpp limit 10";
        
        session.setAttribute("course", "cpp");
        
        ResultSet rs = st.executeQuery(q);
        int cnt=0;
        while(rs.next())
        {
            
            //System.out.println("'ques:' "+cnt+" "+rs.getString(1)+"\t options \n"+rs.getString(2)+"\t"+rs.getString(3)+rs.getString(4)+"\t"+rs.getString(5)+"\t"+rs.getString(6));
            cnt++;
            String str = rs.getString(7);
            String large = "l";
            String med = "m";
            
            
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            ");

            if(str.equals(large))
            {
            
      out.write("\n");
      out.write("            \n");
      out.write("            <div class=\"disable-text\" oncopy=\"return false\" onpaste=\"return false\"> \n");
      out.write("            <textarea rows=\"15\">\n");
      out.write("             ");
      out.print(  "\nQues: "+cnt+"  \n\n"+rs.getString(1) +"\n");
      out.write(" </textarea>\n");
      out.write("             \n");
      out.write("             <div id=\"opt\" >\n");
      out.write("                  <input type=\"radio\" name=\"opt");
      out.print(cnt );
      out.write("\" value=\"2\"> ");
      out.print(  rs.getString(2) );
      out.write("<br>\n");
      out.write("                <input type=\"radio\" name=\"opt");
      out.print(cnt );
      out.write("\" value=\"3\"> ");
      out.print(  rs.getString(3) );
      out.write("<br>\n");
      out.write("                <input type=\"radio\" name=\"opt");
      out.print(cnt );
      out.write("\" value=\"4\"> ");
      out.print(  rs.getString(4) );
      out.write("<br>\n");
      out.write("                <input type=\"radio\" name=\"opt");
      out.print(cnt );
      out.write("\" value=\"5\"> ");
      out.print(  rs.getString(5) );
      out.write("<br>\n");
      out.write("                </div>\n");
      out.write("                </div>\n");
      out.write("         \n");
      out.write("         ");

            }
            
            else 
            {
                
      out.write("\n");
      out.write("                    \n");
      out.write("                <div class=\"disable-text\"> \n");
      out.write("                <textarea rows=\"5\"  oncopy=\"return false\" onpaste=\"return false\">\n");
      out.write("                ");
      out.print(  "\nQues: "+cnt+"  \n\n"+rs.getString(1) +"\n");
      out.write(" </textarea><br>\n");
      out.write("                <div id=\"opt\">\n");
      out.write("                  <input type=\"radio\" name=\"opt");
      out.print(cnt );
      out.write("\" value=\"2\"> ");
      out.print(  rs.getString(2) );
      out.write("<br>\n");
      out.write("                <input type=\"radio\" name=\"opt");
      out.print(cnt );
      out.write("\" value=\"3\"> ");
      out.print(  rs.getString(3) );
      out.write("<br>\n");
      out.write("                <input type=\"radio\" name=\"opt");
      out.print(cnt );
      out.write("\" value=\"4\"> ");
      out.print(  rs.getString(4) );
      out.write("<br>\n");
      out.write("                <input type=\"radio\" name=\"opt");
      out.print(cnt );
      out.write("\" value=\"5\"> ");
      out.print(  rs.getString(5) );
      out.write("<br>\n");
      out.write("                </div>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                ");

            }
        }
       
        st.close();
        conn.close();
         
      out.write("\n");
      out.write("         \n");
      out.write("         <br><br>\n");
      out.write("         \n");
      out.write("         <button   onclick=\"formSubmit()\" class=\"btn btn-primary btn-lg btn-block\">Submit Quiz</button>><br><br>\n");
      out.write("               \n");
      out.write("         </form>\n");
      out.write("         \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
