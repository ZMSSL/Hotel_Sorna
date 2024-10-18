<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hotel Sorna</title>
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="icon" href="imagens/faviconHotel.png">
    <script>
        var aposentos = ["imagens/single.jpg", "imagens/luxo.jpg", "imagens/familia.jpg", "imagens/estudante.jfif"];
        
        function mostra_imagem() {
            document.getElementById('fig').src = aposentos[document.getElementById('dmarca').value];
        }
    </script>
    
	
</head>

<body>
	<div align="center">
	
		
		<h1>Hotel Sorna</h1>
		<h2>Preencha abaixo os dados  para sua reserva.</h2>
		
		
	
		
        <img id="fig" src="imagens/fachada.jpg">
	
		<form method="POST" action="guardar.jsp" name="frm">
		
			
		
		
		<label> Check In</label><br>
		<input type="date" name="checkin" required><br>
		
		<label> Check Out</label><br>
		<input type="date" name="checkout" required><br>
		
		<label> Contacto</label><br>
		<input type="text" name="contacto" required><br>
		
		
		<label for="dmarca">Escolha o tipo de quarto:</label>
        <select id="dmarca" name="quarto" onchange="mostra_imagem()">
        
        <option value=0>Single</option>
        <option value=1>Luxury</option>
        <option value=2>Family</option>
        <option value=3>Student</option>
        </select>
    
    

			
			<br>
		
			<input type="submit" value="Registar">
			<input type="reset" value="Cancelar" onclick="mostra_imagem()">
			
		
			<a href="listagem.jsp">Listagem</a>
			<a href="novo_alojamento.jsp">Ainda tem dúvidas?</a>
			
			
		</form>
	</div>
</body>
</html>