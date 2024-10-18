<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %>     
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Novo alojamento</title>
	<link rel="icon" href="imagens/faviconHotel.png">
	<link rel="stylesheet" href="css/estilos.css">
</head>
<body>
<%@include file="menu.jsp" %>
	<h1>Novo alojamento</h1>
	<hr>
	<div align="center">
	
		<%
			// recolher os dados do POST (as informações do alojamento)
			String alojamento=request.getParameter("novoalojamento");
	
		%>
	
		<table id="alojamentos">
			<tr>
				<td>Novo tipo de alojamento:</td>
				<td><%=alojamento %></td>
			</tr>	
		</table>
		
		<!-- guardar na base de dados -->
		
		<%
		
			// criar a ligação à base de dados
			Connection cn=ligacaoMySql.criarLigacaoMySql();
		
			// criar uma instãncia da classe Statement
			Statement st=cn.createStatement();
			
			// método para inserir os dados
			st.executeUpdate("insert into alojamentos (descricao) values('"+alojamento+"')");
		
		%>
		
		
		<h1>Novo alojamento criado</h1>
		
		<a href="novo_alojamento.jsp">Voltar</a>
		
		<a href="listagem_alojamentos.jsp">Listagem</a>
		
		</div>
</body>
</html>