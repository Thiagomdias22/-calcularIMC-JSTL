<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<%@ page language="java" contentType="text/html; charsaet=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>IMC3 (JSTL)</title>
</head>
<body>
	<h1>Calculo de IMC (JSTL)</h1>

	<c:set var="peso" scope="session" value="${param.peso}"></c:set>
	<c:set var="altura" scope="session" value="${param.altura}"></c:set>
	<c:set var="imc" scope="session" value="${peso/(altura*altura)}"></c:set>

	<h2>
		<c:choose>
			<c:when test='${imc < 18.5}'>
				<c:out value="Resultado: Magreza"></c:out><br/>
				<h4><c:out value="Sinto muito, seu Imc é"></c:out> <fmt:formatNumber type="number" maxFractionDigits="2" value="${imc}"/><c:out value="Kg/m2 e você precisa ganhar peso!"></c:out></h4>
			</c:when>
			<c:when test='${imc >= 18.5 && imc < 24.9 }'>
				<c:out value="Resultado: Normal"></c:out><br/>
				<h4><c:out value="Parabéns, seu Imc é"></c:out> <fmt:formatNumber type="number" maxFractionDigits="2" value="${imc}"/><c:out value="Kg/m2 e você está dentro do peso adequado!"></c:out></h4>
			</c:when>
			<c:when test='${imc >= 24.9 && imc < 30 }'>
				<c:out value="Resultado: Sobrepeso"></c:out><br/>
				<h4><c:out value="Sinto muito, seu Imc é"></c:out> <fmt:formatNumber type="number" maxFractionDigits="2" value="${imc}"/><c:out value="Kg/m2 e por isso você está acima do peso e deveria emagrecer!"></c:out></h4>
			</c:when>
			<c:when test='${imc >= 30}'>
				<c:out value="Resultado: Obesidade"></c:out><br/>
				<h4><c:out value="Sinto muito, seu Imc é"></c:out> <fmt:formatNumber type="number" maxFractionDigits="2" value="${imc}"/><c:out value="Kg/m2 e por isso você está acima do peso e deveria emagrecer!"></c:out></h4>
			</c:when>
		</c:choose>
	</h2>
</body>
</html>