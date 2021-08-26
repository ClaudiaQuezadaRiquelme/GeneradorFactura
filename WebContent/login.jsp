<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Factura Login</title>
<!-- Bootstrap 5 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<!-- Your own css -->
<style><%@include file="/WEB-INF/css/style.css"%></style>
<body>
	<div class="container-sm">
		<form action="ProcesaLogin" method="post">
			<div class="mb-3 mt/3">
				<label for="nombreUsuario" class="form-label">Usuario</label>
				<input type="text" name="nombreUsuario" class="form-control">
			</div>
			<div class="mb-3">
				<label for="pass" class="form-label">Contraseña</label>
				<input type="password" name="pass" class="form-control">
			</div>
			<button class="btn btn-primary" type="submit">Entrar</button>
		</form>
	</div>

	<!-- Bootstrap 5 -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>

</body>
</html>