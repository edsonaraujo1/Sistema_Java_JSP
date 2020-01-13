<%
// Cria Variavel de sessao
String objeto = "holodek";
// Grava informacoa na sessao
session.setAttribute("minha_sessao1", objeto);
// Resgata informacao gravada na sessao
String Minha_sessao1 = (String) session.getAttribute("minha_sessao1");
// Mostra na tela conteudo da sessao
out.println("Usuario: <font color='#FF0000'>" + Minha_sessao1 + "</font>");%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agenda Telefonica</title>
<link rel='shortcut icon' href='imagens/favicon.ico'>

<style type="text/css">

body {

background-image: url('imagens/logosys.jpg');
background-attachment: fixed

}

</style>
</head>
<br>
<%

String nome1 = request.getParameter("nome1");   
String id1 = request.getParameter("id1");   
String telefone1 = request.getParameter("telefone1");   

%>
<body>
<p align="center"><font color="#009933"><strong><font face="Verdana">Cadastro de Contatos em Java MySQL</font> </strong></font></p>

<form action="procura.jsp" method="post" name="form2">

<table width="329" border="0" align="center">
  <tr>
    <td height="32"><div align="right"><strong><font size="3" face="Verdana">Codigo:</font></strong></div></td>
    <td width="177"><input type="text" name="id" value=""></td>
    <td width="40">&nbsp;</td>
  </tr>
  <tr>
    <td height="33"><div align="right"><strong><font size="3" face="Verdana">Nome:</font></strong></div></td>
    <td><input type="text" name="nome" value=""></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><div align="right"><strong><font size="3" face="Verdana">Telefone:</font></strong></div></td>
    <td><input type="text" name="telefone" value=""></td>
    <td>&nbsp;</td>
  </tr>
</table>
<div align="center"><br>

<table width="30%" border="0" align="center" cellspacing="2">
  <tr>
    <td width="33%"><div align="center">
    
    <input type="image" name="submit" src="imagens/botaoazul10.PNG" />   

    <a href="inicio.jsp"><img src="imagens/botaoazul9.PNG" border="0"></a>   
    </div>
</td>
</tr>
 </table>

</div>
       </form> 
 
<div align="center"></div>
