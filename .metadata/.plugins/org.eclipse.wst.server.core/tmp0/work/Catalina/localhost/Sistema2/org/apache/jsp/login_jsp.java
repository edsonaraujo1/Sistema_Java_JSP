/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.35
 * Generated at: 2013-03-18 12:28:20 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.text.*;
import java.sql.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/config.jsp", Long.valueOf(1362954014485L));
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

// Titulo do Sistema
String w_titulo   = "Sistema JSP";
String w_versaox  = "Atualizado em 10/03/2013 às 17:12";

// Variaveis Banco de Dados
String driver_pes     = "com.mysql.jdbc.Driver";
String db_dados_pes   = "agenda";
String connection_pes = "jdbc:mysql://localhost:3306/" + db_dados_pes;
String user_pes       = "root";
String password_pes   = "12345";



      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Sistema XP</title>\r\n");
      out.write("<link rel='shortcut icon' href='imagens/favicon.ico'>\r\n");
      out.write("\r\n");
      out.write("<link type=\"text/css\" rel=\"stylesheet\" href=\"menu.css\"/>\r\n");
      out.write("\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("body {\r\n");
      out.write("\r\n");
      out.write("background-image: url('imagens/logosys.jpg');\r\n");
      out.write("background-attachment: fixed\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".normal {\r\n");
      out.write("\t\r\n");
      out.write("\tbackground-color: white;\r\n");
      out.write("}\r\n");
      out.write(".anormal {\r\n");
      out.write("\t\tbackground-color: Lavender;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script language=\"JavaScript\"><!--\r\n");
      out.write("\r\n");
      out.write("document.onkeydown = keyCatcher;\r\n");
      out.write("\r\n");
      out.write("function keyCatcher() \r\n");
      out.write("{\r\n");
      out.write("   var e = event.srcElement.tagName;\r\n");
      out.write("\r\n");
      out.write("   if (event.keyCode == 8 && e != \"INPUT\" && e != \"TEXTAREA\") \r\n");
      out.write("   {\r\n");
      out.write("      event.cancelBubble = true;\r\n");
      out.write("      event.returnValue = false;\r\n");
      out.write("   }\r\n");
      out.write("}\r\n");
      out.write("//-->\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");

// Rotinas Principais

// config.jsp
// login.jsp
// logar.jsp
// menu1.jsp


      out.write("\r\n");
      out.write("\r\n");


String situa_1 = "";
String w_nome3 = "";
String sol_1   = "";

//Cria Variavel de sessao
String objeto = "";
// Grava informacoa na sessao
session.setAttribute("minha_sessao1", objeto);

//Resgata informacao gravada na sessao
String Minha_sessao1 = (String) session.getAttribute("minha_sessao1");

if (Minha_sessao1 != null){
	w_nome3 = Minha_sessao1;
}

//Saldação ao usuario

int w_Hora = Integer.parseInt((new java.text.SimpleDateFormat("HH")).format(new java.util.Date()));

String w_AMPM = new java.text.SimpleDateFormat("a").format(new java.util.Date());

if (w_Hora <= 0) {
    situa_1 = "Boa Madrugada";
    sol_1   = "imagens/noite.png";
    
}
if (w_Hora > 0 && w_Hora <= 6) {
    situa_1 = "Boa Madrugada";
    sol_1   = "imagens/noite.png";
    
}
if (w_Hora > 6 && w_Hora <= 12) {
    situa_1 = "Bom Dia";
    sol_1   = "imagens/dia.png";
    
}
if (w_Hora > 12 && w_Hora <= 18) {
    situa_1 = "Boa Tarde";
    sol_1   = "imagens/dia.png";
    
}
if (w_Hora >= 19 && w_Hora <= 23) {
    situa_1 = "Boa Noite";
    sol_1   = "imagens/noite.png";
    
}

String w_bomdia = situa_1 + " Seja Bem Vindo, " + w_nome3 + " hoje e, " + new java.text.SimpleDateFormat("EEEE dd 'de' MMMM 'de' yyyy").format(new java.util.Date()) + "<br />";

String w_login        = request.getParameter("login");

Class.forName(driver_pes);
Connection Con = DriverManager.getConnection(connection_pes, user_pes, password_pes);
Statement stm = Con.createStatement();

ResultSet res = stm.executeQuery("SELECT * FROM registros");


      out.write("\r\n");
      out.write("\r\n");
      out.write("<body  style=\" margin-left: 0px;  margin-top: 0px;  margin-right: 0px;  margin-bottom: 0px; \" onkeydown=\"javascript:if (event.KeyCode==13) event.KeyCode=9; javascript:document.onkeydown = keyCatcher();\" onload=\"document.form1.nome_log.focus();\">\r\n");
      out.write("\r\n");
      out.write("\t<div align=\"left\">  <table width=\"200\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("\t\r\n");
      out.write("\t    <tr>\r\n");
      out.write("        <td>\r\n");
      out.write("        \r\n");
      out.write("        <div align=\"center\">\r\n");
      out.write("          <table width=\"133\" border=\"0\">\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td width=\"127\">                <div align=\"center\"><font color=\"#339999\" size=\"2\">off-line</font></div></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td><div align=\"center\"><img src=\"imagens/kitt.gif\" width=\"65\" height=\"4\"></div></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("          </table>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        </td>\r\n");
      out.write("        <td width=\"876\"><div align=\"center\">\r\n");
      out.write("\r\n");
      out.write("        ");
 out.println("<img src='" + sol_1 + "' width=20  height=17  border=0  />"); 
      out.write("\r\n");
      out.write("        \r\n");
      out.write("        <font face=\"Verdana\" size=\"2\"><b><i>");
 out.println(w_bomdia); 
      out.write("</i></b></font></div></td>\r\n");
      out.write("        <td width=\"7\">&nbsp;</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td><div align=\"center\">&nbsp;</div></td>\r\n");
      out.write("      <td><table width=\"200\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("        <tr>\r\n");
      out.write("          <td><img src=\"imagens/px1.gif\" width=\"3\" height=\"30\"></td>\r\n");
      out.write("          <td><img src=\"imagens/cadastro.png\" width=\"95\" height=\"28\"></td>\r\n");
      out.write("          <td><img src=\"imagens/px1.gif\" width=\"4\" height=\"30\"></td>\r\n");
      out.write("          <td><img src=\"imagens/contribuicao.png\" width=\"95\" height=\"28\"></td>\r\n");
      out.write("          <td><img src=\"imagens/px1.gif\" width=\"4\" height=\"30\"></td>\r\n");
      out.write("          <td><img src=\"imagens/relatorios.png\" width=\"95\" height=\"28\"></td>\r\n");
      out.write("          <td><img src=\"imagens/px1.gif\" width=\"4\" height=\"30\"></td>\r\n");
      out.write("          <td><img src=\"imagens/saude.png\" width=\"95\" height=\"28\"></td>\r\n");
      out.write("          <td><img src=\"imagens/px1.gif\" width=\"4\" height=\"30\"></td>\r\n");
      out.write("          <td><img src=\"imagens/juridico.png\" width=\"95\" height=\"28\"></td>\r\n");
      out.write("          <td><img src=\"imagens/px1.gif\" width=\"4\" height=\"30\"></td>\r\n");
      out.write("          <td><img src=\"imagens/caixa.png\" width=\"95\" height=\"28\"></td>\r\n");
      out.write("          <td><img src=\"imagens/px1.gif\" width=\"4\" height=\"30\"></td>\r\n");
      out.write("          <td><img src=\"imagens/website.png\" width=\"95\" height=\"28\"></td>\r\n");
      out.write("          <td><img src=\"imagens/px1.gif\" width=\"4\" height=\"30\"></td>\r\n");
      out.write("          <td><img src=\"imagens/operador.png\" width=\"95\" height=\"28\"></td>\r\n");
      out.write("          <td><img src=\"imagens/px1.gif\" width=\"4\" height=\"30\"></td>\r\n");
      out.write("          <td><img src=\"imagens/help.png\" width=\"95\" height=\"28\"></td>\r\n");
      out.write("          <td><img src=\"imagens/px1.gif\" width=\"3\" height=\"30\"></td>\r\n");
      out.write("        </tr>\r\n");
      out.write("      </table></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr>\r\n");
      out.write("      <td>&nbsp;</td>\r\n");
      out.write("    </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("        <td>&nbsp;</td>\r\n");
      out.write("        <td>\r\n");
      out.write("   <br />\r\n");
      out.write("   <br />\r\n");
      out.write("   <br />\r\n");
      out.write("        \r\n");
      out.write("   <table  border=\"15\" align=\"center\" bordercolor ='#5A9CB1' bgcolor=\"#FFFFFF\">\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td height=\"28\" bgcolor=\"#FFF8DC\">\r\n");
      out.write("\r\n");
 if(w_login != null && w_login.equals("falhou")){ 
      out.write("\r\n");
      out.write("\r\n");
      out.write("   <font face=arial color=\"red\"><b>*** Usuario ou Senha Invalido ***</b></font>\r\n");
      out.write("      \r\n");
}else{
      out.write("\r\n");
      out.write("\r\n");
      out.write("   <font face=arial><b>*** Digite sua Senha de Acesso ***</b></font>\r\n");
      out.write("   \r\n");
}
      out.write("       \r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("      <form name=\"form1\" method=\"post\" autocomplete=\"off\" action=\"logar.jsp?acao=logar\">\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("    <th height=\"70\" bgcolor=\"#FFF8DC\">\r\n");
      out.write("\t<table width=\"10\" height=\"64\" border=\"0\" align=\"center\">\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td width=\"97\" height=\"29\"><div align=\"right\"><font color=\"#FFFFFF\">......</font><font face=arial><b>Usu&aacute;rio:</b></font></div></td>\r\n");
      out.write("        <td width=\"137\"><div align=\"left\"><input type=\"text\" name=\"nome_log\" style=\"width:125px; height:25px; text-transform: uppercase;\" onfocus=\"this.className='anormal'\" onblur=\"this.className='normal'\" onchange=\"this.value.toUpperCase\"></div>          </td>\r\n");
      out.write("        <td width=\"17\"><img src=\"imagens/px1.gif\" width=\"30\" height=\"10\"></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td height=\"29\"><div align=\"right\"><font face=arial><b>Senha:</b></font></div></td>\r\n");
      out.write("        <td><div align=\"left\"><input type=\"password\" name=\"pwd\"  style=\"width:125px; height:25px; password-transform: uppercase;\" onfocus=\"this.className='anormal'\" onblur=\"this.className='normal'\" onchange=\"this.value.toUpperCase\" /></div>          </td>\r\n");
      out.write("        <td><div align=\"left\"><a href=\"ajuda.jsp\"><img src=\"imagens/ajud-1.png\" width=\"13\" height=\"13\" border=\"0\"></a></div></td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </table>\r\n");
      out.write("\t\r\n");
      out.write("\t<table width=\"100%\" border=\"0\">\r\n");
      out.write("      <tr>\r\n");
      out.write("        <td width=\"6%\" align=\"center\"><img src=\"imagens/cadeado.gif\" width=\"90\" height=\"41\" border=\"0\"></td>\r\n");
      out.write("        <td width=\"38%\" align=\"center\"><font size=\"1\"><img src=\"imagens/px1.gif\" width=\"1\" height=\"1\"><br>\r\n");
      out.write("        </font>\r\n");
      out.write("          <input name=\"guias\" type=image src=\"imagens/login.PNG\" width=\"92\" height=\"22\" /></td>\r\n");
      out.write("        <td width=\"56%\">&nbsp;</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("    </table>\r\n");
      out.write("\t\r\n");
      out.write("\t</th>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("  </form>\r\n");
      out.write("</table >\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("        &nbsp;</td>\r\n");
      out.write("        <td>&nbsp;</td>\r\n");
      out.write("      </tr>\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("  </table>\r\n");
      out.write("  <br/>\r\n");
      out.write("  <br/>\r\n");
      out.write("  <br/>\r\n");
      out.write("  \r\n");
      out.write("  <div align=center>\r\n");
      out.write("  \r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("<script> window.focus();</script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("<script> window.focus();</script>\r\n");
      out.write("<script type=\"text/javascrip\">document.form1.nome_log.focus(); </script>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
