<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="config.jsp" %>

<%@page import="java.sql.*"%>

<%
// Declaracao de Variaveis Usadas no JSP
String situa_1 = "";
String w_nome3 = "";
String w_opcao = "";

//Resgata informacao gravada na sessao
String Minha_sessao1 = (String) session.getAttribute("minha_sessao1");
if (Minha_sessao1 != ""){
	w_nome3 = Minha_sessao1;

	
	out.println("entrei no 1 <br /><br />");
}else{
	
	out.println("entrei no 2 <br /><br />");
	w_opcao = "faz";
	
	{response.sendRedirect("login.jsp");}
	return;
	
}

if (w_opcao != null){
	w_opcao = "";
	

	//Saldação ao usuario
	
	int w_Hora = Integer.parseInt((new java.text.SimpleDateFormat("HH")).format(new java.util.Date()));
	
	if (w_Hora >= 0 && w_Hora < 6) {
	    situa_1 = "Boa Madrugada";
	}
	if (w_Hora >=6 && w_Hora <12) {
	    situa_1 = "Bom Dia";
	}
	if (w_Hora >=12 && w_Hora <19) {
	    situa_1 = "Boa Tarde";
	}
	
	String w_bomdia = situa_1 + " Seja Bem Vindo, " + w_nome3 + " hoje e, " + new java.text.SimpleDateFormat("EEEE dd 'de' MMMM 'de' yyyy").format(new java.util.Date()) + "<br />";
	
	String w_login        = request.getParameter("login");
	
	Class.forName(driver_pes);
	Connection Con = DriverManager.getConnection(connection_pes, user_pes, password_pes);
	Statement stm = Con.createStatement();
	
	ResultSet res = stm.executeQuery("SELECT * FROM registros");
	
	%>
	
	<body  style=" margin-left: 0px;  margin-top: 0px;  margin-right: 0px;  margin-bottom: 0px; " onkeydown="javascript:if (event.KeyCode==13) event.KeyCode=9; javascript:document.onkeydown = keyCatcher();" onload="document.form1.nome_log.focus();">
	
	<div align="center">  <table width="200" border="0">
	    <tr>
	      <td><div align="center"><font face="Verdana"><em><strong><% out.println(w_bomdia); %></strong></em> </font></div></td>
	    </tr>
	    <tr>
	      <td><table width="200" border="0" cellpadding="0" cellspacing="0">
	        <tr>
	          <td><img src="imagens/px1.gif" width="3" height="30"></td>
	          <td><img src="imagens/menu2_r2_c2.gif" width="105" height="31"></td>
	          <td><img src="imagens/px1.gif" width="3" height="30"></td>
	          <td><img src="imagens/menu2_r2_c4.gif" width="105" height="31"></td>
	          <td><img src="imagens/px1.gif" width="3" height="30"></td>
	          <td><img src="imagens/menu2_r2_c6.gif" width="105" height="31"></td>
	          <td><img src="imagens/px1.gif" width="3" height="30"></td>
	          <td><img src="imagens/menu2_r2_c8.gif" width="105" height="31"></td>
	          <td><img src="imagens/px1.gif" width="3" height="30"></td>
	          <td><img src="imagens/menu2_r2_c10.gif" width="105" height="31"></td>
	          <td><img src="imagens/px1.gif" width="3" height="30"></td>
	          <td><img src="imagens/menu2_r2_c12.gif" width="105" height="31"></td>
	          <td><img src="imagens/px1.gif" width="3" height="30"></td>
	          <td><img src="imagens/menu2_r2_c14.gif" width="105" height="31"></td>
	          <td><img src="imagens/px1.gif" width="3" height="30"></td>
	          <td><img src="imagens/menu2_r2_c16.gif" width="105" height="31"></td>
	          <td><img src="imagens/px1.gif" width="3" height="30"></td>
	        </tr>
	      </table></td>
	    </tr>
	    <tr>
	      <td>&nbsp;</td>
	    </tr>
	  </table>
	  <br/>
	  <br/>
	  <br/>
	  
	  <div align=center>
	  
	</div>
	
	
	<script> window.focus();</script>
	</body>
	
	<script> window.focus();</script>
	<script type="text/javascrip">document.form1.nome_log.focus(); </script>
<%
}
%>
</html>

