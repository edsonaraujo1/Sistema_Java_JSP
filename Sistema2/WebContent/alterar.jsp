<%@ page import="java.sql.*" %>   
<%   
    String email = request.getParameter("email");   
   String nome = request.getParameter("nome");   
   String telefone = request.getParameter("telefone");   
    String consulta = request.getParameter("consulta");   
    String tipo = request.getParameter("tipo");   
   String msg="";   
   String prox="";   
   try  
   {   
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");   
      String urlCon = "jdbc:odbc:DRIVER=Microsoft Access Driver (*.mdb); DBQ=C:\\Documents and Settings\\Vitor e Daniel\\Desktop\\AI2\\webapps\\jsp\\banco.mdb";   
      Connection c = DriverManager.getConnection(urlCon );             
        PreparedStatement pstm = c.prepareStatement("update cadastro set nome = "+nome+", telefone = "+telefone+", email = "+email+" where nome = "+nome+", telefone = "+telefone+", email = "+email+"");   
   
        pstm.executeUpdate();   
        prox ="index.jsp?nome="+nome;   
      pstm.close();   
      c.close();   
      response.sendRedirect(prox);   
   }   
   catch(Exception ex)   
   {   
      out.println("Erro!!! " + ex.getMessage() );   
      ex.printStackTrace();   
   }   
%>