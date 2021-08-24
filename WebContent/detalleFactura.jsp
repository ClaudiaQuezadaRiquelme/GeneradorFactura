<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% String nombre = (String)request.getAttribute("nombre"); %>
<% String empresa = (String)request.getAttribute("empresa"); %>
<% String rut = (String)request.getAttribute("rut"); %>
<% String direccion = (String)request.getAttribute("direccion"); %>
<% String ciudad = (String)request.getAttribute("ciudad"); %>
<% String pais = (String)request.getAttribute("pais"); %>
<html>
<head>
<meta charset="UTF-8">
<title>Detalle Factura</title>
</head>
<body>
    <div>
        <h3>Información de cliente</h3>
        <p id="nombre"><%= nombre %></p>
        <p id="rut"><%= empresa %></p>
        <p id="empresa"><%= rut %></p>
        <p id="direccion"><%= direccion %></p>
        <p id="licalidad"><%= ciudad %>, <%= pais %></p>
    </div>
</body>
</html>