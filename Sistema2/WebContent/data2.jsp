<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
//Resgata informacao gravada na sessao
String situa_1 = "";
String w_nome3 = "";
String Minha_sessao1 = (String) session.getAttribute("minha_sessao1");
if (Minha_sessao1 != null){
	w_nome3 = Minha_sessao1;
}

out.println("data sem formatacao : " + new java.util.Date() + "<br /><br />");

//String w_AMPM = new java.text.SimpleDateFormat("a").format(new java.util.Date());

//String w_Hora = new java.text.SimpleDateFormat("HH").format(new java.util.Date());

int w_Hora = Integer.parseInt((new java.text.SimpleDateFormat("HH")).format(new java.util.Date()));


//out.println("Horas " + w_Hora + "<br />");


if (w_Hora >= 0 && w_Hora < 6) {
 situa_1 = "Boa Madrugada";
 //out.println("hora " + situa_1 + "<br /><br />"); 
 }
if (w_Hora >=6 && w_Hora <12) {
 situa_1 = "Bom Dia";
 //out.println("hora " + situa_1 + "<br /><br />");
 }
if (w_Hora >=12 && w_Hora <19) {
 situa_1 = "Boa Tarde";
 //out.println("hora " + situa_1 + "<br /><br />");
 }else{
 situa_1 = "Boa Noite";
 //out.println("hora " + situa_1 + "<br /><br />");
}


out.println(situa_1 + " Seja Bem Vindo, " + w_nome3 + " hoje e, " + new java.text.SimpleDateFormat("EEEE dd 'de' MMMM 'de' yyyy").format(new java.util.Date()) + "<br />");

//$bomdia =   situa_1." Seja Bem vindo, " .  $nome3          ." hoje e  ".$dia_semana. strftime(", %d de")." ".$dia_sem_mes.strftime("  de %Y");
//Boa Tarde Seja Bem Vindo, hoje e Segunda-feira, 04 de Fevereiro de 2013 


%>

</body>
</html>