<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script language="JavaScript">
<!--

//document.onkeydown = keyCatcher;

function keyCatcher() 
{
   var e = event.srcElement.tagName;

   if (event.keyCode == 8 && e != "INPUT" && e != "TEXTAREA") 
   {
      event.cancelBubble = true;
      event.returnValue = false;
   }
   
   if (event.keyCode == 27) 
   {
		window.location="";
   }
   
}

window.focus();
document.form1.nome_log.focus();

//-->
</script>

<style>

.normal {
	
	background-color: white;
}
.anormal {
		background-color: Lavender;
}

</style>
</head>

<%@ page import="java.util.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="config.jsp" %>
<%@page import="java.util.Date"%>

<%
//int w_Hora = Integer.parseInt((new java.text.SimpleDateFormat()).format(new java.util.Date()));
//create the timer and timer task objects
String sql2 = "";

Class.forName(driver_pes);
Connection Con = DriverManager.getConnection(connection_pes, user_pes, password_pes);
Statement stm = Con.createStatement();

Timer timer = new Timer();
//MyTimerTask task = new MyTimerTask(); //this class implements Callable.

// get a calendar to initialize the start time
Calendar calendar = Calendar.getInstance();
//Calendar calendar = Calendar.getInstance();




if (calendar.get(Calendar.AM_PM) == Calendar.AM) {
  out.print("Morning");
} else {
  out.print("Afternoon");
}

int startTime = calendar.get(Calendar.HOUR);
int ms        = calendar.get(Calendar.MILLISECOND);
long ms2       = calendar.getTimeInMillis();
String ip = request.getRemoteAddr();
String correntPag = request.getContextPath() + request.getServletPath();

String Data_user  = new java.text.SimpleDateFormat("dd/MM/yyyy").format(new java.util.Date());
String Hora_user  = new java.text.SimpleDateFormat("HH:mm:ss").format(new java.util.Date());


//int tempo = Integer.parseInt((new calendar.getTimeInMillis()));

//int w_Hora = Integer.parseInt((new java.text.SimpleDateFormat("Seg")).format(new java.util.Date()));

//String data = new java.util.Date();
//ms = data.Milliseconds();

// schedule the task to run hourly
//timer.scheduleAtFixedRate(task, startTime, 1000 * 60 * 60);


//out.println(starTime + "<br>");
out.println(timer + "<br>");
out.println(startTime + "<br>");

out.println("MS1=" + calendar.getTimeInMillis() + "<br><br><br>");
out.println(request.getRemoteAddr() + "<br>");
out.println(request.getRemoteHost() + "<br>");
out.println(request.getHeader("x-forwarded-for") + "<br>");

		
out.println("Milesegundos = " + ms2 + "<br>");
out.println("IP           = " + ip + "<br>");
out.println("Data         = " + Data_user + "<br>");
out.println("Hora         = " + Hora_user + "<br>");
out.println("Pagina       = " + correntPag + "<br>");
		


GregorianCalendar gc = new GregorianCalendar();  

gc.setTime(new Date());  


int w_Hora1 = Integer.parseInt((new java.text.SimpleDateFormat("HH")).format(new java.util.Date()));
int w_Minu1 = Integer.parseInt((new java.text.SimpleDateFormat("mm")).format(new java.util.Date()));
int w_Secu1 = Integer.parseInt((new java.text.SimpleDateFormat("ss")).format(new java.util.Date()));

SimpleDateFormat sdf    = new SimpleDateFormat("HH:mm:ss"); 

gc.set(0, 0, 0, w_Hora1, w_Minu1, w_Secu1);  
out.println("HORA ATUAL: " + sdf.format(gc.getTime()) + "<br>");  
  
gc.add(Calendar.HOUR, 0);  
gc.add(Calendar.MINUTE, 00);  
gc.add(Calendar.SECOND, 00);  
  
out.println("HORA SOMADA: " + sdf.format(gc.getTime()) + "<br><br><br>");  
out.println("Milessegundos: " + gc.getTimeInMillis());



//sql2 = "DELETE FROM useronline WHERE timestamp <" + ( ms2 * 60) + "";
//ResultSet res1x = stm.executeQuery(sql2);
%>
</body>
</html>
