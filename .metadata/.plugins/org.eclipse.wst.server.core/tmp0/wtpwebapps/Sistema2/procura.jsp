<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>.:Minha Loja em Java:.</title>
        <link rel='shortcut icon' href='imagens/favicon.ico'>
</head>
<%@page import="java.sql.*"%>

<body>

<%

String id       = request.getParameter("id");
String nome     = request.getParameter("nome");
String telefone = request.getParameter("telefone");

String prox = "";
String msg  = "";
String msg1 = "";
String msg2 = "";
String msg3 = "";
String sql1 = "";
String tipo = "";
String Menssagens = "";


	   String driver_pes     = "com.mysql.jdbc.Driver";
	   String db_dados_pes   = "agenda";
	   String connection_pes = "jdbc:mysql://localhost:3306/" + db_dados_pes;
	   String user_pes       = "root";
	   String password_pes   = "12345";
	   Class.forName(driver_pes);
	   Connection Con2 = DriverManager.getConnection(connection_pes, user_pes, password_pes);

	   Statement stm2 = Con2.createStatement();
		
	   // String var2 = "Edson de Araujo";
	
	   sql1 = "SELECT * FROM registros WHERE id >=1 ORDER BY id";
	   if (id != "")
	   {   
		   sql1 = "SELECT * FROM registros WHERE id = '" + id.trim() + "'";
		   msg3 = id;
		   tipo = "1";
	   }
	   if (nome != "")
	   {   
		   sql1 = "SELECT * FROM registros WHERE nome LIKE '%" + nome.trim() + "%'";
		   msg3 = nome;
		   tipo = "2";
	   }
	   if (telefone != "")
	   {   
		   sql1 = "SELECT * FROM registros WHERE telefone = '" + telefone.trim() + "'";
		   msg3 = telefone;
		   tipo = "3";
	   }
	   
	  
	   //out.println(tipo);

	   
	   ResultSet res2 = stm2.executeQuery(sql1);

	   
	                                  // SELECT  * FROM `registros` WHERE `nome` LIKE '%mar%'

	   
	   
	   
			while(res2.next()){
				
				//out.println("Id: " + res2.getString("id") + "</br>");
				//out.println("Nome: " + res2.getString("nome") + "</br>");
				//out.println("Telefone: " + res2.getString("telefone") + "<br />");
				msg = res2.getString("id");
				msg1 = res2.getString("nome");
				msg2 = res2.getString("telefone");

			}	
	   
	   
	   // Preparação para Excluir  

 
       // Sucesso 
       //prox ="inicio.jsp?nome="+nome;   
       //response.sendRedirect(prox);   
       if (msg == "")
       {
    	   //out.println("Registro não Encontrado !!!!");
    	   Menssagens = "Registro não Encontrado !!!!";
       }
       
       stm2.close();   
       Con2.close();   
       
       //prox ="inicio.jsp?Acao=procura1";   
       //response.sendRedirect(prox);   
//       String var5 = "";
//       var5 = "inicio.jsp?Acao=procura1";


%>
<%// {response.sendRedirect("inicio.jsp?Acao=procura");} %>
<%@ include file="novo1.jsp" %>  


</body>
</html>