<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script language="JavaScript">
<!--

//document.onkeydown = keyCatcher;

function keyCatcher() 
{
   var e = event.srcElement.tagName;

   if (event.keyCode == 8 && e != "INPUT" && e != "TEXTAREA") 
   {
      event.cancelBubble = true;
      event.returnValue = false;
   }
   
   if (event.keyCode == 27) 
   {
		window.location="";
   }
   
}

window.focus();
document.form1.nome_log.focus();

//-->
</script>

<style>

.normal {
	
	background-color: white;
}
.anormal {
		background-color: Lavender;
}

</style>


</head>

<%@ page import="java.util.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="config.jsp" %>

<%

//Declaracao de Variaveis Usadas no JSP
String situa_1 = "";
String vr1 = request.getParameter("opcao");
String ww_mensage = "";
int id_s            = 0;
String w_tabela = "ADMS"; // Tabela Banco
String w_nome3 = "";
String w_opcao = "";
String sol_1   = "";
String sql1    = "";
String sql2    = "";
String sql3    = "";
String sql4    = "";
String sql5    = "";

String tabelap = "";
String per1    = "";
String per2    = "";
String per3    = "";
String per4    = "";

String campo1  = "";
String campo2  = "";
String campo3  = "";
String campo4  = "";
String campo5  = "";
String campo6  = "";
String campo7  = "";
String campo8  = "";
String campo9  = "";
String campo10 = "";
String campo11 = "";
String campo12 = "";
String campo13 = "";
String campo14 = "";
String campo15 = "";

String bus_cod    = request.getParameter("Cod_2");
%>

<%@ include file="sessao1.jsp" %>


	<body  style=" margin-left: 0px;  margin-top: 0px;  margin-right: 0px;  margin-bottom: 0px; " onkeydown="javascript:if (event.KeyCode==13) event.KeyCode=9; javascript:document.onkeydown = keyCatcher();" onload="document.form1.nome_log.focus();">
	
	<div align="left">  <table width="200" border="0" cellpadding="0" cellspacing="0">
	
	    <tr>
        <td>
        
	    <div align="center">
            <table width="133" border="0">
        
				<div style="Z-INDEX: 600; LEFT: 00px; WIDTH: 616px; POSITION: absolute; TOP: 0px; HEIGHT: 19px">
				
				<IFRAME src="user.jsp" width="130" height="22" scrolling="no" frameborder="0" align="left"></IFRAME>
				
				</div>
        
            </table>
        </div>
        
        </td>
        <td width="876"><div align="center">

        <% out.println("<img src='" + sol_1 + "' width=20  height=17  border=0  />"); %>
        
        <font face="Verdana" size="2"><b><i><% out.println(w_bomdia); %></i></b></font></div></td>
        <td width="7">&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center"><img src="imagens/carta.gif" width="40" height="31"></div></td>
	      <td><table width="200" border="0" cellpadding="0" cellspacing="0">
	        <tr>
	        
	        
          <td><img src="imagens/px1.gif" width="3" height="30"></td>
          <td><img src="imagens/cadastro.png" width="95" height="28"></td>
          <td><img src="imagens/px1.gif" width="4" height="30"></td>
          <td><img src="imagens/contribuicao.png" width="95" height="28"></td>
          <td><img src="imagens/px1.gif" width="4" height="30"></td>
          <td><img src="imagens/relatorios.png" width="95" height="28"></td>
          <td><img src="imagens/px1.gif" width="4" height="30"></td>
          <td><img src="imagens/saude.png" width="95" height="28"></td>
          <td><img src="imagens/px1.gif" width="4" height="30"></td>
          <td><img src="imagens/juridico.png" width="95" height="28"></td>
          <td><img src="imagens/px1.gif" width="4" height="30"></td>
          <td><img src="imagens/caixa.png" width="95" height="28"></td>
          <td><img src="imagens/px1.gif" width="4" height="30"></td>
          <td><img src="imagens/website.png" width="95" height="28"></td>
          <td><img src="imagens/px1.gif" width="4" height="30"></td>
          <td><img src="imagens/operador.png" width="95" height="28"></td>
          <td><img src="imagens/px1.gif" width="4" height="30"></td>
          <td><img src="imagens/help.png" width="95" height="28"></td>
          <td><img src="imagens/px1.gif" width="3" height="30"></td>
          
          
        </tr>			
	      </table></td>
	            <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td align="left" valign="top"><font color="#000000" size="1"><% out.println(w_versaox); %></font></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td align="left" valign="top">
        <!--  Inicio do Form -->


         
								
		 <div align=center>
							

<table width="633"  border="16" bordercolor="#5A9CB1" bgcolor="#FFFFCC">
            <tr>
              <td><div align="center">
                  <table width="100%" height="0%" border="1" cellpadding="0" cellspacing="3" bordercolor="#5A9CB1">
                    <tr>
                      <td width="28%" height="113" bgcolor="#FFFFFF"><div align="center"><b><font size="5" face="Verdana" color="#5A9CB1"><img src="imagens/java_jsp.jpg" width="146" height="91"></font></b></div></td>
                      <td width="48%" bgcolor="#FFFFFF"><div align="center"><b><font size="2" face="Verdana">
					  
						  
					  
					  </font></b></div></td>
                      <td width="24%" bgcolor="#FFFFFF"><div align="center"><img src="imagens/Mysql.jpg" width="129" height="80"></div></td>
                    </tr>
                </table>
                  <table width="95%" border="0">
                    <tr>
                      <td height="127"><div align="center">
                        <table width="580" height="125" border="0">
                          <tr>
                            <td width="574" height="121"><div align="center">
                              <table width="503" border="0" cellspacing="0">
                                <tr>
                                  <td width="407"><strong><font size="3" face="Arial, Helvetica, sans-serif">Programador.:<em> <a href="mailto.edsonaraujo1@hotmail.com">Edson de Araujo</a></em> (Desenvolvedor) </font></strong></td>
                                  <td width="92"><div align="center"><a href="menu1.jsp"><img src="imagens/botaoazul24.PNG" width="92" height="22" border="0"></a></div></td>
                                </tr>
                                <tr>
                                  <td><strong><font size="3" face="Arial, Helvetica, sans-serif">Programador.:</font> <font size="3" face="Arial, Helvetica, sans-serif"><a href="mailt.xxxxxxx@.com.br"><em>xxxxxxxxxxxxxxxx</em></a> (Desenvolvedor) </font></strong></td>
                                  <td>&nbsp;</td>
                                </tr>
                              </table>
                              <font size="3" face="Arial, Helvetica, sans-serif"><strong>Desenvolvido em Java JSP/MySQL/Server Apache TomCat 7 </strong><br>
                              <strong>Este Programa esta protegido Pela Lei: 9.610, de 02/1998. Copyrigtht(c) </strong></font><strong><font face="Arial, Helvetica, sans-serif"><br>
                               
                                </font></strong>                              
                                <table width="510" height="32" border="1" cellpadding="0" cellspacing="0" bordercolor="#5A9CB1">
                                  <tr>
                                    <td height="29" bgcolor="#FFFFFF"><div align="center"><strong><font face="Arial, Helvetica, sans-serif">Usuario...: <% out.println(Minha_sessao1); %> Vers&atilde;o 1.0 </font></strong></div></td>
                                  </tr>
                                </table>
                                <strong><font face="Arial, Helvetica, sans-serif">                                </font></strong></div></td>
                          </tr>
                        </table>
                      </div></td>
                    </tr>
                  </table>
                  <table width="100%" border="1" bordercolor="#5A9CB1">
                    <tr>
                      <td width="72%" height="116" bgcolor="#FFFFFF"><div align="center"><font size="4"><strong><font face="Arial, Helvetica, sans-serif">Este Produto esta Licenciado para:<br>
                                <font color="#FF0000"><em>Sindificios -Sind. Empreg. Edif. SP</em></font><br>
                      CNPJ/CPF: 43.070.481/0001-14<br>
                      Criado em.: <font color="#66CC00">15/03/2013 &agrave;s 15:23</font><br>
                      Ultima Atualiza&ccedil;&atilde;o em.: <font color="#0000FF">15/03/2013 &agrave;s 15:23
                      </font></font></strong></font></div></td>
                      <td width="28%" bgcolor="#FFFFFF"><div align="center"><img src="imagens/sysmp.PNG" width="137" height="112"></div></td>
                    </tr>
                  </table>
              </div></td>
            </tr>
          </table>





		 </div>


        <!-- Fim do Form -->
        </td>
        <td>&nbsp;</td>
      </tr>

	  </table>
	  <br/>
	  <br/>
	  <br/>
	  
	  <div align=center>
	  
	</div>
	
	</div>
	
<div align="center">  


</div>
	
	
	
	</body>
	
</html>
<%
}
%>

