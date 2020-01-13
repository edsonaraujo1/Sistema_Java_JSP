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

<%

//Declaracao de Variaveis Usadas no JSP
String situa_1 = "";
String vr1 = request.getParameter("opcao");
String ww_mensage = "";
int id_s            = 0;
String w_tabela   = "TT_SER_01"; // Tabela Banco
String w_programa = "CAD_SENHA"; // Tela
String w_nome3 = "";
String w_opcao = "";
String sol_1   = "";
String sql1    = "";
String sql2    = "";
String sql3    = "";
String sql4    = "";
String sql5    = "";

String tabelap = "";
String per1    = "";
String per2    = "";
String per3    = "";
String per4    = "";

String campo1x  = "";
String campo2x  = "";
String campo3x  = "";
String campo4x  = "";
String campo5x  = "";
String campo6x  = "";
String campo7x  = "";
String campo8x  = "";
String campo9x  = "";
String campo10x = "";
String campo11x = "";
String campo12x = "";
String campo13x = "";
String campo14x = "";
String campo15x = "";
int usuarios2 = 0;

String Cod_2 = request.getParameter("Cod_2");
%>

<%@ include file="sessao1.jsp" %>

<%	

// Rotina Verifica Permissao da Tela 

String p_PROGM = w_programa;
String strT = campo4a;
String[] f = strT.split(",");
int fazP = 0;

for (int i= 0; i<=f.length-1; i++){	
		if (p_PROGM.toUpperCase().equals(f[i])){
			fazP = 3;
		}
}

if (fazP != 3){
	
	{response.sendRedirect("enaaurlnp.jsp");}
	
}


//Limpar Campos do Formulario
if (request.getParameter("limpar") != null) { 

	ww_mensage = "Limpar Campos";
	campo1x  = "";
	campo2x  = "";
	campo3x  = "";
	campo4x  = new java.text.SimpleDateFormat("dd/MM/yyyy").format(new java.util.Date());
	campo5x  = "";
	campo6x  = "";
	campo7x  = "";
	campo8x  = "";
	campo9x  = "";
	campo10x = "";
	campo11x = "";
	campo12x = "";
	campo13x = "";
	campo14x = "";
	campo15x = "";
    Cod_2    = "";
	
}

// Verifica se Existe Entrada
if (Cod_2 != "" || Cod_2 == null){

	sql3 = "SELECT * FROM tt_ser_01 WHERE login = '" + Cod_2 + "' ORDER BY id DESC";
	
}else{	

    sql3 = "SELECT * FROM tt_ser_01 WHERE login = '' ORDER BY id DESC";

}
// Processos dos Botoes
//Listar Registros
if (vr1 != null && vr1.equals("lis_grid")) { 

	ww_mensage = "Listar na Tela";
	//out.println(request.getParameter("opcao")  + "<br>");
	//out.println("entrei   " + request.getParameter("Cod_2") + "<br>");

}

//Listar Excluir
if (vr1 != null && vr1.equals("excluir")) { 

	ww_mensage = "<font color='red'>Excluir</font>";
	//out.println(request.getParameter("opcao")  + "<br>");
	//out.println("entrei   " + request.getParameter("Cod_2") + "<br>");

}

if (request.getParameter("resetarsenha") != null){
	
	
	if (request.getParameter("campo3") != ""){

		try  
		   {

	         ww_mensage = "Senha Redefinida";

		    // Preparação para Inclusão
		    
		    //int campo_up  = Integer.parseInt( request.getParameter("campo") );
		    String campo_up   = request.getParameter("campo");
		    String campo2_up  = request.getParameter("campo2");
		
		    // Preparação para Inclusão  
		    PreparedStatement stm1x = Con.prepareStatement("update tt_ser_01 set senha = md5(?) where id = '" + campo_up + "'");
		    
	
		    // Instancia Variavei para Salvar
		    stm1x.setString(1, campo2_up);   
		    
			stm1x.executeUpdate();   
			
		    // Sucesso 
		    stm1x.close();   
		    ww_mensage = "<font color='#0000FF'>Senha Redeficinada com Sucesso !!!</font>";
	
	        }   
	        catch(Exception ex)   
	        {   
		          // Caso ocorra Erro 
		          ww_mensage = "<font color='red'>Erro ao Redefinir Senha !!!</font>";
	
	        }  

	
}
}
	

//Listar Alterar
if (request.getParameter("alterar") != null){ 


	try  
	   {
   		    ww_mensage = "Alterar";
		    
		    // Preparação para Inclusão
		    
		    //int campo_up  = Integer.parseInt( request.getParameter("campo") );
		    String campo_up   = request.getParameter("campo");
		    String campo1_up  = request.getParameter("campo1");
		    String campo2_up  = request.getParameter("campo2");
		    String campo3_up  = request.getParameter("campo3");
		    String campo4_up  = request.getParameter("campo4");
		    String campo5_up  = request.getParameter("campo5");
		    int campo6_up = Integer.parseInt( request.getParameter( "campo6" ) );
		    //String campo6_up  = request.getParameter("campo6");
		    String campo7_up  = request.getParameter("campo7");
		    String campo8_up  = request.getParameter("campo8");
		    String campo9_up  = request.getParameter("campo9");
		    String campo10_up  = request.getParameter("campo10");
		    String campo11_up  = request.getParameter("campo11");
		    String campo12_up  = request.getParameter("campo12");
		    String campo13_up  = request.getParameter("campo13");
		    String campo14_up  = request.getParameter("campo14");
		    String campo15_up  = request.getParameter("campo15");
		
		    // Preparação para Inclusão  
		    PreparedStatement stm1 = Con.prepareStatement("update tt_ser_01 set login = ?, senha2 = md5(?), data = ?, nome = ?, maquina = ?, permissao = ?, permis2 = ?, conta = ?, programas = ?, hora1 = ?, hora2 = ?, semana = ?, e_mail = ?, tipo  = ?  where id = '" + campo_up + "'");
		    
	
		    // Instancia Variavei para Salvar
		    stm1.setString(1, campo1_up.toUpperCase());   
		    stm1.setString(2, campo2_up);   
		    stm1.setString(3, campo3_up);   
		    stm1.setString(4, campo4_up);   
		    stm1.setString(5, campo5_up);   
		    stm1.setInt(6, campo6_up);   
		    stm1.setString(7, campo7_up);   
		    stm1.setString(8, campo8_up);   
		    stm1.setString(9, campo9_up);   
		    stm1.setString(10, campo10_up);   
		    stm1.setString(11, campo11_up);   
		    stm1.setString(12, campo12_up);   
		    stm1.setString(13, campo13_up);
		    stm1.setString(14, campo14_up);
		    
			stm1.executeUpdate();   
			
		    // Sucesso 
		    stm1.close();   
		    ww_mensage = "<font color='#0000FF'>Alterado com Sucesso !!!</font>";

	   }   
	   catch(Exception ex)   
	   {   
		  // Caso ocorra Erro 
		   ww_mensage = "<font color='red'>Erro ao Alterar !!!</font>";

	   }  

	

}

//Listar Incluir
if (request.getParameter("incluir") != null) { 
	
	
	try  
	   {
			ww_mensage = "Incluir";
		    
		    // Preparação para Inclusão  
		    String campo1_sal  = request.getParameter("campo1");
		    String campo2_sal  = request.getParameter("campo2");
		    String campo3_sal  = request.getParameter("campo3");
		    String campo4_sal  = request.getParameter("campo4");
		    String campo5_sal  = request.getParameter("campo5");
		    String campo6_sal  = request.getParameter("campo6");
		    String campo7_sal  = request.getParameter("campo7");
		    String campo8_sal  = request.getParameter("campo8");
		    String campo9_sal  = request.getParameter("campo9");
		    String campo10_sal  = request.getParameter("campo10");
		    String campo11_sal  = request.getParameter("campo11");
		    String campo12_sal  = request.getParameter("campo12");
		    String campo13_sal  = request.getParameter("campo13");
		    String campo14_sal  = request.getParameter("campo14");
		    String campo15_sal  = request.getParameter("campo15");
		
		    String sql3x = "";
		    String sql3c = "";
		
			sql3x = "SELECT * FROM tt_ser_01 ORDER BY codigo ASC";	
		
		    ResultSet res3 = stm.executeQuery(sql3x);
		
		    int nu_1 = 0;
		    int mai_nu = 0;
		    
			while(res3.next()){
				
				nu_1 = res3.getInt("codigo");
			}
			mai_nu = nu_1+1;
		
		    // Preparação para Inclusão  
		    PreparedStatement stm1 = Con.prepareStatement("insert into tt_ser_01 (codigo,login,senha,data,nome,maquina,permissao,permis2,conta,programas,hora1,hora2,semana,e_mail,tipo) value (?,?,md5(?),?,?,?,?,?,?,?,?,?,?,?,?)");   
		
		    // Instancia Variavei para Salvar
		    stm1.setInt(1, mai_nu);   
		    stm1.setString(2, campo1_sal);   
		    stm1.setString(3, campo2_sal.toUpperCase());   
		    stm1.setString(4, campo3_sal);   
		    stm1.setString(5, campo4_sal);   
		    stm1.setString(6, campo5_sal);   
		    stm1.setString(7, campo6_sal);   
		    stm1.setString(8, campo7_sal);   
		    stm1.setString(9, campo8_sal);   
		    stm1.setString(10, campo9_sal);   
		    stm1.setString(11, campo10_sal);   
		    stm1.setString(12, campo11_sal);   
		    stm1.setString(13, campo12_sal);   
		    stm1.setString(14, campo13_sal);   
		    stm1.setString(15, campo14_sal);
		 	   
			stm1.executeUpdate();   
			
		    // Sucesso 
		    stm1.close();   
		    ww_mensage = "<font color='#0000FF'>Salvo com Sucesso !!!</font>";

	   }   
	   catch(Exception ex)   
	   {   
		  // Caso ocorra Erro 
		   ww_mensage = "<font color='red'>Erro ao Salvar !!!</font>";

	   }  
    
}

//Listar Consultar
String pesq = request.getParameter("submit");

//out.println("submit " + pesq);
if (request.getParameter("submit") != null){

	ww_mensage = "Consultado";
	//out.println("submit   " + request.getParameter("submit") + "<br>");
	String tipo1 = "";
	tipo1 = request.getParameter("campo"); // id
	String tipo2 = "";
	tipo2 = request.getParameter("campo1"); // login
	String tipo3 = "";
	tipo3 = request.getParameter("campo4"); // login

	
	//out.println("campo3   " + request.getParameter("campo4") + "<br>");

	   if (campo2x != "")
	   {   
		   sql3 = "SELECT * FROM tt_ser_01 WHERE id = '" + tipo1 + "'";
	   }
	   if (tipo2 != "")
	   {   
		   sql3 = "SELECT * FROM tt_ser_01 WHERE login LIKE '%" + tipo2 + "%'";
	   }
	   if (tipo3 != "")
	   {   
		   sql3 = "SELECT * FROM tt_ser_01 WHERE nome LIKE '%" + tipo3 + "%'";
	   }
	
}

// Navegacao nos Registros
if (vr1 != null && vr1.equals("navegar1")) {
	
	String inicio_x = "";
    if (request.getParameter("Inicio") != ""){
    	inicio_x = request.getParameter("Inicio");
    	   String Cod_Inicio = inicio_x;
    	    int cod4 =  Integer.parseInt(Cod_Inicio);
        	id_s = cod4 - 1;

    }
    	
    ww_mensage = "Inicio " + id_s + " somado";
	
}
if (vr1 != null && vr1.equals("navegar2")) {
	
	String anterior_x = "";
    if (request.getParameter("Anterior") != ""){
    	anterior_x = request.getParameter("Anterior");
    	   String Cod_Anterior = anterior_x;

    		int cod4 =  Integer.parseInt(Cod_Anterior);
        	id_s = cod4 - 1;
        	if (id_s == 0){
        		id_s = 1;
        	}

    }else{
    	id_s = 1;
    }
 	
    ww_mensage = "Anterior " + id_s + " somado";
	
}
if (vr1 != null && vr1.equals("navegar3")) {
    	
	String proximo_x = "";
    if (request.getParameter("Proximo") != ""){
    	proximo_x = request.getParameter("Proximo");
        String Cod_Proximo = proximo_x;

        int cod4 =  Integer.parseInt(Cod_Proximo);

        id_s = cod4 + 1;
            	
    }else{
    	
    	id_s = 1;
    }
    
    if (id_s == 0){
    	
    	ww_mensage = "Fim do Arquivo "+ id_s;
    	 
    	
    }else{
    	
       ww_mensage = "Proximo " + id_s + " somado";
    }
	
}
if (vr1 != null && vr1.equals("navegar4")) {
	
	String fim_x = "";
    if (request.getParameter("Fim") != ""){
    	fim_x = request.getParameter("Fim");
    	   String Cod_Fim = fim_x;
    	    int cod4 =  Integer.parseInt(Cod_Fim);
        	id_s = cod4 + 1;

    }  	
    ww_mensage = "Fim " + id_s + " somado";
	
}

	// Inicio da Rotina de Apresentação
	
	if (vr1 != null && vr1.equals("navegar1")) {
		
		sql3 = "SELECT * FROM tt_ser_01 ORDER BY id DESC";
		
	}else if (vr1 != null && vr1.equals("navegar2")) {
		
		sql3 = "SELECT * FROM tt_ser_01 WHERE id = '" + id_s + "'";
		
	}else if (vr1 != null && vr1.equals("navegar3")) {
		
		sql3 = "SELECT * FROM tt_ser_01 WHERE id = '" + id_s + "'";
		
	}else if (vr1 != null && vr1.equals("navegar4")) {
		
		sql3 = "SELECT * FROM tt_ser_01 ORDER BY id ASC";	
	}
	
	
	ResultSet res3 = stm.executeQuery(sql3);
	
	while(res3.next()){
		
		campo1x   = res3.getString("id");
		campo2x   = res3.getString("login");
		campo3x   = res3.getString("senha");
		campo4x   = res3.getString("data");
		campo5x   = res3.getString("nome");
		campo6x   = res3.getString("maquina");
		campo7x   = res3.getString("permissao");
		campo8x   = res3.getString("permis2");
		campo9x   = res3.getString("conta");
		campo10x  = res3.getString("programas");
		campo11x  = res3.getString("hora1");
		campo12x  = res3.getString("hora2");
		campo13x  = res3.getString("semana");
		campo14x  = res3.getString("e_mail");
		campo15x  = res3.getString("tipo");

	}	
    // Informa que o Registro nao foi encontrado !!
	if (campo1x == "" || campo1x == null){
		
		String sql3z = "";
		String quardar = "";
		String cons_2 = request.getParameter("submit");
		if (cons_2 != null){
			
		    ww_mensage = "<font color='red'>Registro Não Encontrado!!</font>";
		}    
		
	}	
	%>

	<body  style=" margin-left: 0px;  margin-top: 0px;  margin-right: 0px;  margin-bottom: 0px; " onkeydown="javascript:if (event.KeyCode==13) event.KeyCode=9; javascript:document.onkeydown = keyCatcher();" onload="document.form1.nome_log.focus();">
	
	<div align="left">  <table width="200" border="0" cellpadding="0" cellspacing="0">
	
	    <tr>
        <td>
        
	    <div align="center">
            <table width="133" border="0">
        
				<div style="Z-INDEX: 600; LEFT: 00px; WIDTH: 616px; POSITION: absolute; TOP: 0px; HEIGHT: 19px">
				
				<IFRAME src="user.jsp" width="130" height="22" scrolling="no" frameborder="0" align="left"></IFRAME>
				
				</div>
        
            </table>
        </div>
        
        </td>
        <td width="876"><div align="center">

        <% out.println("<img src='" + sol_1 + "' width=20  height=17  border=0  />"); %>
        
        <font face="Verdana" size="2"><b><i><% out.println(w_bomdia); %></i></b></font></div></td>
        <td width="7">&nbsp;</td>
      </tr>
      <tr>
        <td><div align="center"><img src="imagens/carta.gif" width="40" height="31"></div></td>
	      <td><table width="200" border="0" cellpadding="0" cellspacing="0">
	        <tr>
	        
	        
          <td><img src="imagens/px1.gif" width="3" height="30"></td>
          <td><img src="imagens/cadastro.png" width="95" height="28"></td>
          <td><img src="imagens/px1.gif" width="4" height="30"></td>
          <td><img src="imagens/contribuicao.png" width="95" height="28"></td>
          <td><img src="imagens/px1.gif" width="4" height="30"></td>
          <td><img src="imagens/relatorios.png" width="95" height="28"></td>
          <td><img src="imagens/px1.gif" width="4" height="30"></td>
          <td><img src="imagens/saude.png" width="95" height="28"></td>
          <td><img src="imagens/px1.gif" width="4" height="30"></td>
          <td><img src="imagens/juridico.png" width="95" height="28"></td>
          <td><img src="imagens/px1.gif" width="4" height="30"></td>
          <td><img src="imagens/caixa.png" width="95" height="28"></td>
          <td><img src="imagens/px1.gif" width="4" height="30"></td>
          <td><img src="imagens/website.png" width="95" height="28"></td>
          <td><img src="imagens/px1.gif" width="4" height="30"></td>
          <td><img src="imagens/operador.png" width="95" height="28"></td>
          <td><img src="imagens/px1.gif" width="4" height="30"></td>
          <td><img src="imagens/help.png" width="95" height="28"></td>
          <td><img src="imagens/px1.gif" width="3" height="30"></td>
          
          
        </tr>			
	      </table></td>
	            <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td align="left" valign="top"><font color="#000000" size="1"><% out.println(w_versaox); %></font></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td align="left" valign="top">
        <!--  Inicio do Form -->
        <div align="center">
          <table width="711" border="16" bordercolor="#5A9CB1" bgcolor="#FFFFFF">
            <tr>
              <td><div align="center">
                  <table width="100%" border="0">
                    <tr>
                      <td width="64%" height="42"><div align="left"><b><font size="5" face="Verdana" color="#5A9CB1"><img src="imagens/px1.gif" width="10" height="10">Cadastro de Permiss&otilde;es </font></b></div></td>
                      <td width="36%"><div align="center"><b><font size="2" face="Verdana"><% out.println(ww_mensage); %></font></b></div></td>
                    </tr>
                  </table>
              </div></td>
            </tr>
            <tr valign="top">
              <td valign="top"><div align="center">
                <form name="form1" method="post" action="cad_senha.jsp">
                  <table width="100%" border="0">
                    <tr>
                      <td height="9"><div align="center">
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td width="19%"><div align="right"><b><font size="2" face="Verdana">Login.:</font></b></div></td>
                            <td width="27%"><input name="campo1" type="text" id="campo1" value="<% out.println(campo2x); %>" style=" font-family: Verdana; font-size: 14px;  height:23px;width:156px;  " onfocus="this.className='anormal'"  onblur="this.className='normal'" value="" >
                                             <input name="campo" type="hidden" id="campo" value="<% out.println(campo1x); %>">
                            </td>
                            <td width="10%"><div align="right"><b><font size="2" face="Verdana">Senha.:</font></b></div></td>
                            <td width="18%"><input name="campo2" type="password" id="campo2" value="<% out.println(campo3x); %>" style=" font-family: Verdana; font-size: 14px;  height:23px;width:106px;  " onfocus="this.className='anormal'"  onblur="this.className='normal'" value="" ></td>
                            <td width="10%"><div align="right"><b><font size="2" face="Verdana">Data.:</font></b></div></td>
                            <td width="16%"><input name="campo3" type="text" id="campo3" value="<% out.println(campo4x); %>" style=" font-family: Verdana; font-size: 14px;  height:23px;width:95px;  " onfocus="this.className='anormal'"  onblur="this.className='normal'" value="" ></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td width="19%"><div align="right"><b><font size="2" face="Verdana">Nome.:</font></b></div></td>
                            <td width="47%"><input name="campo4" type="text" id="campo4" value="<% out.println(campo5x); %>" style=" font-family: Verdana; font-size: 14px;  height:23px;width:296px;  " onfocus="this.className='anormal'"  onblur="this.className='normal'" value="" ></td>
                            <td width="12%"><div align="right"><b><font size="2" face="Verdana">Maquina.:</font></b></div></td>
                            <td width="22%"><input name="campo5" type="text" id="campo5" value="<% out.println(campo6x); %>" style=" font-family: Verdana; font-size: 14px;  height:23px;width:135px;  " onfocus="this.className='anormal'"  onblur="this.className='normal'" value="" ></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td width="19%"><div align="right"><b><font size="2" face="Verdana">Permiss&atilde;o.:</font></b></div></td>
                            <td width="26%"><input name="campo6" type="text" id="campo6" value="<% out.println(campo7x); %>" style=" font-family: Verdana; font-size: 14px;  height:23px;width:156px;  " onfocus="this.className='anormal'"  onblur="this.className='normal'" value="" ></td>
                            <td width="11%"><div align="right"><b><font size="2" face="Verdana">Nivel.:</font></b></div></td>
                            <td width="12%"><input name="campo7" type="text" id="campo7" value="<% out.println(campo8x); %>" style=" font-family: Verdana; font-size: 14px;  height:23px;width:52px;  " onfocus="this.className='anormal'"  onblur="this.className='normal'" value="" ></td>
                            <td width="10%"><div align="right"><b><font size="2" face="Verdana">Conta.:</font></b></div></td>
                            <td width="22%"><select name="campo8" type="text" id="campo8" value="<% out.println(campo9x); %>" style=" font-family: Verdana; font-size: 14px;  height:23px;width:134px;  " onfocus="this.className='anormal'"  onblur="this.className='normal'" value="" >
                            
                            <%

							if (campo9x != null || campo9x != "")
							{
							%>	
								<option value="<% out.println(campo9x); %>"> <% out.println(campo9x); %> </option>
							            <option value="BLOQUEADA">  BLOQUEADA     </option>
							            <option value="ATIVA">      ATIVA </option>
							            <option value="CANCELADA">  CANCELADA  </option>
							<%	
							}else{
							%>	
							            <option value=" ">  </option>
							            <option value="BLOQUEADA">  BLOQUEADA     </option>
							            <option value="ATIVA">      ATIVA </option>
							            <option value="CANCELADA">  CANCELADA  </option>
							<%            
							}
	                        %>
                            </select>
                            
                            </td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td width="19%" valign="top"><div align="right"><b><font size="2" face="Verdana">Programas Permitidos .:</font></b></div></td>
                            <td width="81%"><textarea name="campo9" cols="55" rows="5" id="campo9" style=" font-family: Verdana; font-size: 14px;  width:514px;  " onfocus="this.className='anormal'"  onblur="this.className='normal'" ><% out.println(campo10x); %></textarea></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td width="19%">&nbsp;</td>
                            <td width="20%"><div align="center"><b><font size="2" face="Verdana">Inicio</font></b></div></td>
                            <td width="16%"><div align="center"><b><font size="2" face="Verdana">Fim</font></b></div></td>
                            <td width="11%">&nbsp;</td>
                            <td width="34%"><div align="center"><b><font size="2" face="Verdana">Dias da Semana </font></b></div></td>
                          </tr>
                          <tr>
                            <td><div align="right"><b><font size="2" face="Verdana">Horario.:</font></b></div></td>
                            <td><input name="campo10" type="text" id="campo10" value="<% out.println(campo11x); %>" style=" font-family: Verdana; font-size: 14px;  height:23px;width:95px;  " onfocus="this.className='anormal'"  onblur="this.className='normal'" value="" >
                              <strong><font size="2" face="Verdana">as:</font></strong> </td>
                            <td><input name="campo11" type="text" id="campo11" value="<% out.println(campo12x); %>" style=" font-family: Verdana; font-size: 14px;  height:23px;width:91px;  " onfocus="this.className='anormal'"  onblur="this.className='normal'" value="" ></td>
                            <td><b><font size="2" face="Verdana">Semana:</font></b></td>
                            <td><input name="campo12" type="text" id="campo12" value="<% out.println(campo13x); %>" style=" font-family: Verdana; font-size: 14px;  height:23px;width:210px;  " onfocus="this.className='anormal'"  onblur="this.className='normal'" value="" ></td>
                          </tr>
                        </table>
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td width="19%"><div align="right"><b><font size="2" face="Verdana">E-mail.:</font></b></div></td>
                            <td width="36%"><input name="campo13" type="text" id="campo13" value="<% out.println(campo14x); %>" style=" font-family: Verdana; font-size: 14px;  height:23px;width:224px;  " onfocus="this.className='anormal'"  onblur="this.className='normal'" value="" ></td>
                            <td width="11%"><div align="right"><b><font size="2" face="Verdana">Tipo.:</font></b></div></td>
                            <td width="34%"><select name="campo14" type="text" id="campo14" value="<% out.println(campo15x); %>" style=" font-family: Verdana; font-size: 14px;  height:23px;width:210px;  " onfocus="this.className='anormal'"  onblur="this.className='normal'" value="" >
                            
                            
                            <%

							if (campo15x != null || campo15x != "")
							{
							%>	
								<option value="<% out.println(campo15x); %>"> <% out.println(campo15x); %> </option>
							            <option value="ADMINISTRADOR">  ADMINISTRADOR </option>
							            <option value="OP. DE CAIXA">   OP. DE CAIXA  </option>
							            <option value="USUARIO">  USUARIO </option>
							<%	
							}else{
							%>	
							            <option value=" ">  </option>
							            <option value="ADMINISTRADOR">  ADMINISTRADOR </option>
							            <option value="OP. DE CAIXA">   OP. DE CAIXA  </option>
							            <option value="USUARIO">  USUARIO </option>
							<%            
							}
	                        %>
                            </select>
                            
                            
                            
                            
                            </td>
                          </tr>
                        </table>

                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td width="19%" align="left">&nbsp;</td>
                            <td width="36%" align="left"><input type="image" name="resetarsenha" value="resetarsenha" src="imagens/resetsenha.png" />
                                                         </td>
                            <td width="11%">&nbsp;</td>
                            <td width="34%">&nbsp;</td>
                          </tr>
                        </table>
                      </div></td>
                    </tr>
                  </table>
                  <img src="imagens/px1.gif" width="10" height="4">
                  
                  <table width="633"  height="80" border="0">
                    <tr>
                      <td width="4"><img src="imagens/px1.gif" width="15" height="1"></td>
                      <td width="590"><div align="center">
                          <!-- Inicio do Botoes de chamada -->
                          <table width="590" border="0">
                            <tr>
                            <td width="92"><div align="center">
                    <%
					if (per4.equals("SIM")){
					%>
 
                              <a href="permissao.jsp?Cod_2=<% out.println(campo2x); %>" ><img src="imagens/botaoazul46.PNG" width="92" height="22" border="0"></a>
                    <%
                    }else{
					%>
                                  <img src="imagens/botaoazul46.PNG" width="92" height="22" border="0">
                    <%
					}
                    %>
                              </div></td>          
                              <td width="92"><div align="center"><a href="cad_senha.jsp?opcao=lis_grid&Cod_2=<% out.println(campo1x); %>" ><img src="imagens/botaoazul3.PNG" width="92" height="22" border="0"></a></div></td>
                              <td width="92"><div align="center">
                                  <%
					
					
					if (per3.equals("SIM")){
					%>
                                  <a href="cad_senha.jsp?opcao=excluir&Cod_2=<% out.println(campo1x); %>"> <img src="imagens/botaoazul4.PNG" width="92" height="22" border="0"></a>
                                  <%
					}else{
					%>
                                  <img src="imagens/botaoazul01.PNG" width="92" height="22" border="0">
                                  <%
					}
					%>
                              </div></td>
                              <td width="92"><div align="center">
                                  <%
					if (per2.equals("SIM")){
					%>
                                  <input type="image" name="alterar" value="alterar" src="imagens/botaoazul5.PNG" />
                                  
                                  <%
					}else{
					%>
                                  <img src="imagens/botaoazul01.PNG" width="92" height="22" border="0">
                                  <%
					}
                    %>
                              </div></td>
                              <td width="92"><div align="center">
                                  <%
					if (per1.equals("SIM")){
						
						
						            if (campo1x == "" || campo1x == null){
					%>
                                  
                                        <input type="image" name="incluir" value="incluir" src="imagens/botaoazul10.PNG" />
                                    <%
						            }else{
						            %>
						            	<img src="imagens/botaoazul01.PNG" width="92" height="22" border="0">
						            <%	
						            }
					}else{
					%>
                                  <img src="imagens/botaoazul01.PNG" width="92" height="22" border="0">
                                  <%	
					}
                    %>
                              </div></td>
                              <td width="200"><div align="center">
                              
                              <input type="image" name="submit" value="pesquisa" src="imagens/botaoazul7.PNG" />   

                                 
                              
                              
                              
                              </div></td>
                            </tr>
                            <tr>
                              <td><div align="center">
                                  <table width="89" border="0" cellpadding="1" cellspacing="0">
                                    <tr>
                                      <td width="39"><a href="cad_senha.jsp?opcao=navegar1&Inicio=<% out.println(campo1x); %>" ><img src="imagens/inicio.PNG" width="39" height="32" border="0"></a></td>
                                      <td width="94"><a href="cad_senha.jsp?opcao=navegar2&Anterior=<% out.println(campo1x); %>" ><img src="imagens/anterior.PNG" width="39" height="32" border="0"></a></td>
                                    </tr>
                                  </table>
                              </div></td>
                              <td><div align="center">
                                  <table width="76" border="0" cellpadding="1" cellspacing="0">
                                    <tr>
                                      <td width="40"><a href="cad_senha.jsp?opcao=navegar3&Proximo=<% out.println(campo1x); %>" ><img src="imagens/proximo.PNG" width="40" height="32" border="0"></a></td>
                                      <td width="26"><a href="cad_senha.jsp?opcao=navegar4&Fim=<% out.println(campo1x); %>"><img src="imagens/fim.PNG" width="39" height="32" border="0"></a></td>
                                    </tr>
                                  </table>
                              </div></td>
                              <td><div align="center"><a href="#" target="new" ><img src="imagens/botaoazul01.PNG" width="92" height="22" border="0"></a></div></td>
                              <td><div align="center"><a href="#" target="new" ><img src="imagens/botaoazul01.PNG" width="92" height="22" border="0"></a></div></td>
                              <td>
                              
                                 <input type="image" name="limpar" value="limpar" src="imagens/botaobanco51.png" />   
                              
                              
                              
                              </div></td>
                              <td><div align="center"><a href="menu1.jsp"><img src="imagens/botaoazul24.PNG" width="92" height="22" border="0"></a></div></td>
                            </tr>
                          </table>
                          <!--  Fim dos Botoes de chamada -->
                      </div></td>
                      <td width="33" valign="bottom"><img src="imagens/vacina.JPG" width="27" height="38"></td>
                    </tr>
                  </table>
                  </form>
                </div>
            </tr>
          </table>
</div>
        <!-- Fim do Form -->
        </td>
        <td>&nbsp;</td>
      </tr>

	  </table>
	  <br/>
	  <br/>
	  <br/>
	  
	  <div align=center>
	  
	</div>
	
	</div>
	</body>
	
</html>
<%
}
%>

