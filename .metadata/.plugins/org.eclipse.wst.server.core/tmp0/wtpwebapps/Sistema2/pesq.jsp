<%--
a tag abaixo define que a pagina deve usar a jstl 'sql'
e a jstl 'c' que é responsável por executar algumas funções como for
--%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<sql:setDataSource
var="Conexao"
dataSource="jdbc:mysql://localhost/fba,com.mysql.jdbc.Driver,Usuario,Senha"/> <%--
a tag abaixo possui os mesmos argumentos da tag 'sql update', explicada na pagina anterior, com a única diferença que ela é usada para executar 'consultas' no banco
--%> 

<sql:query dataSource="${Conexao}" var="Consulta">
SELECT * FROM Teste
</sql:query> 

<html>
<head>
<title>
RESULTADO
</title>
</head>
<body>
<table width="100%" border=1>
<%--
A ação 'c forEach' funciona da seguinte forma, ela executa um loop por todos os registros de um array no caso abaixo ele percorre o array Consulta.columnNames que possui o nome das colunas retornados pelo banco de dados na consulta
--%> 

<tr>
<c:forEach var="NomeColuna" items="${Consulta.columnNames}">
 <th>
   <c:out value="${NomeColuna}"/>
 </th>
</c:forEach>
</tr> 

<%--
usando as ações da tag 'c forEach' são obtidos os valores do array de array(vetor) da variável 'Consulta.rowsByIndex' que possui os valores das linhas e colunas da consulta retornadas pelo banco. A primeira ação 'c forEach' executa um loop pelo primeiro array(linhas) e a outra pelo segundo array que esta dentro do primeiro (colunas)
--%> 

<c:forEach var="Row" items="${Consulta.rowsByIndex}">
 <tr>
  <c:forEach var="Coluna" items="${Row}">
   <td>
    ${Coluna}
   </td>
  </c:forEach>
 </tr>
</c:forEach>
</table>
<%--
rowCount mostra o total de linhas retornados pela consulta
--%>
Total de registro: ${Consulta.rowCount}<br> 

<%--
Abaixo alguns exemplos de como acessar diretamente os valores da variável Consulta que é um array dentro do outro array (ou seja um vetor)
--%> 

Acessando o valor da primeira linha(linha 0), primeira coluna(coluna 0):${Consulta.rowsByIndex[0][0]}<br>
Acessando o valor da primeira linha(linha 0), segunda coluna(coluna 1):${Consulta.rowsByIndex[0][1]}<br>
</body>
</html>