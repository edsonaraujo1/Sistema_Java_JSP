<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page language="java" import="java.sql.*" %>

<%@ page import="java.util.*" %>

<%
//conn é a conexão com o banco de dados
int limit = 3; // quantidade de resultados por página                

String driver     = "com.mysql.jdbc.Driver";
String db_dados   = "agenda";
String connection = "jdbc:mysql://localhost:3306/" + db_dados;
String user       = "root";
String password   = "12345";
Class.forName(driver);
Connection Con = DriverManager.getConnection(connection, user, password);

// obtém a quantidade de registros
//PreparedStatement pstmt = Con.prepareStatement(
//		"SELECT COUNT(*) AS c FROM permissoes");
Statement pstmt = Con.createStatement(); 
ResultSet rs;
//rs.next();
//int total_rows = Integer.parseInt(rs.getString("c"));


    rs = pstmt.executeQuery("SHOW TABLES");
    
    %>
    
        <select type="text" id="Edit2" name="Edit2" value=" " />
    <%    
    while ( rs.next() ) {  
        String lastName = rs.getString(1);
    
        %>
        
        <option value="<% out.println(lastName); %>"> <% out.println(lastName); %> </option>
        <%
        
        
    //    out.println(rs.getString(1) + "<br>");  

    
    }  
    
    %>
    
    </select>
    
    <%
    Con.close();  
  

%>

</body>
</html>