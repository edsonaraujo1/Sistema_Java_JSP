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

%>

<%@ include file="sessao1.jsp" %>


	<body  style=" margin-left: 0px;  margin-top: 0px;  margin-right: 0px;  margin-bottom: 0px; " onkeydown="javascript:if (event.KeyCode==13) event.KeyCode=9; javascript:document.onkeydown = keyCatcher();" onload="document.form1.nome_log.focus();">
	
	<div align="left">  <table width="200" border="0" cellpadding="0" cellspacing="0">
	
	    <tr>
        <td><div align="center">
          <table width="133" border="0">
            <tr>
              <td width="127">                <div align="center"><font color="#339999" size="2">1 usu&aacute;rio(s) on-line </font></div></td>
            </tr>
            <tr>
              <td><div align="center"><img src="imagens/kitt.gif" width="65" height="4"></div></td>
            </tr>
          </table>
        </div></td>
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
        <td align="left" valign="top"><font color="#000000" size="1">Atualizado em 12/02/2013 às 18:31</font></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td align="left" valign="top">
        <!--  Inicio do Form -->


<%	
		// Declaracao de Variaveis
		String id2     = "";
		String Edit1   = "";
		String Edit2   = "";
		String Edit3   = "";
		String Edit4   = "";
		String Edit5   = "";
		String Edit6   = "";

		// Inicio da Rotina de Apresentação
		sql3 = "SELECT * FROM permissoes ORDER BY id DESC";
		
		ResultSet res3 = stm.executeQuery(sql3);
		
		//out.println(res2.next() + "<br>");


%>
<div align="center">
		<table width="200" border="16" bgcolor="#FFFFFF" bordercolor="#5A9CB1">
  <tr>
    <td><table width="200" border="1">
      <tr>
        <td><b><font size="3" face="Verdana">Login</font></b></td>
        <td><b><font size="3" face="Verdana">Tabela</font></b></td>
        <td><b><font size="3" face="Verdana">Incluir</font></b></td>
        <td><b><font size="3" face="Verdana">Alterar</font></b></td>
        <td><b><font size="3" face="Verdana">Excluir</font></b></td>
        <td><b><font size="3" face="Verdana">Imprimir</font></b></td>
        <td></td>
        <td></td>
      </tr>


<%
		while(res3.next()){
			
			id2    = res3.getString("id");
			Edit1  = res3.getString("login");
			Edit2  = res3.getString("tabela");
			Edit3  = res3.getString("incluir");
			Edit4  = res3.getString("alterar");
			Edit5  = res3.getString("excluir");
			Edit6  = res3.getString("imprimir");

%>			
			
      <tr>


        <td><% out.println(Edit1); %></td>
        <td><% out.println(Edit2); %></td>
        <td><% out.println(Edit3); %></td>
        <td><% out.println(Edit4); %></td>
        <td><% out.println(Edit5); %></td>
        <td><% out.println(Edit6); %></td>
        <td><img src="imagens/editar.gif"></td>
        <td><img src="imagens/excluir.gif"></td>
        
        
      </tr>




<%			
}
%>	






    </table></td>
  </tr>
  <tr>
    <td><img src="imagens/novo.gif"></td>
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
	</body>
	
</html>
<%
}
%>

