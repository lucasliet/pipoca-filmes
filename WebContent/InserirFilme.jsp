<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Filme</h1>
	<p>Digite o dados do Filme para mostrar seus dados</p>
	<form action="manter_filmes.do" method="POST">
		<strong>Filme:</strong>
		<label>Titulo:</label><input type="text" name="titulo"/>
		<label>Descrição:</label><input type="text" name="descricao"/>
		<label>Diretor:</label><input type="text" name="diretor"/>
		<select id="genero">
			${html}
		</select>
		<label>Data:</label><input type="text" name="data"/>
		<label>Popularidade:</label><input type="text" name="popularidade"/>
		<input type="submit" name="acao" value="inserir"/>
	</form>
</body>
</html>