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
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat.*"%>


<%

//Declaracao de Variaveis Usadas no JSP
String situa_1 = "";
String vr1 = request.getParameter("opcao");
String ww_mensage = "";
int id_s            = 0;
int timestamp = 0;
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
String usuarios2 = "";
String hora_user2 = "";

String bus_cod    = request.getParameter("Cod_2");
%>

<%@ include file="sessao1.jsp" %>

<%

// obtém a quantidade de registros
PreparedStatement pstmt_x = Con.prepareStatement(
		"SELECT COUNT(*) AS c FROM useronline");
ResultSet rs_x = pstmt_x.executeQuery();
rs_x.next();
int total_user = Integer.parseInt(rs_x.getString("c"));


PreparedStatement pstmt2_x = Con.prepareStatement(
		   "SELECT usuario,timestamp,hora FROM useronline WHERE usuario = '" + w_nome3 + "'");
ResultSet res3_x = pstmt2_x.executeQuery();
while(res3_x.next()){
	
	usuarios2  = res3_x.getString("usuario");
	hora_user2 = res3_x.getString("hora");
}

if (usuarios2 != ""){
	
	
}else{
	
	
	try  
	{
		
		    int timedata = 0;
		    Calendar calendar = Calendar.getInstance();
		    long ms2          = calendar.getTimeInMillis();
		    int msc           = (int) (long) ms2;
		    
		    ///out.println("<br><br><br>" + ms2);

			int timestamp2    = msc;
			//out.println("<br><br><br>" + timestamp2);
			String remote_add = request.getRemoteAddr();
			String self       = request.getContextPath() + request.getServletPath();
			String data_time  = new java.text.SimpleDateFormat("dd/MM/yyyy").format(new java.util.Date());
			String data_hora  = new java.text.SimpleDateFormat("HH:mm:mm").format(new java.util.Date());
			String nome_user  = w_nome3;
			
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
	
	
}	



%>


<body onload="setTimeout('window.location.reload(true)',30000)">

	
	
<div style="Z-INDEX: 500; LEFT: 0px; WIDTH: 616px; POSITION: absolute; TOP: 0px; HEIGHT: 20px">
<font color="#4682B4" face="Ariel" size="2">&nbsp;&nbsp;<% out.println(total_user); %> usuário(s) on-line</font>
</div>
<div style="Z-INDEX: 500; LEFT: 0px; WIDTH: 616px; POSITION: absolute; TOP: 17px; HEIGHT: 20px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="imagens/kitt.gif" />
</div>
	
		
<div align="center">  


</div>
	
	
	
</body>
	
</html>
<%
}
%>

