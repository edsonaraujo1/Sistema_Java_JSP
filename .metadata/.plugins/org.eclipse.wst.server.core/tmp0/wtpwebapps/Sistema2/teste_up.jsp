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
String w_tabela   = "TT_SER_01"; // Tabela Banco
String w_programa = "CAD_SENHA"; // Tela
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

String campo1x  = "";
String campo2x  = "";
String campo3x  = "";
String campo4x  = "";
String campo5x  = "";
String campo6x  = "";
String campo7x  = "";
String campo8x  = "";
String campo9x  = "";
String campo10x = "";
String campo11x = "";
String campo12x = "";
String campo13x = "";
String campo14x = "";
String campo15x = "";
int usuarios2 = 0;

String Cod_2 = request.getParameter("Cod_2");
%>

<%@ include file="sessao1.jsp" %>

<%	

try  
{

		int timestamp2 = 1333314766;
		String remote_add = "127.0.0.1";
		String self = "user.jsp";
		String data_time = "17/03/2013";
		String data_hora = "18:00:12";
		String nome_user = w_nome3;
		
		out.println(timestamp2 + "<br>");
		out.println(remote_add + "<br>");
		out.println(self + "<br>");
		out.println(data_time + "<br>");
		out.println(data_hora + "<br>");
		out.println(nome_user + "<br><br>");
		
		// Preparação para Inclusão  
		PreparedStatement stm1 = Con.prepareStatement("INSERT INTO useronline (timestamp,ip,arquivo,data,hora,usuario) VALUES (?,?,?,?,?,?)");   
		
		// Instancia Variavei para Salvar
		stm1.setInt(1, timestamp2);   
		stm1.setString(2, remote_add);   
		stm1.setString(3, self);   
		stm1.setString(4, data_time);   
		stm1.setString(5, data_hora);   
		stm1.setString(6, nome_user);   
			   
		stm1.executeUpdate();   
		
		stm1.close(); 
		
		}   
		catch(Exception ex)   
		{   
			  // Caso ocorra Erro 
			   out.println("<font color='red'>Erro ao Salvar !!!</font>");
		
		}  


%>
</body>
</html>
<%
}
%>
