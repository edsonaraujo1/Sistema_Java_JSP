<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
        <td><div align="center">&nbsp;</div></td>
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
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
          <tr>
        <td>&nbsp;</td>
        <td>
   <br />
   <br />
   <br />
        
   <table  border="15" align="center" bordercolor ='#5A9CB1' bgcolor="#FFFFFF">

<tr>
<td height="28" bgcolor="#FFF8DC">

<% if(w_login != null && w_login.equals("falhou")){ %>

   <font face=arial color="red"><b>*** Usuario ou Senha Invalido ***</b></font>
      
<%}else{%>

   <font face=arial><b>*** Digite sua Senha de Acesso ***</b></font>
   
<%}%>       
</td>
</tr>

      <form name="form1" method="post" autocomplete="off" action="logar.jsp?acao=logar">

<tr>
    <th height="70" bgcolor="#FFF8DC">
	<table width="10" height="64" border="0" align="center">
      <tr>
        <td width="97" height="29"><div align="right"><font color="#FFFFFF">......</font><font face=arial><b>Usu&aacute;rio:</b></font></div></td>
        <td width="137"><div align="left"><input type="text" name="nome_log" style="width:125px; height:25px; text-transform: uppercase;" onfocus="this.className='anormal'" onblur="this.className='normal'" onchange="this.value.toUpperCase"></div>          </td>
        <td width="17"><img src="imagens/px1.gif" width="30" height="10"></td>
      </tr>
      <tr>
        <td height="29"><div align="right"><font face=arial><b>Senha:</b></font></div></td>
        <td><div align="left"><input type="password" name="pwd"  style="width:125px; height:25px; password-transform: uppercase;" onfocus="this.className='anormal'" onblur="this.className='normal'" onchange="this.value.toUpperCase" /></div>          </td>
        <td><div align="left"><a href="ajuda.jsp"><img src="imagens/ajud-1.png" width="13" height="13" border="0"></a></div></td>
      </tr>
    </table>
	
	<table width="100%" border="0">
      <tr>
        <td width="6%" align="center"><img src="imagens/cadeado.gif" width="90" height="41" border="0"></td>
        <td width="38%" align="center"><font size="1"><img src="imagens/px1.gif" width="1" height="1"><br>
        </font>
          <input name="guias" type=image src="imagens/login.PNG" width="92" height="22" /></td>
        <td width="56%">&nbsp;</td>
      </tr>
    </table>
	
	</th>
</tr>

  </form>
</table >
        
        
        
        
        
        &nbsp;</td>
        <td>&nbsp;</td>
      </tr>

    
  </table>
  <br/>
  <br/>
  <br/>
  
  <div align=center>
  
</div>

</div>
<script> window.focus();</script>
</body>

<script> window.focus();</script>
<script type="text/javascrip">document.form1.nome_log.focus(); </script>

</html>

