<%@ page import="java.sql.*" %>   
<%   
   String id = request.getParameter("id");   
   String nome = request.getParameter("nome");   
   String telefone = request.getParameter("telefone");   
   String prox="";   
   try  
   {   

	   String driver     = "com.mysql.jdbc.Driver";
	   String db_dados   = "agenda";
	   String connection = "jdbc:mysql://localhost:3306/" + db_dados;
	   String user       = "root";
	   String password   = "12345";
	   Class.forName(driver);
	   Connection Con = DriverManager.getConnection(connection, user, password);

	   // Preparação para Excluir  
       PreparedStatement stm = Con.prepareStatement("delete from registros where id = "+id+"");   

      stm.executeUpdate();   
      stm.close();   
      Con.close();   

      // Sucesso 
      prox ="sucesso.jsp?nome="+nome;   
      stm.close();   
      Con.close();   
      response.sendRedirect(prox);   
  }   
   catch(Exception ex)   
   {   
      out.println("Erro!!! " + ex.getMessage() );   
      ex.printStackTrace();   
   }   
%>  
