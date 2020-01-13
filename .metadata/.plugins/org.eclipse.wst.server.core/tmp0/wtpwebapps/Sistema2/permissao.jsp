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
String w_tabela   = "PERMISSOES"; // Tabela Banco
String w_programa = "PERMISSAO"; // Tela
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

String bus_cod    = request.getParameter("Cod_2");
%>

<%@ include file="sessao1.jsp" %>

<%

//Rotina Verifica Permissao da Tela 

String p_PROGM = w_programa;
String strT = campo4a;
String[] f = strT.split(",");
int fazP = 0;

for (int i= 0; i<=f.length-1; i++){	
		if (p_PROGM.toUpperCase().equals(f[i])){
			fazP = 3;
		}
}

if (fazP != 3){
	
	{response.sendRedirect("enaaurlnp.jsp");}
	
}

%>

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
        <td align="left" valign="top"><font color="#000000" size="1"><% out.println(w_versaox); %> </font></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td align="left" valign="top">
        <!--  Inicio do Form -->

        <form name="form1" method="post" action="permissao.jsp">

<%	
        
		// Declaracao de Variaveis
		String id2     = "";
		String Edit1   = "";
		String Edit2   = "";
		String Edit3   = "";
		String Edit4   = "";
		String Edit5   = "";
		String Edit6   = "";

		
		// conn é a conexão com o banco de dados
		  int limit = 7; // quantidade de resultados por página                

		  //String driver     = "com.mysql.jdbc.Driver";
		  //String db_dados   = "agenda";
		  //String connection = "jdbc:mysql://localhost:3306/" + db_dados;
		  //String user       = "root";
		  //String password   = "12345";
		  //Class.forName(driver);
		  //Connection Con = DriverManager.getConnection(connection, user, password);

		  // obtém lista de tabelas do banco
		  Statement pstmt0 = Con.createStatement(); 
		  ResultSet res4;

		  // obtém a quantidade de registros
		  PreparedStatement pstmt = Con.prepareStatement(
				"SELECT COUNT(*) AS c FROM permissoes");
		  ResultSet rs = pstmt.executeQuery();
		  rs.next();
		  int total_rows = Integer.parseInt(rs.getString("c"));
		  

		  String pagina = request.getParameter("pagina"); // página atual
		  if(pagina == null){
		    pagina = "1";
		  }
		  
		  int limitValue = (Integer.parseInt(pagina) * limit) - limit;  
		  
		  PreparedStatement pstmt2 = Con.prepareStatement(
				  "SELECT * FROM permissoes WHERE login = '" + bus_cod + "' ORDER BY login ASC LIMIT " + limitValue + ", " + limit);
		  ResultSet res3 = pstmt2.executeQuery();


%>
<div align="center">
<table width="600" border="0" cellpadding="4" cellspacing="0">
<tr>
<td align="center">
<%
if (bus_cod != ""){
%>

    <font size="4" face="Verdana"><b><% out.println("Permissões para: " + bus_cod + ""); %></b></font>
 <%
}else{
 %>
 
    <font size="5" face="Verdana" color='red'><b><% out.println("Sem Permissões Cadastradas !!!"); %></b></font>
 
 <%
 }
 %>   
</td>
</tr>
</table>
		<table width="200" border="16" bgcolor="#FFFFFF" bordercolor="#5A9CB1">
  <tr>
    <td><table width="300" border="1">
      <tr  height="37" align="center">
        <td><b><font size="3" face="Verdana">Login</font></b></td>
        <td><b><font size="3" face="Verdana">Tabela</font></b></td>
        <td><b><font size="3" face="Verdana">Incluir</font></b></td>
        <td><b><font size="3" face="Verdana">Alterar</font></b></td>
        <td><b><font size="3" face="Verdana">Excluir</font></b></td>
        <td><b><font size="3" face="Verdana">Imprimir</font></b></td>
        <td></td>
        <td></td>
      </tr>


<%
		while(res3.next()){
			
			id2    = res3.getString("id");
			Edit1  = res3.getString("login");
			Edit2  = res3.getString("tabela");
			Edit3  = res3.getString("incluir");
			Edit4  = res3.getString("alterar");
			Edit5  = res3.getString("excluir");
			Edit6  = res3.getString("imprimir");

%>			
			
      <tr>


        <td><input name="Edit1" type="text" id="Edit1" value="<% out.println(Edit1); %> " style=" height:23px;width:156px;  " onfocus="this.className='anormal'"  onblur="this.className='normal'" /></td>
        <td>

			    <select type="text" id="Edit2" name="Edit2" value="<% out.println(Edit2); %> " style=" height:23px;width:156px;  " onfocus="this.className='anormal'"  onblur="this.className='normal'" />
			    <option value="<% out.println(Edit2); %>"> <% out.println(Edit2); %> </option>

        <%
        // Lista no ListBox tabelas do banco
		  res4 = pstmt0.executeQuery("SHOW TABLES");

			while ( res4.next() ) {  
			    String lastName = res4.getString(1);
			    
			%>

			    <option value="<% out.println(lastName.toUpperCase()); %>"> <% out.println(lastName.toUpperCase()); %> </option>

			<%    
			}
			
		%>
			    
			    </select>
        
        
        </td>
        <td>
        
                <select type="text"    name="Edit3"  value="<% out.println(Edit3); %>" style=" font-family: Verdana; font-size: 14px; " onfocus="this.className='anormal'"  onblur="this.className='normal'">
        <%
		if (Edit3 != null || Edit3 != "")
		{
		%>	
	     	<option value="<% out.println(Edit3); %>"> <% out.println(Edit3); %> </option>
	        <option value="SIM"> SIM </option>
	        <option value="NAO"> NAO </option>
		<%	
		}else{
		%>	
	     	<option value="">  </option>
	        <option value="SIM"> SIM </option>
	        <option value="NAO"> NAO </option>
		<%            
		}
	    %>
        </select>
        
        </td>
        <td>
        
                <select type="text"    name="Edit4"  value="<% out.println(Edit4); %>" style=" font-family: Verdana; font-size: 14px; " onfocus="this.className='anormal'"  onblur="this.className='normal'">
        <%
		if (Edit4 != null || Edit4 != "")
		{
		%>	
	     	<option value="<% out.println(Edit4); %>"> <% out.println(Edit4); %> </option>
	        <option value="SIM"> SIM </option>
	        <option value="NAO"> NAO </option>
		<%	
		}else{
		%>	
	     	<option value="">  </option>
	        <option value="SIM"> SIM </option>
	        <option value="NAO"> NAO </option>
		<%            
		}
	    %>
        </select>
        
        </td>
        <td>
        
        <select type="text"    name="Edit5"  value="<% out.println(Edit5); %>" style=" font-family: Verdana; font-size: 14px; " onfocus="this.className='anormal'"  onblur="this.className='normal'">
        <%
		if (Edit5 != null || Edit5 != "")
		{
		%>	
	     	<option value="<% out.println(Edit5); %>"> <% out.println(Edit5); %> </option>
	        <option value="SIM"> SIM </option>
	        <option value="NAO"> NAO </option>
		<%	
		}else{
		%>	
	     	<option value="">  </option>
	        <option value="SIM"> SIM </option>
	        <option value="NAO"> NAO </option>
		<%            
		}
	    %>
        </select>
        
        </td>
        <td>
        <select type="text"    name="Edit6"  value="<% out.println(Edit6); %>" style=" font-family: Verdana; font-size: 14px; " onfocus="this.className='anormal'"  onblur="this.className='normal'">
        <%
		if (Edit6 != null || Edit6 != "")
		{
		%>	
	     	<option value="<% out.println(Edit6); %>"> <% out.println(Edit6); %> </option>
	        <option value="SIM"> SIM </option>
	        <option value="NAO"> NAO </option>
		<%	
		}else{
		%>	
	     	<option value="">  </option>
	        <option value="SIM"> SIM </option>
	        <option value="NAO"> NAO </option>
		<%            
		}
	    %>
        </select>
        
        </td>
        <td>
        <%
        if (per2.equals("SIM")){
        %>
        
            
            <input type="image" name="editar" value="editar" src="imagens/editar.gif" />
            </td>
        <%
        }else{
        %>    

            &nbsp;</td>
        <%
        }
        %>    
        <td>
        <%
        if (per3.equals("SIM")){
        %>
                
           <img src="imagens/excluir.gif"></td>
        
        <%
        }else{
        %>    
            &nbsp;</td>
        <%
        }
        %>    
        
      </tr>




<%			
}
%>	





</form>
    </table></td>
  </tr>
  <tr>
    <td height="37"><img src="imagens/px1.gif" width="10" height="10">
    
    <%
    if (per1.equals("SIM")){
    %>
    
       <img src="imagens/novo.gif"></td>
    
    <%
    }else{
    %>    
       &nbsp;</td>
    <%
    }
    %>    
    
  </tr>
</table>
<table width="600" border="0" cellpadding="4" cellspacing="0">
<tr>
<td align="center">
<br>
<font size="2" face="Verdana"><b>
<!-- Inicio da Paginação ai que ta o problema -->

<%  
  
  int anterior;
  if(Integer.parseInt(pagina) != 1){  
    anterior = Integer.parseInt(pagina) - 1; 
    out.println("<a href=?pagina=" + anterior + "&Cod_2=" + bus_cod + "><< Anteriores</a>");
  }
  else{ 
    out.println(" Anteriores ");
  }  
  int numOfPages = total_rows / limit;  
  int i;
  int p = 0;
  
  for(i = 1; i <= numOfPages; i++){
      
    	if(i == Integer.parseInt(pagina)){ 
    	      out.println("<b>" + i + "</b> "); 
    	      
    	    }
    	    else{
    	    	
    	    	if (i < 10 ){
    	            out.println("<a href=?pagina=" + i + "&Cod_2=" + bus_cod + ">" + i + "</a> ");
    	            if (p == 10){
    	            	p = 0;
    	            	break;
    	            }
    	            
    	        }

    	    }
    	    	    
    	        
  }
  
  if((total_rows % limit) != 0){ 
    if(i == Integer.parseInt(pagina)){ 
      out.println(i + " "); 
    }
    else{ 
     	
      //out.println("<a href=?pagina=" + i + "&Cod_2=" + bus_cod + ">" + i + "</a> "); 
    } 
  } 

  
  int proxima;
  if((total_rows - (limit * Integer.parseInt(pagina))) > 0){ 
    proxima = Integer.parseInt(pagina) + 1; 
          
    out.println("...<a href=?pagina=" + proxima + "&Cod_2=" + bus_cod + ">Próximos >></a>");  
  }
  else {
    out.println("Próximos ");
  }
%>



<!-- Fim da Paginação -->

<br><br>
<div align="center"><a href="cad_senha.jsp?Cod_2=<% out.println(bus_cod); %>"><img src="imagens/botao_voltar.PNG" width="92" height="22" border="0"></a></div>
</b></font>
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
	
<div align="center">  


</div>
	
	
	
	</body>
	
</html>
<%
}
%>

