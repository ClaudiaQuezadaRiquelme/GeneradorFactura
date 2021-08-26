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
<!-- Bootstrap 5 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">

<!-- Your own css -->
<!-- <link rel="stylesheet" href="/GeneradorFactura/WebContent/WEB-INF/css/style.css"> --><!-- this link doesn't work -->
<style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
	<div class="container">
		<div id="facturaCliente" class="container-fluid">
			<div id="clientInfo">
				<h3><strong>Información de cliente</strong></h3>
				<p id="nombre"><%= nombre %></p>
				<p id="rut"><%= empresa %></p>
				<p id="empresa"><%= rut %></p>
				<p id="direccion"><%= direccion %></p>
				<p id="localidad"><%= ciudad %>, <%= pais %></p>
			</div>
			<div id="detalleFact">
				<h3><strong>Detalle de pago</strong></h3>
				<p id="numFact"></p>
				<p id="idFact"></p>
				<p id="tipoPago">TIPO PAGO: Dinero</p>
				<p id="empresa">EMPRESA: Importadora</p>
			</div>
		</div>
		<br>
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
	</div>
    
    

	  <!-- Bootstrap 5 -->
	  <script
	  src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
	  integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
	  crossorigin="anonymous"></script>

	  <!-- jquery -->
	  <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

	  <!-- Your own scripts -->
	  <!-- <script src="./WEB-INF/js/app.js" type="text/javascript"></script> --><!-- this script doesn't work -->
	  <script><%@include file="/WEB-INF/js/app.js"%></script>
</body>
</html>