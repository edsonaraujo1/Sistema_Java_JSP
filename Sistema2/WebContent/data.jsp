<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%=new java.util.Date()%> 

<%


out.println("data sem formatacao : " + new java.util.Date() + "<br /><br />");

out.println("Boa Tarde Seja Bem Vindo, hoje e, " + new java.text.SimpleDateFormat("EEEE dd 'de' MMMM 'de' yyyy").format(new java.util.Date()) + "<br />");

String w_AMPM = new java.text.SimpleDateFormat("a").format(new java.util.Date());

//out.println("Horas 2xxxx " + w_AMPM + "<br />");

String var_2 = "imagens/carta.gif";

out.println("<img src='" + var_2 + "' width=20 height=17  border=0 />");

//Boa Tarde Seja Bem Vindo, hoje e Segunda-feira, 04 de Fevereiro de 2013 


%>

</body>
</html>