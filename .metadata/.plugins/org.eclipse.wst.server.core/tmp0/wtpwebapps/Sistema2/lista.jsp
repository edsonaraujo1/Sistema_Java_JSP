<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"  
   "http://www.w3.org/TR/html4/loose.dtd">   

<html>   
    <head>   
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">   
        
        <title>.:Minha Loja em Java:.</title>
        <link rel='shortcut icon' href='imagens/favicon.ico'>
          
    <body>   

<%@page import="java.sql.*"%>
<%
// Cria Variavel de sessao
String objeto = "holodek";
// Grava informacoa na sessao
session.setAttribute("minha_sessao1", objeto);
// Resgata informacao gravada na sessao
String Minha_sessao1 = (String) session.getAttribute("minha_sessao1");
// Mostra na tela conteudo da sessao
out.println(Minha_sessao1);%> <br><br>

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

String var2 = "Edson de Araujo";

ResultSet res = stm.executeQuery("SELECT * FROM tt_ser_01 ORDER BY id DESC");
while(res.next()){
out.println("Nome: " + res.getString("login") + "</br>");
out.println("Telefone: " + res.getString("nome") + "<br />");
}



int var1 = 0; 
        
	if ( var1 > 0) 
	            
	out.println("<br><br>var1: e maior que 0"); 
	        
	 else  
	            
	out.println("<br><br>var1: e menor ou igual a 0"); 
	        
	 
	        
%>

<br><br><br><br><br><br>
<%

    for (int i = 0; i <= 50; i++) {   
        out.println(i + " ..");   
    }   
	
%>   

<%@ include file="rodape.jsp" %>

<br><br>
<a href="novo.jsp"> Proxima pagina </a>

    </body>   
</html>  
