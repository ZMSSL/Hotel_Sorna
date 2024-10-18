<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*, java.text.*" %>
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %>  
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quarto Família</title>
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="icon" href="imagens/faviconHotel.png">
    <style>
        .container {
            text-align: center; /* Centraliza o conteúdo */
        }
        .imagem {
            width: 30%; /* Define a largura das imagens */
            margin: 10px; /* Adiciona margem entre as imagens */
            border-radius: 8px; /* Adiciona cantos arredondados */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Adiciona sombra */
        }
        .imagens-container {
            display: flex; /* Usa flexbox para layout horizontal */
            justify-content: center; /* Centraliza as imagens */
            flex-wrap: wrap; /* Permite que as imagens se movam para a linha seguinte se não houver espaço */
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Detalhes do Quarto Família</h1>
    <div class="imagens-container">
        <img class="imagem" src="imagens/varandafamilia.jpg" alt="img1">
        <img class="imagem" src="imagens/familiaassentos.jpg" alt="img2">
        <img class="imagem" src="imagens/banheirofamilia.jfif" alt="img3">
    </div>
    <p>Ideal para famílias, com espaço amplo e conforto.</p>
    <br>
    
        <a href="inicio.jsp">Reservar</a>    
        <a href="novo_alojamento.jsp">Voltar</a>
</div>
</body>
</html>