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
String w_programa = "SEND"; // Tela
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

String campo1  = "";
String campo2  = "";
String campo3  = "";
String campo4  = "";
String campo5  = "";
String campo6  = "";
String campo7  = "";
String campo8  = "";
String campo9  = "";
String campo10 = "";
String campo11 = "";
String campo12 = "";
String campo13 = "";
String campo14 = "";
String campo15 = "";

String bus_cod    = request.getParameter("Cod_2");
%>

<%@ include file="sessao1.jsp" %>

<%

//Rotina Verifica Permissao da Tela 

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


         <br>
								
		 <div align=center>
							

<table width="473" border="16" bordercolor="#5A9CB1" bgcolor="#FFFFFF">
            <tr>
              <td><div align="center">
                  <table width="99%" border="0">
                    <tr>
                      <td width="82%" height="42"><div align="left"><b><font size="5" face="Verdana" color="#5A9CB1"><img src="imagens/px1.gif" width="10" height="10">Enviar Mensagem</font></b></div></td>
                      <td width="18%"><div align="center"><b><font size="2" face="Verdana"><% out.println(ww_mensage); %></font></b></div></td>
                    </tr>
                </table>
              </div></td>
            </tr>
            <tr>
              <td valign="top">                <div align="center">
				<form name="form1" method="post" action="cad_senha.jsp">
				  <table width="75%" border="0">
                    <tr>
                      <td><div align="center">
                        <table width="100%" border="0" cellpadding="0">
                          <tr>
                            <td width="23%"><div align="right"><b><font size="2" face="Verdana">Usuario.:</font></b></div></td>
                            <td width="77%"><select name="campo1" type="text" id="campo1" style=" font-family: Verdana; font-size: 14px;  height:23px;width:296px;  " onfocus="this.className='anormal'"  onblur="this.className='normal'" value="" >
                            <option value="">  </option>
                            <option value="TODOS"> TODOS </option>

							<%
							// obtém lista de tabelas do banco
							Statement pstmt0 = Con.createStatement(); 
							ResultSet res4;
							        
							res4 = pstmt0.executeQuery("SELECT * FROM useronline");
							
							while ( res4.next() ) {  
									String lastName = res4.getString(6);
										    
									%>
							
									<option value="<% out.println(lastName.toUpperCase()); %>"> <% out.println(lastName.toUpperCase()); %> </option>
							
									<%    
							}
										
							%>
                            
                            </select>
                            </td>
                          </tr>
                          <tr>
                            <td><div align="right"><b><font size="2" face="Verdana">Mensagem.:</font></b></div></td>
                            <td>&nbsp;</td>
                          </tr>
                        </table>
                        <table width="85%" border="0" cellpadding="0">
                          <tr>
                            <td width="19%" valign="top"><div align="center"><b>
                            <textarea name="campo2" cols="10" rows="10" id="campo2" style=" font-family: Verdana; font-size: 14px;  width:400px;  " onFocus="this.className='anormal'"  onBlur="this.className='normal'" ></textarea>
</b></div></td>
                          </tr>
                        </table>
                        </div></td>
                    </tr>
                </table>
                  <img src="imagens/px1.gif" width="10" height="4">
                </form>
                  <table width="417" border="0">
                    <tr>
                      <td width="15"><img src="imagens/px1.gif" width="15" height="8"></td>
                      <td width="460"><div align="center">
                          <!-- Inicio do Botoes de chamada -->
                          <table width="242" border="0">
                            <tr>
                            <td width="313"><div align="center">
                              <a href="#" ><img src="imagens/botaoazul_enviar.PNG" width="92" height="22" border="0"></a>                              </div></td>          
                              <td width="263"><div align="center"><a href="menu1.jsp" ><img src="imagens/botaoazul25.PNG" width="92" height="22" border="0"></a></div></td>
                            </tr>
                          </table>
                          <!--  Fim dos Botoes de chamada -->
                      </div></td>
                      <td width="27" valign="bottom"><img src="imagens/vacina.JPG" width="27" height="38"></td>
                    </tr>
                </table>
              </div>            </tr>
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
	
<div align="center">  


</div>
	
	
	
	</body>
	
</html>
<%
}
%>

