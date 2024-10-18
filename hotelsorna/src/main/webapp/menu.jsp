<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Menu Sorna</title>
	<link rel="icon" href="imagens/faviconHotel.png">
	<link rel="stylesheet" href="css/estilos.css">
	<style>
		.botaomenu{
			background-color: #745a0a;
			color: white;
			padding: 15px;
			font-size: 15px;
			border: 2px solid black;
		    cursor: pointer;
		}
		
		.escolha{
			position: relative;
			display: inline-block;
		}
	
	    .escolha-conteudo{
	    	display: none;
	    	position: absolute;
	    	background-color: #ddd;
	    	min-width: 170px;
	    	boxshadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	    	z-index: 1;
	    }
	    
	    .escolha-conteudo a{
	    	color: black;
	    	padding: 12px;
	    	text-decoration: none;
	    	display: block;
	    }	    
	    
	    .escolha-conteudo a:hover{
	    	background-color: #5a4608;
	    }
	    
	    .escolha:hover .escolha-conteudo{
	    	display:block;
	    }
	    
	    .escolha:hover .botaomenu{
	    	background-color: #5a4608;
	    }
	</style>
</head>
<body>
	
</body>
</html>