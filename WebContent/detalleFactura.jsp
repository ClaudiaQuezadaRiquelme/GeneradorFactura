<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% String nombre = (String)request.getAttribute("nombre"); %>
<% String empresa = (String)request.getAttribute("empresa"); %>
<% String rut = (String)request.getAttribute("rut"); %>
<% String direccion = (String)request.getAttribute("direccion"); %>
<% String ciudad = (String)request.getAttribute("ciudad"); %>
<% String pais = (String)request.getAttribute("pais"); %>

<% String valvulaPrice = (String)request.getAttribute("valvulaPrice"); %>
<% String turboPrice = (String)request.getAttribute("turboPrice"); %>
<% String frenoPrice = (String)request.getAttribute("frenoPrice"); %>
<% String refriPrice = (String)request.getAttribute("refriPrice"); %>
<% String plumillasPrice = (String)request.getAttribute("plumillasPrice"); %>

<% String valvulaCount = (String)request.getAttribute("valvulaCount"); %>
<% String turboCount = (String)request.getAttribute("turboCount"); %>
<% String frenoCount = (String)request.getAttribute("frenoCount"); %>
<% String refriCount = (String)request.getAttribute("refriCount"); %>
<% String plumillasCount = (String)request.getAttribute("plumillasCount"); %>
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
    <table class="table table-dark">
		<thead>
		  <tr>
			<th scope="col">ITEM</th>
			<th scope="col">DESCRIPCIÓN</th>
			<th scope="col">VALOR UNIDAD</th>
			<th scope="col">CANTIDAD</th>
		  </tr>
		</thead>
		<tbody>
		  <tr>
			<td>Válvulas Titanio</th>
			<td>Válvulas de carrera</td>
			<td id="valvula-price"><%= valvulaPrice %></td>
			<td id="valvula-count"><%= valvulaCount %></td>
		  </tr>
		  <tr>
			<td>Turbo Full Carrera</th>
			<td>Turbo de competición multimarca</td>
			<td id="turbo-price"><%= turboPrice %></td>
			<td id="turbo-count"><%= turboCount %></td>
		  </tr>
		  <tr>
			<td>Kit de Freno Competición</th>
			<td>Juego de discos, balatas, caliper de competición</td>
			<td id="freno-price"><%= frenoPrice %></td>
			<td id="freno-count"><%= frenoCount %></td>
		  </tr>
		  <tr>
			<td>Sistema de refrigeración</th>
			<td>Sistema enfriamiento motor Carrera</td>
			<td id="refri-price"><%= refriPrice %></td>
			<td id="refri-count"><%= refriCount %></td>
		  </tr>
		  <tr>
			<td>Plumillas Limpiaparabrisas Standar</th>
			<td>Plumillas para la lluvia</td>
			<td id="plumillas-price"><%= plumillasPrice %></td>
			<td id="plumillas-count"><%= plumillasCount %></td>
		  </tr>
		</tbody>
	  </table>
</body>
</html>