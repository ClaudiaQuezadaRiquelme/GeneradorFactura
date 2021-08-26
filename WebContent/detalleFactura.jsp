<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% String nombre = (String)request.getAttribute("nombre"); %>
<% String empresa = (String)request.getAttribute("empresa"); %>
<% String rut = (String)request.getAttribute("rut"); %>
<% String direccion = (String)request.getAttribute("direccion"); %>
<% String ciudad = (String)request.getAttribute("ciudad"); %>
<% String pais = (String)request.getAttribute("pais"); %>

<% String valvulaPrice = (String)request.getAttribute("valvula-price"); %>
<% String turboPrice = (String)request.getAttribute("turbo-price"); %>
<% String frenoPrice = (String)request.getAttribute("freno-price"); %>
<% String refriPrice = (String)request.getAttribute("refri-price"); %>
<% String plumillasPrice = (String)request.getAttribute("plumillas-price"); %>

<% String valvulaFinalPrice = (String)request.getAttribute("valvula-final-price"); %>
<% String turboFinalPrice = (String)request.getAttribute("turbo-final-price"); %>
<% String frenoFinalPrice = (String)request.getAttribute("freno-final-price"); %>
<% String refriFinalPrice = (String)request.getAttribute("refri-final-price"); %>
<% String plumillasFinalPrice = (String)request.getAttribute("plumillas-final-price"); %>

<% String valvulaCount = (String)request.getAttribute("valvula-count"); %>
<% String turboCount = (String)request.getAttribute("turbo-count"); %>
<% String frenoCount = (String)request.getAttribute("freno-count"); %>
<% String refriCount = (String)request.getAttribute("refri-count"); %>
<% String plumillasCount = (String)request.getAttribute("plumillas-count"); %>
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
        <p id="localidad"><%= ciudad %>, <%= pais %></p>
    </div>
    <table class="table table-dark">
		<thead>
		  <tr>
			<th scope="col">ITEM</th>
			<th scope="col">DESCRIPCIÓN</th>
			<th scope="col">VALOR UNIDAD</th>
			<th scope="col">CANTIDAD</th>
            <th scope="col">VALOR TOTAL</th>
		  </tr>
		</thead>
		<tbody>
		  <tr>
			<td>Válvulas Titanio</th>
			<td>Válvulas de carrera</td>
			<td id="valvula-price"><%= valvulaPrice %></td>
			<td id="valvula-count"><%= valvulaCount %></td>
            <td id="valvula-final-price"><%= valvulaFinalPrice %></td>
		  </tr>
		  <tr>
			<td>Turbo Full Carrera</th>
			<td>Turbo de competición multimarca</td>
			<td id="turbo-price"><%= turboPrice %></td>
			<td id="turbo-count"><%= turboCount %></td>
            <td id="turbo-final-price"><%= turboFinalPrice %></td>
		  </tr>
		  <tr>
			<td>Kit de Freno Competición</th>
			<td>Juego de discos, balatas, caliper de competición</td>
			<td id="freno-price"><%= frenoPrice %></td>
			<td id="freno-count"><%= frenoCount %></td>
            <td id="freno-final-price"><%= frenoFinalPrice %></td>
		  </tr>
		  <tr>
			<td>Sistema de refrigeración</th>
			<td>Sistema enfriamiento motor Carrera</td>
			<td id="refri-price"><%= refriPrice %></td>
			<td id="refri-count"><%= refriCount %></td>
            <td id="refri-final-price"><%= refriFinalPrice %></td>
		  </tr>
		  <tr>
			<td>Plumillas Limpiaparabrisas Standar</th>
			<td>Plumillas para la lluvia</td>
			<td id="plumillas-price"><%= plumillasPrice %></td>
			<td id="plumillas-count"><%= plumillasCount %></td>
            <td id="plumillas-final-price"><%= plumillasFinalPrice %></td>
		  </tr>
		</tbody>
	  </table>
</body>
</html>