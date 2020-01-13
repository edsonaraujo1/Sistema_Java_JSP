<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.text.SimpleDateFormat.*"%>;  
<%@page import="java.util.Date.*"%>;  

<%@page import="java.util.*"%>
<%@page import="java.text.*"%>


<%

String mydata = "18:00";  
	   Date data = null;  
	   try {  
	      DateFormat dtOutput = new SimpleDateFormat("HH:mm");  
	      data = dtOutput.parse(mydata);  
	      
	      out.println(data.getTime());
	   }
	      catch (ParseException e) {  
	      e.printStackTrace();
	      out.println(data.getTime());
	   }  
	   //return data;  
	     


%>


</body>
</html>