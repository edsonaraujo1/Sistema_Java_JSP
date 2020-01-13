<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@page import="java.sql.*"%>

<%

String w_AMPM = new java.text.SimpleDateFormat("EEE").format(new java.util.Date());
String str = "SEG,TER,QUA,SEX,SAB,DOM,";
String[] b = str.split(",");
int faz = 0;

for (int i= 0; i<=b.length-1; i++){	
		if (w_AMPM.toUpperCase().equals(b[i])){
			faz = 4;
		}
}
if (faz == 4){
	out.println("Voce tem permissao de uso na: " + w_AMPM.toUpperCase() + "<br>");
}else{
	out.println("Voce não tem permissao de uso na: " + w_AMPM.toUpperCase() + "<br>");
}

%>


<% 



String w_hora = new java.text.SimpleDateFormat("HH:mm").format(new java.util.Date());


out.println("hora atual " + w_hora);


//if (w_hora >= msg6 && w_hora <= msg7){
	
	// Acesso liberado

	//out.println("Permitido para hora atual " + w_hora);

//}else{
	
	//out.println("Nao permitido para hora atual " + w_hora);
	
//}



SimpleDateFormat formatador = new SimpleDateFormat("HH:mm");    
Date dMin = formatador.parse("15:30");  
Date dMax = formatador.parse("16:30");  
  
Date dAgora = new Date();  
  
if (dAgora.getTime() > dMin.getTime() && dAgora.getTime() < dMax.getTime() ){  

	out.println("Permitido para hora atual ");  
}  
else  
{  
	out.println("Nao permitido para hora atual ");  
}  



%>
</body>
</html>