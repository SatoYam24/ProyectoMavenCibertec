<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body bgcolor="#c5de9">
<h1>Planilla de Trabajadores</h1>
<%!
//metodo calcular planilla por hora...
public int calcular(int x, int y){
	//declaramos una variable de tipo entero...
	int resultado=x*y;
	//retornamos el valor...
	return resultado;
}//fin del metodo calcular...
%>

<%
//recuperamos los valores del formulario...
int vh=Integer.parseInt(request.getParameter("valorh"));
int ch=Integer.parseInt(request.getParameter("cantidadh"));
//declaramos variable total a pagar de tipo entero
out.println("<b>Total a pagar a trabajador </b>"+calcular(vh,ch)+" soles");
%>
</body>
</html>