<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*, java.text.*" %>
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %>      
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>Reservas confirmadas</title>
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="icon" href="imagens/faviconHotel.png">
</head>
<body>
	<h1>Hotel Sorna</h1>
	<h2>Reservas já confirmadas.</h2>
	<div align="center">
	<table id="reservash">
		<tr>
		    <tr>
			<th>Checkin</th>
			<th>Checkout</th>
			<th>Quarto</th>
			
			
		</tr>
		<%
			Connection cn=ligacaoMySql.criarLigacaoMySql();
			Statement st=cn.createStatement();
			ResultSet rs=st.executeQuery("select * from reservash");
			while(rs.next()){
				out.println("<tr><td>"+rs.getDate(1)+"</td>");
				out.println("<td>"+rs.getDate(2)+"</td>");
				out.println("<td>"+rs.getString(5)+"</td>");
				
			}
			
			
			
		%>
	</table>
	<br>
	<p style="text-align:center">
		<a href="inicio.jsp">Voltar</a>
	</p>
	</div>
</body>
</html>