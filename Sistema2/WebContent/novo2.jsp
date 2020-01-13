<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*"%>
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

String id       = request.getParameter("id_pes");
String sql2 = "";

String id2 = "";
String nome2 = "";
String telefone2 = "";

%>

<%
// Para destruir uma sessao = session.invalidade();

String driver     = "com.mysql.jdbc.Driver";
String db_dados   = "agenda";
String connection = "jdbc:mysql://localhost:3306/" + db_dados;
String user       = "root";
String password   = "12345";
Class.forName(driver);
Connection Con = DriverManager.getConnection(connection, user, password);
Statement stm = Con.createStatement();

   
sql2 = "SELECT * FROM registros WHERE id = '" + id + "'";


ResultSet resx = stm.executeQuery(sql2);

while(resx.next()){
	
	id2 = resx.getString("id");
	nome2 = resx.getString("nome");
	telefone2 = resx.getString("telefone");
	
}
%>

<body>
<p align="center"><font color="#009933"><strong><font face="Verdana">Cadastro de Contatos em Java MySQL</font> </strong></font></p>

<p align="center"><font color="#FF0000"><strong><font face="Verdana"></font> </strong></font></p>
<form action="update.jsp" method="post" name="form2">

<table width="329" border="0" align="center">
  <tr>
    <td height="32"><div align="right"><strong><font size="3" face="Verdana">Codigo:</font></strong></div></td>
    <td width="177"><input type="text" name="id" value="<%= id2 %>"></td>
    <td width="40">&nbsp;</td>
  </tr>
  <tr>
    <td height="33"><div align="right"><strong><font size="3" face="Verdana">Nome:</font></strong></div></td>
    <td><input type="text" name="nome" value="<%= nome2 %>"></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td><div align="right"><strong><font size="3" face="Verdana">Telefone:</font></strong></div></td>
    <td><input type="text" name="telefone" value="<%= telefone2 %>"></td>
    <td>&nbsp;</td>
  </tr>
</table>
<div align="center"><br>
<input type="image" value="Voltar" src="imagens/botaoazul5.PNG" width="92" height="22"  /> 
<table width="30%" border="0" align="center" cellspacing="2">
  <tr>
    <td width="33%"><div align="center"><a href="alterar.jsp"><img src="imagens/botaoazul5.PNG" width="92" height="22" border="0"></a></div></td>
    <td width="33%"><div align="center"><a href="excluir.jsp"><img src="imagens/botaoazul4.PNG" width="92" height="22" border="0"></a></div></td>
    <td width="34%"><div align="center"><a href="consultar.jsp"><img src="imagens/botaoazul7.PNG" width="92" height="22" border="0"></a></div></td>
  </tr>
</table>

</div>
       </form> 
 
</body>
</html>