<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Formulario</title>
<!-- Bootstrap 5 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">

<!-- Your own css -->
<link rel="stylesheet" href="./WEB-INF/css/style.css">
</head>
<body>

	<div class="container">
		<form action="procesaFactura" method="POST">
			<div class="formData">
				<div class="col">
					<div class="form-group">
						<label for="exampleInputEmail">Nombre Completo</label>
						<input type="text" class="form-control" id="nombre" name="nombre"
							placeholder="Ingrese su nombre" required>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail">Empresa</label>
						<input type="text" class="form-control" id="empresa" name="empresa"
							placeholder="Ingrese empresa" required>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail">Rut</label>
						<input type="text" class="form-control" id="rut" name="rut"
							placeholder="Ingrese su rut" required>
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="exampleInputEmail">Dirección</label>
						<input type="text" class="form-control" id="direccion" name="direccion"
							placeholder="Ingrese dirección" required>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail">Ciudad</label> <input type="text"
							class="form-control" id="ciudad" name="ciudad"
							placeholder="Ingrese ciudad" required>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail">País</label>
						<input type="text" class="form-control" id="pais" name="pais"
							placeholder="Ingrese país" required>
					</div>
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
				  </tr>
				</thead>
				<tbody>
				  <tr>
					<td>Válvulas Titanio</th>
					<td>Válvulas de carrera</td>
					<td id="valvula-price">$120.000</td>
					<td><input type="number" class="form-control" id="valvula-count" name="valvula-count" placeholder="0"></td>
				  </tr>
				  <tr>
					<td>Turbo Full Carrera</th>
					<td>Turbo de competición multimarca</td>
					<td id="turbo-price">$1.700.000</td>
					<td><input type="number" class="form-control" id="turbo-count" name="turbo-count" placeholder="0"></td>
				  </tr>
				  <tr>
					<td>Kit de Freno Competición</th>
					<td>Juego de discos, balatas, caliper de competición</td>
					<td id="freno-price">$760.000</td>
					<td><input type="number" class="form-control" id="freno-count" name="freno-count" placeholder="0"></td>
				  </tr>
				  <tr>
					<td>Sistema de refrigeración</th>
					<td>Sistema enfriamiento motor Carrera</td>
					<td id="refri-price">$2.300.000</td>
					<td><input type="number" class="form-control" id="refri-count" name="refri-count" placeholder="0"></td>
				  </tr>
				  <tr>
					<td>Plumillas Limpiaparabrisas Standar</th>
					<td>Plumillas para la lluvia</td>
					<td id="plumillas-price">$10.000</td>
					<td><input type="number" class="form-control" id="plumillas-count" name="plumillas-count" placeholder="0"></td>
				  </tr>
				</tbody>
			  </table>
			<button type="submit" class="btn btn-primary">Enviar</button>
		</form>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
		crossorigin="anonymous"></script>
</body>
</html>