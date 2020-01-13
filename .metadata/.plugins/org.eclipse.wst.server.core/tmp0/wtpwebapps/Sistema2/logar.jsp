<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="config.jsp" %>

<body>
<%

String nome_user     = request.getParameter("nome_log");
String senha_user    = request.getParameter("pwd");
String w_acao        = request.getParameter("acao");

//String w_acao = (String) (request.getParameter("acao"));

String sql1 = "";
String sql2 = "";
String msg  = "";
String msg1 = "";
String msg2 = "";
String msg3 = "";
String msg4 = "";
String msg5 = "";
String msg6 = "";
String msg7 = "";


Class.forName(driver_pes);
Connection Con2 = DriverManager.getConnection(connection_pes, user_pes, password_pes);

Statement stm2 = Con2.createStatement();

//Busca Usuario
sql1 = "SELECT * FROM tt_ser_01 WHERE login = '" + nome_user.toUpperCase() + "' AND senha = md5('" + senha_user + "')";

ResultSet res2 = stm2.executeQuery(sql1);

while(res2.next()){

		msg   = res2.getString("login");
		msg1  = res2.getString("senha");
		msg2  = res2.getString("e_mail");
		msg3  = res2.getString("programas");
		msg4  = res2.getString("tipo");
		msg5  = res2.getString("semana");
		msg6  = res2.getString("hora1");
		msg7  = res2.getString("hora2");


}
    
//out.println("msg "  + msg + "<br>");
//out.println("msg1 " + msg1 + "<br>");
//out.println("msg2 " + msg2 + "<br>");
//out.println("msg3 " + msg3 + "<br>");
//out.println("msg4 " + msg4 + "<br>");
//out.println("msg5 " + msg5 + "<br>");

if (msg4 != null && msg4 != ""){


	// Verifica Permissao para Horario
	int w_atual = Integer.parseInt((new java.text.SimpleDateFormat("HH")).format(new java.util.Date()));

	String h_inicio = msg6;  
	h_inicio        = h_inicio.substring(0,2);
	int h_inicioh   = Integer.parseInt(h_inicio);

	String h_fim    = msg7;  
	h_fim           = h_fim.substring(0,2);
	int h_fimh      = Integer.parseInt(h_fim);
	   

	if(w_atual >=  h_inicioh && w_atual <=  h_fimh){
		
		//out.println("Voce tem premissao de uso as "  + w_atual + "<br>");

		// OK
	}else{
		
		
		{response.sendRedirect("erroh.jsp");}
		
	}

	
	// Rotina Verifica dia da Semana e Permissao da Tela 

	String p_AMPM = new java.text.SimpleDateFormat("EEE").format(new java.util.Date());
	String str = msg5;
	String[] b = str.split(",");
	int faz = 0;

	for (int i= 0; i<=b.length-1; i++){	
			if (p_AMPM.toUpperCase().equals(b[i])){
				faz = 4;
			}
	}

	
	// Fim Verificar dia da Semana e Permissao da Tela 

	
	if (faz == 4){
		//OK

		if (msg == "" && msg1 == "")
		{
			//Menssagens = "Registro não Encontrado !!!!";
			{response.sendRedirect("login.jsp?login=falhou");}
			//out.println("entrei no 1 <br>");
			
			   
		}else{
		
			
			// Cria Variavel de sessao
			String objeto = msg;
			// Grava informacoa na sessao
			session.setAttribute("minha_sessao1", objeto);
		
			if(w_acao != null && w_acao.equals("logar")){    
		
				{response.sendRedirect("menu1.jsp?login=entrou");}
				//out.println("entrei no 2 <br>");
			}
			

		}

	}else{
		
		{response.sendRedirect("errro.jsp?entra=falhou");}
		//out.println("entrei no 3 <br>");

	}
	
	
}else{
	
	{response.sendRedirect("login.jsp?login=falhou");}
	//out.println("entrei no 4 <br>");

}

stm2.close();   
Con2.close();   
       
%>
</body>
</html>