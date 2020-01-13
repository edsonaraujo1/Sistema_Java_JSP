<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ include file="config.jsp" %>

<%
// Declaracao de Variaveis Usadas no JSP
String situa_1 = "";
String w_nome3 = "";
String w_opcao = "";
String sol_1   = "";
String sql1    = "";
String sql2    = "";
String sql3    = "";
String sql4    = "";
String sql5    = "";
String w_tabela = "SISTEMAXP"; // Tabela Banco

String tabelap = "";
String per1    = "";
String per2    = "";
String per3    = "";
String per4    = "";

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
	        

<td align="left"><div id="menu"><ul> 
<%@ include file="cadastro.jsp" %>

</ul></div></td>
<!-- Fim menu -->

<!-- Inicio menu -->
<td align="left"><div id="menu"><ul> 
<%@ include file="cobranca.jsp" %>

</ul></div></td>
<!-- Fim menu -->

<!-- Inicio menu -->
<td align="left"><div id="menu"><ul> 
<%@ include file="relatorio.jsp" %>

</ul></div></td>
<!-- Fim menu -->

<!-- Inicio menu -->
<td align="left"><div id="menu"><ul> 
<%@ include file="saude.jsp" %>

</ul></div></td>
<!-- Fim menu -->

<!-- Inicio menu -->
<td align="left"><div id="menu"><ul> 
<%@ include file="caixa.jsp" %>

</ul></div></td>
<!-- Fim menu -->

<!-- Inicio menu -->
<td align="left"><div id="menu"><ul> 
<%@ include file="juridico.jsp" %>

</ul></div></td>
<!-- Fim menu -->

<!-- Inicio menu -->
<td align="left"><div id="menu"><ul> 
<%@ include file="website.jsp" %>


</ul></div></td>
<!-- Fim menu -->

<!-- Inicio menu -->
<td align="left"><div id="menu"><ul> 
<%@ include file="operador.jsp" %>


</ul></div></td>
<!-- Fim menu -->


<!-- Inicio menu -->
<td align="left"><div id="menu"><ul> 
<%@ include file="help.jsp" %>


</ul></div></td>
<!-- Fim menu -->

</td>

<td><img src="imagens/px1.gif" width="3" height="10"></td>
	          
	        </tr>
			
	      </table></td>
	            <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td align="left" valign="top"><font color="#000000" size="1"><% out.println(w_versaox); %></font></strong> </td>
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

