<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="ligarBD.*" %>
<%@page import="java.sql.*" %>  
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tipos de quartos</title>
    <link rel="stylesheet" href="css/estilo.css">
    <link rel="icon" href="faviconHotel.png">
    <style>
        body {
            background-color: #cacfd2;
            text-align: center;
        }
        .container {
            background-color: #cacfd2;
            text-align: center; /* Centraliza o conteúdo */
        }
        .imagem {
            display: inline-block; /* Permite que as imagens fiquem lado a lado */
            width: 400px; /* Aumente o tamanho das imagens */
            margin: 10px; /* Espaçamento entre as imagens */
        }
        figure {
            display: inline-block; /* Para manter as legendas com as imagens */
            margin: 10px; /* Espaçamento entre figuras */
        }
        figcaption, a {
            background-color: #745a0a; /* Cor de fundo padrão */
            color: white; /* Cor do texto */
            padding: 5px; /* Espaçamento interno */
            text-decoration: none; /* Remove sublinhado dos links */
            display: inline-block; /* Para que o fundo funcione corretamente */
            border-radius: 5px; /* Bordas arredondadas */
        }
        figcaption:hover, a:hover {
            background-color: #5a4608; /* Cor de fundo ao passar o mouse */
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Conheça abaixo os nossos tipos de quartos</h1>
    
    <a href="detalhes_familia.jsp">
    <img class="imagem" src="imagens/familia.jpg" alt="Quarto Família">
    <br>
    <span>Quarto Família</span>
</a>

<a href="detalhes_luxo.jsp">
    <img class="imagem" src="imagens/luxo.jpg" alt="Quarto de Luxo">
    <br>
    <span>Quarto de Luxo</span>
</a>

<a href="detalhes_single.jsp">
    <img class="imagem" src="imagens/single.jpg" alt="Quarto para Solteiro">
    <br>
    <span>Quarto para Solteiro</span>
</a>

<a href="detalhes_estudante.jsp">
    <img class="imagem" src="imagens/estudante.jfif" alt="Quarto para Estudante">
    <br>
    <span>Quarto para Estudante</span>
</a>
    <br>
    <br>
    
    <a href="inicio.jsp">Reservar</a>   
    <a href="page1.jsp">Voltar</a>
    <a href="listagem_alojamentos.jsp">Períodos já reservados</a>
</div>

</body>
</html>

    
    