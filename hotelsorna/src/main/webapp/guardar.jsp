 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
     <meta charset="UTF-8">
     <title>Sua reserva</title>
     <link rel="stylesheet" href="css/estilo.css">
     <link rel="icon" href="faviconHotel.png">
</head>
<body>
    <div align="center">
    <h1>Hotel Sorna</h1>
    <p id="data"></p>
   

    <script>
        const dataAtual = new Date().toLocaleDateString('pt-PT');
        document.getElementById('data').innerText = dataAtual;
        </script>
    <hr>
    <div align="center">
<%
    String descricao;
    String checkin = request.getParameter("checkin");
    String checkout = request.getParameter("checkout");
    String contacto = request.getParameter("contacto");
    String quarto = request.getParameter("quarto");
    
    if (quarto.equals("0")) {
        descricao = "Single";
    } else if (quarto.equals("1")) {
        descricao = "Luxury";
    } else if (quarto.equals("2")) {
        descricao = "Family";
    } else if (quarto.equals("3")) {
        descricao = "Student";
    } else {
        descricao = "Não especificado";
    }
    quarto = quarto.trim();
   
%>
<table id="reservash">
    <tr>
        <td>Quarto:</td>
        <td><%= descricao %></td>
        
    </tr>
    <tr>
        <td>Check In:</td>
        <td><%= checkin %></td>
    </tr>
    <tr>
        <td>Check Out:</td>
        <td><%= checkout %></td>
    </tr>
    <tr>
        <td>Contacto:</td>
        <td><%= contacto %></td>
    </tr>
</table>
     
     <!-- guardar na base de dados -->
     
     <%
		
			// criar a ligação à base de dados
			Connection cn=ligacaoMySql.criarLigacaoMySql();
		
			// criar uma instãncia da classe Statement
			Statement st=cn.createStatement();
			
			// método para inserir os dados
			st.executeUpdate("insert into reservash (checkin,checkout,contacto,alojamento) values('"+checkin+"','"+checkout+"','"+contacto+"','"+descricao+"')");
		
		%>
     
     <h1>Reserva do seu quarto efetuada com sucesso!</h1>
     <a href="inicio.jsp">Voltar</a>
     <a href="listagem.jsp">Listagem</a>
     </div>
     </div>
    

</body>
</html>