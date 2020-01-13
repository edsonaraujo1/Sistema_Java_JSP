<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@page import="java.sql.*"%>

<%
// Titulo do Sistema
String w_titulo   = "Sistema JSP";
String w_versaox  = "Atualizado em 10/03/2013 às 17:12";

// Variaveis Banco de Dados
String driver_pes     = "com.mysql.jdbc.Driver";
String db_dados_pes   = "agenda";
String connection_pes = "jdbc:mysql://localhost:3306/" + db_dados_pes;
String user_pes       = "root";
String password_pes   = "12345";


%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sistema XP</title>
<link rel='shortcut icon' href='imagens/favicon.ico'>

<link type="text/css" rel="stylesheet" href="menu.css"/>

<style type="text/css">

body {

background-image: url('imagens/logosys.jpg');
background-attachment: fixed

}

.normal {
	
	background-color: white;
}
.anormal {
		background-color: Lavender;
}

</style>


<script language="JavaScript"><!--

document.onkeydown = keyCatcher;

function keyCatcher() 
{
   var e = event.srcElement.tagName;

   if (event.keyCode == 8 && e != "INPUT" && e != "TEXTAREA") 
   {
      event.cancelBubble = true;
      event.returnValue = false;
   }
}
//-->
</script>


<%
// Rotinas Principais

// config.jsp
// login.jsp
// logar.jsp
// menu1.jsp

%>