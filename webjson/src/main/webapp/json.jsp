<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
%>
<%@ page import="com.arquitecturajava.GestorJson" %>
<%@ page import="com.arquitecturajava.Persona" %>
<%@ page import="java.nio.file.Path" %>
<%@ page import="java.nio.file.Paths" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	GestorJson gestor = new GestorJson();
	
	Persona p= gestor.leerPersona();
	out.println(p.getNombre()+p.getEdad());
	
	%>
	
	
</body>
</html>