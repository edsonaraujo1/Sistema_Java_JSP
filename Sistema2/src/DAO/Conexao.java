package DAO;

import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.SQLException;  

import org.apache.jasper.tagplugins.jstl.core.Out;
	  
public class Conexao {  
	      
	    public static Connection conectar(){  
	  
	    try{  
	  
	         String url = "jdbc:mysql://localhost:3306/agenda";  
	           
	        //Conexão Banco Local  
	         Class.forName("com.mysql.jdbc.Driver");  
	           
	         Connection con = DriverManager.getConnection(url,"root","12345");  
	         return(con);  
	  
	        }catch(ClassNotFoundException e){  
	  
	            e.printStackTrace();  
	            
	            System.out.println("entrada 1");
	  
	            return null;  
	  
	        }catch(SQLException e){  
	  
	            e.printStackTrace();  

	            System.out.println("entrada 2");

	            return null;  
	        }  
	    }  
	
			
}
