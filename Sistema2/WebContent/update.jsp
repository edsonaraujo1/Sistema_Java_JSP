<%@ page import="java.sql.*" %>   
<%   
   String id = request.getParameter("id");   
   String nome = request.getParameter("nome");   
   String telefone = request.getParameter("telefone");   
   String prox="";   
   try  
   {   
	   
	   String driver_inc     = "com.mysql.jdbc.Driver";
	   String db_dados_inc   = "agenda";
	   String connection_inc = "jdbc:mysql://localhost:3306/" + db_dados_inc;
	   String user_inc       = "root";
	   String password_inc   = "12345";
	   Class.forName(driver_inc);
	   Connection Con = DriverManager.getConnection(connection_inc, user_inc, password_inc);

	   // Preparação para Inclusão  
       PreparedStatement stm = Con.prepareStatement("update registros set nome = '"+nome+"', telefone = '"+telefone+"' where id = '"+id+"'");   

       //stm.setString(1, nome);   
       //stm.setString(2, telefone);   
	   
	   stm.executeUpdate();   
	   
       // Sucesso 
       prox ="sucesso.jsp?nome="+nome;   
       stm.close();   
       Con.close();   
       response.sendRedirect(prox);   
   }   
   catch(Exception ex)   
   {   
	  // Caso ocorra Erro 
      prox ="erro.jsp?nome="+nome;   
      response.sendRedirect(prox);   
   }   
%>