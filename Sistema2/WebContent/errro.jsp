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
<%@ include file="config.jsp" %>

<%

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
String w_SEMA = new java.text.SimpleDateFormat("EEEE").format(new java.util.Date());

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

%>



	<body  style=" margin-left: 0px;  margin-top: 0px;  margin-right: 0px;  margin-bottom: 0px; " onkeydown="javascript:if (event.KeyCode==13) event.KeyCode=9; javascript:document.onkeydown = keyCatcher();" onload="document.form1.nome_log.focus();">
	
	<div align="left">  <table width="200" border="0" cellpadding="0" cellspacing="0">
	
	    <tr>
        <td>
        
        <div align="center">
          <table width="133" border="0">
            <tr>
              <td width="127">                <div align="center"><font color="#339999" size="2">off-line</font></div></td>
            </tr>
            <tr>
              <td><div align="center"><img src="imagens/kitt.gif" width="65" height="4"></div></td>
            </tr>
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



         <br><br><br>
								
		 <div align=center>
							
		 <table align=center border='15' bgcolor='#FFF8DC' bordercolor ='#5A9CB1'>
		 <tr>
		 <td align=center><b>
		 <font color = #FF0000>&nbsp;&nbsp; ERRO ACESSO NÃO PERMITIDO !!!</font></b><br>
							   &nbsp;&nbsp;Seu computador não tem permissão,<br>
							   &nbsp;&nbsp;para uso na <b><% out.println(w_SEMA); %></b>, caso<br>
							   &nbsp;&nbsp;seja nessessario entre em contato com o<br>
							   <b>ADMINISTRADOR DO SISTEMA<br>
							</b>
							<table align=center>
							<form method='POST' action='index.html'>
							<td><input type=image name='consulta' src='imagens/botao_voltar.PNG'></td>
							</form>  
							</table>
							</td>
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
