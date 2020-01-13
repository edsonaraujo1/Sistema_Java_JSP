<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%

//Resgata informacao gravada na sessao
String Minha_sessao1 = (String) session.getAttribute("minha_sessao1");
if (Minha_sessao1 != "" || Minha_sessao1 != null){
	w_nome3 = Minha_sessao1;
	
}else{
	
	if (Minha_sessao1 == null)
	{	
	   w_opcao = "faz";
	  {response.sendRedirect("login.jsp");}
	  return;
	}  
}
if (w_nome3 == "" || w_nome3 == null){
	   w_opcao = "faz";
	  {response.sendRedirect("login.jsp");}
	  return;
}
if (w_opcao != null || w_opcao != ""){
	w_opcao = "";
	

	//Saldação ao usuario
	
	int w_Hora = Integer.parseInt((new java.text.SimpleDateFormat("HH")).format(new java.util.Date()));
	
	String w_AMPM = new java.text.SimpleDateFormat("a").format(new java.util.Date());
	
	if (w_Hora <= 0) {
	    situa_1 = "Boa Madrugada";
	    sol_1   = "imagens/noite.png";
	}
	if (w_Hora > 0 && w_Hora <= 6) {
	    situa_1 = "Boa Madrugada";
	    sol_1   = "imagens/noite.png";
	}
	if (w_Hora > 6 && w_Hora <= 12) {
	    situa_1 = "Bom Dia";
	    sol_1   = "imagens/dia.png";
	}
	if (w_Hora > 12 && w_Hora <= 18) {
	    situa_1 = "Boa Tarde";
	    sol_1   = "imagens/dia.png";
	}
	if (w_Hora >= 19 && w_Hora <= 23) {
	    situa_1 = "Boa Noite";
	    sol_1   = "imagens/noite.png";
	}
	
	
	String w_bomdia = situa_1 + " Seja Bem Vindo, " + w_nome3 + " hoje e, " + new java.text.SimpleDateFormat("EEEE dd 'de' MMMM 'de' yyyy").format(new java.util.Date()) + "<br />";
	
	String w_login        = request.getParameter("login");

	
	//Variaveis de Sessao
	
	String campo1a  = "";
	String campo2a  = "";
	String campo3a  = "";
	String campo4a  = "";
	String campo5a  = "";
	String campo6a  = "";

	// Prepara a Conexao com o Banco
	Class.forName(driver_pes);
	Connection Con = DriverManager.getConnection(connection_pes, user_pes, password_pes);
	Statement stm = Con.createStatement();

	// Busca Usuario
	sql1 = "SELECT * FROM tt_ser_01 WHERE login = '" + w_nome3 + "'";
	ResultSet res1 = stm.executeQuery(sql1);
	while(res1.next()){
		campo1a  = res1.getString("id");
		campo2a  = res1.getString("codigo");
		campo3a  = res1.getString("login");
		campo4a  = "SISTEMAXP,"+res1.getString("programas");
		campo5a  = res1.getString("tipo");
		campo6a  = res1.getString("semana");
	}
    // Fim Busca Usuario

	
	// Fim Verificar dia da Semana e Permissao da Tela 
    
	//out.println(campo1a + "<br>");
	//out.println(campo2a + "<br>");
	//out.println(campo3a + "<br>");
	//out.println(campo4a + "<br>");
	//out.println(campo5a + "<br>");
	//out.println(campo6a + "<br><br>");

	// Busca Permissao
	sql2 = "SELECT * FROM permissoes WHERE login = '" + campo3a + "' AND tabela = '" + w_tabela + "'";
	ResultSet res2 = stm.executeQuery(sql2);
	while(res2.next()){
		tabelap = res2.getString("tabela");
		per1    = res2.getString("incluir");
		per2    = res2.getString("alterar");
		per3    = res2.getString("excluir");
		per4    = res2.getString("imprimir");
	}
	// Fim Busca Permissao

	//out.println(tabelap + "<br>");
	//out.println(per1 + "<br>");
	//out.println(per2 + "<br>");
	//out.println(per3 + "<br>");
	//out.println(per4 + "<br>");

	
%>