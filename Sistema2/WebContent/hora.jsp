           
<%@page import="java.text.SimpleDateFormat.*"%>
<%@page import="java.util.Date.*"%>  

<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@page import="java.text.ParseException.*"%>




<%
     
  

// Exemplo primeiro

   String w_hora_p = new java.text.SimpleDateFormat("HH:mm").format(new java.util.Date());
	
   SimpleDateFormat formatter = new SimpleDateFormat("HH:mm");   
   //String Date = new Date();
  
      try{  
         String hora1   = "08:00";  
         String hora2   = "23:00";  
         
         Date h_inicio   = formatter.parse(hora1);  
         Date h_fim      = formatter.parse(hora2);
         Date h_atual    = formatter.parse(w_hora_p);
         
         //out.println("h_inicio " + h_inicio + "<br>");
         //out.println("h_fim " + h_fim + "<br>");
         //out.println("h_arual " + h_atual + "<br>");
           
         if(h_atual.getTime() >=  h_inicio.getTime() && h_atual.getTime() <=  h_fim.getTime()){  
            out.println("Premitido para " + h_atual);  
         }  
         else{  
            out.println("Nao permitido para " + h_atual);  
         }  
      }  
      catch(Exception e){  
           out.println(e);
          
      }  

      
// Exemplo segundo
      
      TimeZone timeZone0 = TimeZone.getDefault(); 
      TimeZone timeZone1 = TimeZone.getTimeZone("America/Los_Angeles");
      TimeZone timeZone2 = TimeZone.getTimeZone("Europe/Copenhagen");

      Calendar calendar = new GregorianCalendar();

      long timeCPH = calendar.getTimeInMillis();
      out.println("<br>timeCPH  = " + timeCPH + "<br>");
      out.println("hour     = " + calendar.get(Calendar.HOUR_OF_DAY) + "<br><br><br>");

      
      // Buscando Tempo em Milesegundos
      calendar.setTimeZone(timeZone0);

      long timeLA = calendar.getTimeInMillis();
      long horaLA = calendar.get(Calendar.HOUR_OF_DAY);
      int somtime = 60;
      int somhora = 1;
      
      out.println("Milesegundos   = " + timeLA + "<br>");
      out.println("Hora atual&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= " + horaLA + "<br><br>");      
        
      
      out.println("Somado milesegundo  " + timeLA * somtime + "<br>");
      out.println("Somado hora " + calendar.get(Calendar.HOUR_OF_DAY) * somhora + "<br><br><br>");
             //private static boolean check2(Date entry) {  
                 //DateFormat df = new SimpleDateFormat("yyyy-MM-dd");  
                 //String test = df.format(entry);  
                 //String today = df.format(new Date());
                 
  
// Exemplos terceiro                 
                 
long startTime = System.currentTimeMillis();
long endTime   = System.currentTimeMillis();

long totalTime = endTime;        
                 
out.println("endtime  " + endTime + "<br>");
out.println("total    " + totalTime + "<br><br><br>");

                 //return test.compareTo(today) >= 0;  
             //}  
             

// Exemplos quatro             
GregorianCalendar gc = new GregorianCalendar();  

gc.setTime(new Date());  


int w_Hora1 = Integer.parseInt((new java.text.SimpleDateFormat("HH")).format(new java.util.Date()));
int w_Minu1 = Integer.parseInt((new java.text.SimpleDateFormat("mm")).format(new java.util.Date()));
int w_Secu1 = Integer.parseInt((new java.text.SimpleDateFormat("ss")).format(new java.util.Date()));

SimpleDateFormat sdf    = new SimpleDateFormat("HH:mm:ss"); 

gc.set(0, 0, 0, w_Hora1, w_Minu1, w_Secu1);  
out.println("HORA ATUAL: " + sdf.format(gc.getTime()) + "<br>");  
  
gc.add(Calendar.HOUR, 1);  
gc.add(Calendar.MINUTE, 00);  
gc.add(Calendar.SECOND, 00);  
  
out.println("HORA SOMADA: " + sdf.format(gc.getTime()) + "<br><br><br>");  
             
             


// Exemplo Quinto

//GregorianCalendar gc = new GregorianCalendar(); 

String w_sdf = new java.text.SimpleDateFormat("HH:mm:ss").format(new java.util.Date());
String v=w_sdf;  
String v2=w_sdf;  
              
            int hora = Integer.parseInt(v.substring(0,2));  
            out.println("Hora do Sistema " + hora + ":");  
            int min = Integer.parseInt(v.substring(3,5));  
            out.println(min + ":");  
            int seg = Integer.parseInt(v.substring(6,8));  
            out.println(seg + "<br>");  
            
            SimpleDateFormat sdf1 = new SimpleDateFormat("HH:mm:ss");     
            SimpleDateFormat sdf2 = new SimpleDateFormat("HH:mm:ss");     
            Date time2 = new Date(hora, min, seg);     
            gc.setTimeInMillis(time2.getTime());     
            
            hora = Integer.parseInt(v2.substring(0,2));  
            out.println(" Hora da tabela " + hora +":");  
            min = Integer.parseInt(v2.substring(3,5));  
            out.println(min + ":");  
            seg = Integer.parseInt(v2.substring(6,8));  
            out.println(seg + "<br><br>"); 
            
  
            gc.add(Calendar.HOUR,hora);  
            gc.add(Calendar.MINUTE,min);  
            gc.add(Calendar.SECOND,seg);    
            
            out.println("HORA SOMADA: " + sdf2.format(gc.getTime()) + "<br>");  
            out.println("MILISEGUNDOS: " + gc.getTimeInMillis() + "<br><br>");
            //return sdf2.format(gc.getTime());  
            
            
            
            Timer timer = new Timer();
            int tempmins = 0;
            tempmins = tempmins * 60; 
            //out.println()
            out.println(tempmins);
            
            out.println("subtracao de Milli " + (startTime + 1356914576) + "<br><br>");
            
            
            long hora_menor = 0;
            long intervalo_menor = 0;
            SimpleDateFormat  ds = new SimpleDateFormat ("HH:mm:ss");  
            Date hora1 = ds.parse("18:12:12");  // do banco
            Date hora2 = ds.parse(w_sdf);       // do sistema 
            
            
            long horario = (hora2.getTime() - hora1.getTime() ) / 1000 / 60 / 60;   
            
            long inter = (hora2.getTime() - hora1.getTime() ) / 1000 / 60 / 60;   

            long intervalo =  ((hora2.getTime() - hora1.getTime()) /1000 / 60); // em milisegundos  
            
            if (horario < 0){ hora_menor = (horario * - 1);}
            if (intervalo < 0){ intervalo_menor = (intervalo * - 1);}            
           
            if (hora_menor > 1){
            	
            	//"DELETE FROM useronline WHERE id " +  idms + "";
            }
            
         
            

      
%>
