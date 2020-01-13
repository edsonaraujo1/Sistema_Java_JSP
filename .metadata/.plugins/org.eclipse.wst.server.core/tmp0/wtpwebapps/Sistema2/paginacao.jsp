<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" import="java.sql.*" %>
<html>
<head><title>Aprendendo JSP</title>
</head>
<body>
<%@ page import="java.util.*" %>

<%@ include file="config.jsp" %>


<%

//Declaracao de Variaveis Usadas no JSP
String situa_1 = "";
String vr1 = request.getParameter("opcao");
String ww_mensage = "";
int id_s            = 0;
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

String bus_cod    = request.getParameter("Cod_2");
%>


<%
  // ********************
  // Este exemplo mostra como paginar os resultados de uma
  // tabela MySQL
  // o nome da base de dados é "test"
 
  
  // conn é a conexão com o banco de dados
  int limit = 3; // quantidade de resultados por página                

  String driver     = "com.mysql.jdbc.Driver";
  String db_dados   = "agenda";
  String connection = "jdbc:mysql://localhost:3306/" + db_dados;
  String user       = "root";
  String password   = "12345";
  Class.forName(driver);
  Connection Con = DriverManager.getConnection(connection, user, password);

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
		"SELECT * FROM permissoes ORDER BY login ASC LIMIT " + limitValue + ", " + limit);
  ResultSet rs2 = pstmt2.executeQuery();

  %>
  <div align="center">
  		<table width="200" border="16" bgcolor="#FFFFFF" bordercolor="#5A9CB1">
    <tr>
      <td><table width="200" border="1">
        <tr>
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
  
  while(rs2.next()) {
	  
	  int    id2    = rs2.getInt("id");
	  String Edit1  = rs2.getString("login");
	  String Edit2  = rs2.getString("tabela");
	  String Edit3  = rs2.getString("incluir");
	  String Edit4  = rs2.getString("alterar");
	  String Edit5  = rs2.getString("excluir");
	  String Edit6  = rs2.getString("imprimir");
    
%>

      <tr>
        <td><% out.println(Edit1); %></td>
        <td>
<%        
			//ResultSet rslist;
			
			rs2 = pstmt.executeQuery("SHOW TABLES");
			    
			%>
			    <select type="text" id="Edit2" name="Edit2" value="<% out.println(Edit2); %> " />
			<%    
			while ( rs2.next() ) {  
			    String lastName = rs2.getString(1);
			    
			%>
			    <option value="<% out.println(lastName); %>"> <% out.println(lastName); %> </option>
			<%
			}  
			%>
			    
			    </select>
        
        
        </td>
        <td>
        
                <select type="text"    name="Edit3"  value="<% out.println(Edit3); %>" style=" font-family: Verdana; font-size: 14px; ">
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
        
                <select type="text"    name="Edit4"  value="<% out.println(Edit4); %>" style=" font-family: Verdana; font-size: 14px; ">
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
        
        <select type="text"    name="Edit5"  value="<% out.println(Edit5); %>" style=" font-family: Verdana; font-size: 14px; ">
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
        <select type="text"    name="Edit6"  value="<% out.println(Edit6); %>" style=" font-family: Verdana; font-size: 14px; ">
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
        <td><img src="imagens/editar.gif"></td>
        <td><img src="imagens/excluir.gif"></td>
      </tr>

<%
}
%>	

  </table></td>
</tr>
<tr>
  <td><img src="imagens/novo.gif"></td>
</tr>
</table>
</div>		


      <!-- Fim do Form -->
      </td>
      <td>&nbsp;</td>
    </tr>

	  </table>
	  <br/>
	  
	  <div align=center>
	  
	</div>
	
	</div>
<div align="center">  
<%  
  
  int anterior;
  if(Integer.parseInt(pagina) != 1){  
    anterior = Integer.parseInt(pagina) - 1; 
    out.println("<a href=?pagina=" + anterior + "> Anteriores</a>");
  }
  else{ 
    out.println(limit + " Anteriores ");
  }  
  int numOfPages = total_rows / limit;  
  int i;
  int p = 0;
  
  for(i = 1; i <= numOfPages; i++){
      
    	if(i == Integer.parseInt(pagina)){ 
    	      out.println("<b>" + i + "</b> "); 
    	      
    	    }
    	    else{
    	    	
    	    	if (i <= 10 ){
    	            out.println("<a href=?pagina=" + i + ">" + i + "</a> ");
    	            if (p == 10){
    	            	p = 0;	
    	            }
    	            
    	        }

    	    }
    	    	    
    	        
  }
  
  if((total_rows % limit) != 0){ 
    if(i == Integer.parseInt(pagina)){ 
      out.println(i + " "); 
    }
    else{ 
     	
      out.println("<a href=?pagina=" + i + ">" + i + "</a> "); 
    } 
  } 

  
  int proxima;
  if((total_rows - (limit * Integer.parseInt(pagina))) > 0){ 
    proxima = Integer.parseInt(pagina) + 1; 
          
    out.println("...<a href=?pagina=" + proxima + ">Próximos </a>");  
  }
  else {
    out.println("Próximos " + limit);
  }
%>


</div>




</body>
</html>