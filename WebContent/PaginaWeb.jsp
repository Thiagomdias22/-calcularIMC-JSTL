<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>IMC3 (JSTL)</title>
</head>
<body>
	<h1>Calculo de IMC (JSTL)</h1>
	<form action="calcularImc.jsp">
		<label>Altura: </label> <input type="text" name="altura"
			onchange="this.value = this.value.replace(',', '.')"><br />
		<br /> <label>Peso: </label> <input type="text" name="peso"
			onchange="this.value = this.value.replace(',', '.')"><br />
		<br /> <input type="submit" value="Calcular">
	</form>
</body>
</html>